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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: Container(color: Colors.amber)),
            Expanded(flex: 2, child: Container(color: Colors.blue)),
            Expanded(child: Container(color: Colors.brown)),
            Expanded(child: Container(color: Colors.deepOrangeAccent)),
            Expanded(
              flex: 10,
              child: Container(color: Colors.white54),
            ), //atur layar ukuran pake flex
            Expanded(child: Container(color: Colors.deepPurple)),
            Expanded(child: Container(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
