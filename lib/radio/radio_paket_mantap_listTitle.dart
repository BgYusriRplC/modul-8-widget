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
  int _selet = -1;
  String _jenisKelamin = "_";
  //chekbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text("Jenis Kelamin"),

            RadioListTile(
              value: 0,
              groupValue: _selet,
              title: const Text("Laki-LAki"),
              activeColor: Colors.amber,
              secondary: const Icon(Icons.person),
              onChanged: (int? value) {
                setState(() {
                  _selet = value!;
                  _jenisKelamin = "Laki-LAki";
                });
              },
            ),

            RadioListTile(
              value: 1,
              groupValue: _selet,
              title: const Text("PErempuan"),
              activeColor: Colors.amber,
              secondary: const Icon(Icons.person),
              onChanged: (int? value) {
                setState(() {
                  _selet = value!;
                  _jenisKelamin = "PErempuan";
                });
              },
            ),

            Text("OHhh ternyata kamu : $_jenisKelamin"),
          ],
        ),
      ),
    );
  }
}
