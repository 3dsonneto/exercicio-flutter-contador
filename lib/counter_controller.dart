import 'package:exercicio_03_app_demo/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String getCounter() {
    return model.counter.toString();
    //acessa o metodo getcounter para pegar o valor da variavel privada
  }

  void incrementCounter() {
    model.incrementCounter();
  }

  void decreaseCounter() {
    model.decreaseCounter();
  }
}
