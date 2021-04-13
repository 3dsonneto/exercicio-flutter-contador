class CounterModel {
  int _counter = 0; //privada pois só o model pode alterar o valor dela

  int get counter {
    //função usada para retornar o valor do counter que é
    //privado para que outras classes possam ter acesso
    return _counter;
  }

  void incrementCounter() {
    _counter++;
  }

  void decreaseCounter() {
    _counter--;
  }
}
