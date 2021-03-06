import 'package:estudo/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Container(height: 20),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 20, bottom: 12),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email", border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 15),
                        RaisedButton(
                          textColor: Colors.white,
                          color: Colors.red,
                          onPressed: () {
                            if (email == "joao.leite@gmail.com" &&
                                password == "@1234") {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            } else {
                              print("Dados incorreto!");
                            }
                          },
                          child: Container(
                              width: double.infinity,
                              child: Text(
                                "Entrar",
                                textAlign: TextAlign.center,
                              )),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}
