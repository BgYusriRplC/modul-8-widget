import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.greenAccent),
      ),
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      backgroundColor: Colors.blueGrey,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
          if (constrains.maxWidth < 600) {
            return ListView(children: _generateContainers());
          } else if (constrains.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }
}

List<Widget> _generateContainers() {
  return List<Widget>.generate(20, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.brown,
      height: 200,
    );
  });
}
