import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(
          Icons.airplane_ticket_outlined,
          size: 100,
          color: Colors.indigo,
        ),
        const Text('Ticket',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.account_circle_outlined,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, style: BorderStyle.solid),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.indigo, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              label: Text("Email"),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, style: BorderStyle.solid)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.indigo, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              label: Text("Senha"),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              onPressed: () =>
                  {Navigator.pushReplacementNamed(context, "/home")},
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: OutlinedButton(
              child: const Text('Cadastre-se'),
              onPressed: () => {Navigator.pushNamed(context, "/cadastro")},
              style: OutlinedButton.styleFrom()),
        ),
      ]),
    );
  }
}
