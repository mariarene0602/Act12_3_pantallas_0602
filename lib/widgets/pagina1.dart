import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
    const String miLogo = 'https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/main/Copia%20de%20logo.png'; 

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(miLogo, height: 180),
            const SizedBox(height: 30),
            const Text("Educamos con amor y disciplina",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1A237E))),
            const SizedBox(height: 30),
            _buildDots(0),
            const SizedBox(height: 60),
            // BOTÓN CIRCULAR CON FLECHA
            CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xFF1A237E),
              child: IconButton(
                onPressed: () => Navigator.pushNamed(context, '/segunda'),
                icon: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDots(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (i) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 12, height: 12,
        decoration: BoxDecoration(color: i == index ? const Color(0xFF8D6E63) : Colors.grey[300], shape: BoxShape.circle),
      )),
    );
  }
}