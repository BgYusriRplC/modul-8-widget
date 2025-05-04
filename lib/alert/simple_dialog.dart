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

enum Answer { yes, no }

class _HomePageState extends State<Home> {
  String answer = "";
  String message = "";

  void setAnswer(String value) {
    setState(() {
      answer = value;
      message = "Anda memilih: $answer";
    });
  }

  Future<void> confirm(BuildContext context) async {
    final result = await showDialog<Answer>(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: SimpleDialog(
            title: const Text("Konfirmasi"),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  children: <Widget>[
                    const Text("Anda ingin keluar dari Aplikasi?"),
                    const SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context, Answer.yes);
                          },
                          child: const Text("Ya"),
                        ),
                        const SizedBox(width: 12.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context, Answer.no);
                          },
                          child: const Text("Tidak"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );

    if (result == Answer.yes) {
      setAnswer("Ya");
    } else {
      setAnswer("Tidak");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percobaan Menggunakan Widget")),
      body: Center(
        child: SingleChildScrollView(
          //hehee
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                onPressed: () {
                  confirm(context);
                },
                child: const Text(
                  "Show Dialog",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 24.0),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
