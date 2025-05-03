import "package:flutter/material.dart";

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Counter()));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  Counterstate createState() => Counterstate();
}

class Counterstate extends State<Counter> {
  int counter = 0;

  void inc() {
    setState(() {
      counter++;
    });
  }

  void dec() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Press Button to increse counter",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          Text(counter.toString(), style: TextStyle(fontSize: 40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  dec();
                },
                child: Text("decrease"),
              ),
              ElevatedButton(
                onPressed: () {
                  inc();
                },
                child: Text("increase"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
