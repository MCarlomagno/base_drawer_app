import 'package:base_drawer_app/api/sample_service.dart';
import 'package:base_drawer_app/app/locator.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel {

  //services injection
  final SampleService _sampleService = locator<SampleService>();

  String _data = "";
  String get data => this._data;

  Future<void> runSampleRequest() async {
    setBusy(true);
    this._data = await _sampleService.sampleHttpRequest();
    setBusy(false);
  }
}