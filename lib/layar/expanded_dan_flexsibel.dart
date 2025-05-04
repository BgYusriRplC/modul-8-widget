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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: ExpandedContent()),
                Flexible(child: FlexibleContent()),
              ],
            ),
            Row(
              children: const [
                Expanded(child: ExpandedContent()),
                Expanded(child: ExpandedContent()),
              ],
            ),
            Row(
              children: const [
                Flexible(child: FlexibleContent()),
                Flexible(child: FlexibleContent()),
              ],
            ),
            Row(
              children: const [
                Flexible(child: FlexibleContent()),
                Expanded(child: ExpandedContent()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedContent extends StatelessWidget {
  const ExpandedContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Text(
          "Expanded",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

class FlexibleContent extends StatelessWidget {
  const FlexibleContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Text(
          "Flexible",
          style: TextStyle(color: Colors.teal, fontSize: 16),
        ),
      ),
    );
  }
}
