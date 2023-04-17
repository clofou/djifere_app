import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 77,
            decoration: const BoxDecoration(
                color: Color(0xFF0F0326),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            child: const Center(
              child: Text(
                'Acceuil',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'BONSOIR ,',
                style: TextStyle(
                    fontFamily: 'CircularStd',
                    fontSize: 50,
                    color: Color(0xFFE65F5C)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'FAKORO',
                  style: TextStyle(
                      fontFamily: 'CircularStd',
                      fontSize: 50,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          const Image(image: AssetImage('assets/images/unnamed 1.png')),
          const TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                label: Text('Prelevement du jour'),
                border: UnderlineInputBorder()),
          ),
          const TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                label: Text('Prelevement du jour'),
                border: UnderlineInputBorder()),
          ),
        ],
      ),
    );
  }
}
