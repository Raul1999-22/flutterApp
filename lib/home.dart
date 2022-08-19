import 'package:flutter/material.dart';
import 'package:raulgomez/palabras_app.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: MaterialButton(
              elevation: 3,
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(50, 255, 255, 255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/imgs/app.png'),
                    ),
                  ),
                  const Text(
                    'Usar Aplicación',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const ParPalabras();
                }));
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: MaterialButton(
              elevation: 3,
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(50, 255, 255, 255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                      child: Image.asset('assets/imgs/about us.png'),
                    ),
                  ),
                  const Text(
                    '¿Quiénes somos?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Desarrollado por Raúl Gómez'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: const [
                            Text('Aplicación de prueba'),
                          ],
                        ),
                      ),
                      actions: [
                        MaterialButton(
                            child: const Text('Aceptar'),
                            onPressed: () {
                              //Navigator.of(context).pop();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const HomeView();
                              }));
                            })
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
