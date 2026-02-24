import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({super.key});

  @override
  Widget build(BuildContext context) {
    const String miLogo = 'https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/main/Copia%20de%20logo.png';

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 60),
                Image.network(miLogo, height: 180),
                const SizedBox(height: 40),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Únete a nuestra comunidad",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A237E),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                _buildDots(2),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      // BOTÓN INICIAR SESIÓN (RECTANGULAR)
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1A237E),
                          minimumSize: const Size(double.infinity, 55),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                        ),
                        child: const Text("Iniciar Sesión", 
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(height: 15),
                      // BOTÓN REGISTRARSE (RECTANGULAR)
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Color(0xFF1A237E), width: 2),
                          minimumSize: const Size(double.infinity, 55),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                        ),
                        child: const Text("Registrarse", 
                          style: TextStyle(color: Color(0xFF1A237E), fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                // Botón de regreso circular
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 25,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
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