import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
      appBar: AppBar(
        title: Text('Lottie animations'),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.asset('assets/waiting.json'),
            SizedBox(height: 32),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  textStyle: TextStyle(fontSize: 28),
                ),
                onPressed: showDoneDialog(),
                icon: Icon(Icons.system_security_update_good_outlined),
                label: Text('Submitting button'))
          ],
        ),
      ),
    );
  }

  showDoneDialog() => showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(
                  'assets/done.json',
                  repeat: false,
                ),
                Text(
                  'Request submitted',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ));
}
