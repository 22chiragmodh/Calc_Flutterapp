import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 0;
  var num2 = 0;
  var _result = 0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void _addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      _result = num1 + num2;
    });
  }

  void _sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      _result = num1 - num2;
    });
  }

  void _mult() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      _result = num1 * num2;
    });
  }
  void _modl() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      _result = num1 % num2;
    });
  }
  void _square() {
    setState(() {
      num1 = int.parse(t1.text);
     

      _result = num1 * num1;
    });
  }

  void _div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      
      _result = (num1 / num2).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text(
              'CALCULATOR',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          ),
          body: Container(
            padding: const EdgeInsets.all(50),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 30),
                Text(
                  "Output :$_result",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.red),
                  decoration: const InputDecoration(hintText: 'Enter Number 1'),
                  controller: t1,





                ),
                TextField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.red),
                  decoration: const InputDecoration(hintText: 'Enter Number 2'),
                  controller: t2,
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: _addition,
                          child: const Text('+'),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green)),
                      ElevatedButton(
                          onPressed:_mult,
                          child: const Text('*'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent)),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _sub,
                        child: const Text('-'),
                        style:
                            ElevatedButton.styleFrom(primary: Colors.redAccent),
                      ),
                      ElevatedButton(
                          onPressed: _div,
                          child: const Text('/'),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.green)),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _modl,
                        child: const Text('%'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent),
                      ),
                      ElevatedButton(
                        onPressed:_square,
                        child: const Text('sqrt'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent),
                      ),
                    ]),
              ],
            ),
          )),
    );
  }
}
