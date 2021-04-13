import 'package:flutter/material.dart';

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
  var resultado = 0;

  void _operation(Function(int, int) func) {
    setState(() {
      resultado = func(resultado, 1);
    });
  }

  int add(num1, num2) {
    return num1 + num2;
  }

  int sub(num1, num2) {
    return num1 - num2;
  }

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
              "$resultado",
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
              _operation(sub);
            },
            Icon(Icons.remove),
          ),
          OperationFloatActionButton(
            () {
              _operation(add);
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
