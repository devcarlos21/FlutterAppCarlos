import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const double fontSize = 30;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              'HomeScreen',
              style: TextStyle(color: Colors.white),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              //el body CONST center ya no va porque englobaría a la variable
              'Número de Clicks',
              style: TextStyle(fontSize: HomeScreen.fontSize),
            ),
            Text(
              '$contador',
              //El const solo a lo que lo necesita
              style: const TextStyle(fontSize: HomeScreen.fontSize),
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
            backgroundColor: Colors.red,
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
            backgroundColor: Colors.red,
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
            backgroundColor: Colors.red,
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
