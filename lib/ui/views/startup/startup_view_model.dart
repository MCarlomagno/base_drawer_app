import 'package:base_drawer_app/app/locator.dart';
import 'package:base_drawer_app/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class StartupViewModel extends BaseViewModel {
  // TODO startup logic!
  // https://www.youtube.com/watch?v=d6FaV7cp_YE

  final NavigationService _navigationService = locator<NavigationService>();

  String _title = "StartUp widget";
  String get title => this._title;


  void navigateToHome() async {
    await _navigationService.navigateTo(Routes.homeViewRoute);
  }
}