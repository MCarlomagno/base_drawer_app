import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        var _scaffoldKey = GlobalKey<ScaffoldState>();
        return Scaffold(
          key: _scaffoldKey,
          appBar: new AppBar(
            title: new Text("App"),
            leading: new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
          ),
          drawer: _HomeDrawer(),
          body: Center(
            child: Text(model.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.runSampleRequest,
            child: Icon(Icons.accessible_forward),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

class _HomeDrawer extends StatelessWidget {
  const _HomeDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
