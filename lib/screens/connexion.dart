import 'package:flutter/material.dart';

class ConnexionScreen extends StatefulWidget {
  const ConnexionScreen({super.key});

  @override
  State<ConnexionScreen> createState() => _ConnexionScreenState();
}

class _ConnexionScreenState extends State<ConnexionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/forage 1.png'))),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xE00F0326),
        ),
        SingleChildScrollView(
          child: Center(
            child: Form(
                child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Image(
                  image: AssetImage('assets/images/djifere 1.png'),
                  width: 165,
                  height: 150,
                ),
                const SizedBox(
                  height: 80,
                ),
                const SizedBox(
                  width: 350,
                  child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        prefixIcon:
                            Image(image: AssetImage('assets/images/key.png')),
                        filled: true,
                        fillColor: Color(0xF5D9D9D9),
                        hintText: 'IDENTIFIANT',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Cinzel',
                            fontWeight: FontWeight.w600),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  width: 350,
                  child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          hoverColor: Colors.white,
                          prefixIcon: Image(
                              image: AssetImage('assets/images/padol.png')),
                          filled: true,
                          fillColor: Color(0xF5D9D9D9),
                          hintText: 'MOT DE PASSE',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Cinzel',
                              fontWeight: FontWeight.w600))),
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE65F5C)),
                    onPressed: () {},
                    child: const Text(
                      'Se Connecter',
                      style: TextStyle(
                          fontFamily: 'Cinzel',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))
              ],
            )),
          ),
        )
      ]),
    );
  }
}
