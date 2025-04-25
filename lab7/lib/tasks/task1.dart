import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Timer"))),
        body: TimerApp(),
      ),
    );
  }
}

class TimerApp extends StatefulWidget {
  const TimerApp({super.key});

  @override
  Timerstate createState() => Timerstate();
}

class Timerstate extends State<TimerApp> {
  int timer = 20;
  bool running = false;
  void countdown() {
    if (timer == 0 && running) {
      setState(() {
        timer = 20;
        running = !running;
      });
    } else if (running) {
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          timer = timer - 1;
        });
        countdown();
      });
    } else {
      return;
    }
  }

  void startstop() {
    setState(() {
      running = !running;
    });
    if (running) {
      countdown();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(timer.toString(), style: TextStyle(fontSize: 80)),
          ElevatedButton(
            onPressed: startstop,
            style: ElevatedButton.styleFrom(
              backgroundColor: running ? Colors.red : Colors.green,
              foregroundColor: Colors.white,
            ),
            child: Text(running ? "stop" : "start"),
          ),
        ],
      ),
    );
  }
}
