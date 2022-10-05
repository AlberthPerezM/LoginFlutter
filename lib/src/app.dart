import 'dart:io';

import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormSatate();
}

class _MyAppFormSatate extends State<MyAppForm> {
  //variables
  late String _nombre;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 199, 221),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 70.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/LogoGowPlay.png'),
              ),
              Text(
                'Login',
                style: TextStyle(fontFamily: 'Peralta', fontSize: 50.0),
              ),
              Text(
                'Ingresando',
                style: TextStyle(fontFamily: 'Peralta', fontSize: 20.0),
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(color: Color.fromARGB(255, 178, 9, 4)),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'USER-NAME',
                  labelText: 'User name',
                  suffixIcon: Icon(
                    Icons.verified_user,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print('El nombre es  $_nombre');
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print('El nombre es $_email');
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print('El password es $_password');
                  validator:
                  (String value) {
                    if (value.isEmpty) {
                      return 'Please a Enter';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please a valid Email';
                    }
                    return null;
                  };
                  onSaved:
                  (String value) {
                    _email = value;
                  };
                },
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: Text(
                    'iNGRESAR',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 30.0,
                        fontFamily: 'NerkoOne'),
                  ),
                  onPressed: () {
                    print('diste clic');
                  },
                ),
              ),
            ],
          ) //CircleAvatar
        ],
      ),
    );
  }
}
