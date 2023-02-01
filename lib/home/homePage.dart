import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterbeginer/helper/constant.dart';
import 'package:flutterbeginer/home/secondPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int angka = 0;
  fungsiPertama() {
    setState(() {
      angka++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double lebar = MediaQuery.of(context).size.width;
    double tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME PAGE'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        width: lebar,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Image.network(
            //   'https://cdn0-production-images-kly.akamaized.net/x15IkqElaWaQSk0cVvlUSIGxzu4=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3981549/original/039518500_1648785174-IMG_20220401_104450.jpg',
            //   height: tinggi / 2.5,
            //   width: lebar,
            // ),
            Container(
              width: lebar,
              height: tinggi / 2,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 4),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(imageCarUrl), fit: BoxFit.cover)),
            ),
            const Text(
              'INI TEXT PERTAMA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'INI TEXT KEDUA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '$angka',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    color: Colors.red,
                    child: const Text(
                      'Kehalaman kedua',
                      style: TextStyle(color: Colors.white),
                    ))),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () => fungsiPertama(),
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    color: Colors.red,
                    child: const Text(
                      'Fungsi STATE',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
