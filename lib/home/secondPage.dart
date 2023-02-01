import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterbeginer/home/homePage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Halaman Kedua',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  color: Colors.red,
                  child: const Text(
                    'Kehalaman Pertama',
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
