import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:raulgomez/home.dart';
import 'package:flutter/cupertino.dart';

class LoginView extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String correo = '';
  String clave = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: SvgPicture.asset(
                'assets/imgs/login.svg',
                height: 250.0,
                color: Colors.blue.shade900,
              ),
            ),
            Column(
              children: [
                Text('English Words',
                    style: Theme.of(context).textTheme.headline1),
                Text('Inicie sesión',
                    style: Theme.of(context).textTheme.headline2),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextField(
                    onChanged: (txtEmail) {
                      correo = txtEmail;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      icon: Icon(
                        CupertinoIcons.mail,
                      ),
                      hintText: 'ejemplo@email.co',
                      labelText: 'Correo Electrónico',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextField(
                    onChanged: (txtpass) {
                      clave = txtpass;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(
                        CupertinoIcons.lock_fill,
                      ),
                      hintText: 'Clave de 8 dígitos',
                      labelText: 'Contraseña',
                      iconColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 300.0,
              height: 50.0,
              color: Colors.blue.shade900,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: const Text('Ingresar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              onPressed: () {
                if (correo == 'nervo@gmail.com' && clave == '12345678') {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Bienvenido Usuario Administrador'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Text('Ahora puedes usar la aplicación!'),
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
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Usuario o contraseña incorrectos'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Text('Verifica tus datos'),
                            ],
                          ),
                        ),
                        actions: [
                          MaterialButton(
                              child: const Text('Aceptar'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              })
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
