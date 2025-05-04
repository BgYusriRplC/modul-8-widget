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
  final List<String> setting = ["Dokter", "Suster", "nganggur"];
  List<bool> settingValues = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            SwitchListTile(
              value: settingValues[0],
              title: Text(setting[0]),
              secondary: const Icon(Icons.language),

              onChanged: (bool value) {
                setState(() {
                  settingValues[0] = value;
                });
                print(settingValues);
              },
            ),

            const Divider(),
            SwitchListTile(
              value: settingValues[1],
              title: Text(setting[1]),
              secondary: const Icon(Icons.language),

              onChanged: (bool value) {
                setState(() {
                  settingValues[1] = value;
                });
                print(settingValues);
              },
            ),
            const Divider(),
            SwitchListTile(
              value: settingValues[2],
              title: Text(setting[2]),
              secondary: const Icon(Icons.language),
              // activeColor: Colors.blue,
              onChanged: (bool value) {
                setState(() {
                  settingValues[2] = value;
                });
                print(settingValues);
              },
            ),
          ],
        ),
      ),
    );
  }
}
