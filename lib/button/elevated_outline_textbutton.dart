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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "evalated button",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(height: 5.0), //batas wak
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Outline button",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 5.0),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Text button",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
