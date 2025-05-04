import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(secondary: Colors.blue),
        appBarTheme: AppBarTheme(backgroundColor: Colors.greenAccent),
      ),

      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  bool _checkboxVal1 = false;
  bool _checkboxVal2 = false;
  bool _checkboxVal3 = false;
  bool _checkboxVal4 = false; //chekbox
  List<String> list = [];
  String text = "";
  void showData() {
    text = "";
    for (int i = 0; i < list.length; i++) {
      text += "${list[i]},";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text("yang kamu suka dari saya"),
            CheckboxListTile(
              value: _checkboxVal1,
              title: const Text("baik"),
              activeColor: Colors.blueAccent,
              secondary: const Icon(Icons.smoke_free),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal1 = value!;
                });
                if (_checkboxVal1 == true) {
                  list.add("baik");
                } else {
                  list.remove("baik");
                }
                showData();
              },
            ),
            CheckboxListTile(
              value: _checkboxVal2,
              title: const Text("baik sekali"),
              activeColor: Colors.blueAccent,
              secondary: const Icon(Icons.smoke_free),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal2 = value!;
                });
                if (_checkboxVal2 == true) {
                  list.add("baik sekali");
                } else {
                  list.remove("baik sekali");
                }
                showData();
              },
            ),
            CheckboxListTile(
              value: _checkboxVal3,
              title: const Text("baik sekali yaa"),
              activeColor: Colors.blueAccent,
              secondary: const Icon(Icons.smoke_free),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal3 = value!;
                });
                if (_checkboxVal3 == true) {
                  list.add("baik sekali yaa");
                } else {
                  list.remove("baik sekali yaa");
                }
                showData();
              },
            ),
            CheckboxListTile(
              value: _checkboxVal4,
              title: const Text("baik sekali anda"),
              activeColor: Colors.blueAccent,
              secondary: const Icon(Icons.smoke_free),
              onChanged: (bool? value) {
                setState(() {
                  _checkboxVal4 = value!;
                });
                if (_checkboxVal4 == true) {
                  list.add("baik sekali anda");
                } else {
                  list.remove("baik sekali anda");
                }
                showData();
              },
            ),
            Text("Data : $text"),
          ],
        ),
      ),
    );
  }
}
