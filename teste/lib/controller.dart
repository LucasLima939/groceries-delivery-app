import 'package:mobx/mobx.dart';

class Controller {

  var counter = Observable(0);

  _increment() {
    counter.value = counter.value + 1;
  }

}