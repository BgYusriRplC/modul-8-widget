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
  final int _cont = 20;
  final List<bool> _items = <bool>[];
  @override
  void initstate() {
    super.initState();
    setState(() {
      for (var i = 0; i < _cont; i++) {
        _items.add(false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: _cont,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
            child: GestureDetector(
              child: ListTile(
                title: Text("item ${index + 1}"),
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.delete),
              ),
              onTap: () {
                print("anda memilih item ${index + 1}");
              },
            ),
          );
        },
      ),
    );
  }
}
