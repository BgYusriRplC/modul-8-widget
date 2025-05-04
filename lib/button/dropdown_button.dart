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
        ).copyWith(secondary: Colors.white),
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
  final List<String> _list = ["java", "python", "dart", "html", "c++"];
  String _item = "java";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            const Text("pilih kodingan:"),
            DropdownButton(
              value: _item,
              items:
                  _list
                      .map((String val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.code),
                              Text(val),
                            ],
                          ),
                        );
                      })
                      . //titik yeee erorr muluu
                      toList(),
              onChanged: (String? value) {
                setState(() {
                  _item = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
