import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [const _PurpleBox(), const _Personicon(), child],
      ),
    );
  }
}

class _Personicon extends StatelessWidget {
  const _Personicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: const Icon(
        Icons.person_pin,
        color: Colors.white,
        size: 100,
      ),
    ));
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: const Stack(
        children: [
          Positioned(top: 90, left: 30, child: _Circulo()),
          Positioned(top: -40, left: 30, child: _Circulo()),
          Positioned(top: -50, right: 30, child: _Circulo()),
          Positioned(top: 10, right: 30, child: _Circulo())
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.indigo,
        Colors.blue,

        /* Color.fromRGB0(45 ,23, 12, 2), */
      ]));
}

class _Circulo extends StatelessWidget {
  const _Circulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.03),
      ),
    );
  }
}
