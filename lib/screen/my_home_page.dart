import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
void _incrementCounter() {
  setState(() {
    _counter++;
  });
}
void _decrementCounter() {
  setState(() {
    if(_counter > 0)
    _counter--;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Home Page"),  
      
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("นับไปแล้ว $_counter"),ElevatedButton(onPressed: _incrementCounter, child: const Text("เพิ่ม")),ElevatedButton(onPressed: _decrementCounter, child: const Text("ลด"))],)
    );
  }
}