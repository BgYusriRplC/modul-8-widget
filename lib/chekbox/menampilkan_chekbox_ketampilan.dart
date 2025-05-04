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
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal1,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal1 = value!;
                      if (_checkboxVal1 == true) {
                        list.add("baik");
                      } else {
                        list.remove("baik");
                      }
                      showData();
                    });
                  },
                ),
                const Text("baik"),
                //const Text("baik banget"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal2,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal2 = value!;
                      if (_checkboxVal1 == true) {
                        list.add("baik banget");
                      } else {
                        list.remove("baik banget");
                      }
                      showData();
                    });
                  },
                ),
                const Text("baik banget"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal3,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal3 = value!;
                      if (_checkboxVal1 == true) {
                        list.add("baik kebangetan");
                      } else {
                        list.remove("baik kebangetan");
                      }
                      showData();
                    });
                  },
                ),
                const Text("baik kebangetan"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkboxVal4,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkboxVal4 = value!;
                      if (_checkboxVal1 == true) {
                        list.add("baik kebangetan sekali");
                      } else {
                        list.remove("baik kebangetan sekali");
                      }
                      showData();
                    });
                  },
                ),
                const Text("baik kebangetan sekali"),
              ],
            ),
            Text("Data : $text"),
          ],
        ),
      ),
    );
  }
}
