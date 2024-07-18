import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});
  static const double fontSize = 30;

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int contador = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'HomeScreen2',
              style: TextStyle(color: Colors.white),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Número de Clicks',
              style: TextStyle(fontSize: HomeScreen2.fontSize),
            ),
            Text(
              '$contador',
              style: const TextStyle(fontSize: HomeScreen2.fontSize),
            )
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador--;
              });
            },
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.exposure_minus_1,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                contador++;
              });
            },
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.plus_one,
              color: Colors.white,
            ),
          ),
        ],
      ), //Aqui si tengo la coma
    );
  }
}
