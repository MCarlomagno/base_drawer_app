import 'package:auto_route/auto_route_annotations.dart';
import 'package:base_drawer_app/ui/views/home/home_view.dart';
import 'package:base_drawer_app/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  StartupView startupViewRoute;
  HomeView homeViewRoute;
}