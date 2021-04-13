import 'package:flutter/material.dart';
import 'counter_controller.dart';

void main() {
  runApp(
    MaterialApp(
      home: CounterScreen(),
    ),
  );
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Contador"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Você pressionou o botão: ",
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              controller.getCounter(),
              style: TextStyle(fontSize: 34),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OperationFloatActionButton(
            () {
              setState(() {
                controller.decreaseCounter();
              });
            },
            Icon(Icons.remove),
          ),
          OperationFloatActionButton(
            () {
              setState(() {
                controller.incrementCounter();
              });
            },
            Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class OperationFloatActionButton extends StatelessWidget {
  final Function func;
  final Icon icon;

  OperationFloatActionButton(this.func, this.icon, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: func,
      child: icon,
    );
  }
}
