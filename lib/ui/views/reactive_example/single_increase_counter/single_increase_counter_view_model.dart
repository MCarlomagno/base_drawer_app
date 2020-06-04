
import 'package:gender_statistics/app/locator.dart';
import 'package:gender_statistics/services/counter_service.dart';
import 'package:stacked/stacked.dart';


class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;


  void updateCounter() {
    _counterService.singleIncrementCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}