import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("img/person1.jpg"),
                ),
              ),
              Divider(
                height: 5,
                thickness: 5,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("img/person1.jpg"),
              ),
              CircleAvatar(
                backgroundImage: AssetImage("img/person1.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
