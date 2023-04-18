import 'package:djifere_app/components/reusable.dart';
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
      appBar: AppBar(
        title: Text(
          'Acceuil',
          style: TextStyle(fontFamily: ReusableObject.principalFont),
        ),
        backgroundColor: ReusableObject.myPrimaryColor,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'BONSOIR,',
                    style: TextStyle(
                        fontFamily: ReusableObject.principalFont,
                        fontSize: 50,
                        color: ReusableObject.mySecondaryColor),
                  ),
                  Text(
                    'FAKORO',
                    style: TextStyle(
                        fontFamily: ReusableObject.principalFont,
                        fontSize: 50,
                        color: Colors.black),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage('assets/images/unnamed 1.png')),
                        TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            label: const Text('Prelevement du jour'),
                            suffixText: 'm3',
                            suffixStyle: TextStyle(
                                color: ReusableObject.mySecondaryColor,
                                fontFamily: ReusableObject.principalFont),
                            labelStyle: TextStyle(
                                color: ReusableObject.myPrimaryColor,
                                fontFamily: ReusableObject.principalFont),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ReusableObject.myPrimaryColor),
                            ),
                          ),
                        ),
                        TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              suffixText: 'FCFA',
                              suffixStyle: TextStyle(
                                  color: ReusableObject.mySecondaryColor,
                                  fontFamily: ReusableObject.principalFont),
                              label: const Text(
                                'Montant du jour',
                              ),
                              labelStyle: TextStyle(
                                  color: ReusableObject.myPrimaryColor,
                                  fontFamily: ReusableObject.principalFont),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ReusableObject.myPrimaryColor),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
