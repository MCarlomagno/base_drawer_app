import 'package:flutter/material.dart';
import 'package:gender_statistics/ui/views/home/home_view.dart';
import 'package:stacked/stacked.dart';

import 'startup_view_model.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: HomeView(),
          floatingActionButton: FloatingActionButton(
            onPressed: model.navigateToHome,
            child: Icon(Icons.arrow_forward),
          )),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}
