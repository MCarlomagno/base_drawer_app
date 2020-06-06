import 'package:gender_statistics/api/quandl_service.dart';
import 'package:gender_statistics/app/locator.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel {

  //services injection
  final QuandlService _quandlService = locator<QuandlService>();

  String _title = "Home sweet home";
  String get title => this._title;


  Future<void> runSampleRequest() async {
    await _quandlService.sampleHttpRequest();
  }
}