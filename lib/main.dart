import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pantalla2.dart';
import 'package:myapp/widgets/pantalla3.dart';


void main() => runApp(const MiAppCanis());

class MiAppCanis extends StatelessWidget {
  const MiAppCanis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/segunda': (context) => const PantallaDos(),
        '/tercera': (context) => const PantallaTres(),
      },
    );
  }
}