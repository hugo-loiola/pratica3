import "package:flutter/material.dart";
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text(
          'Novo Cadastro',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
              onPressed: () => {Navigator.pop(context)},
              child: const Text(
                'Salvar',
                style: TextStyle(color: Colors.orange),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Email"),
                  labelStyle: TextStyle(color: Colors.orange)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Telefone"),
                  labelStyle: TextStyle(color: Colors.orange)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Senha"),
                  labelStyle: TextStyle(color: Colors.orange)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Repita a Senha"),
                  labelStyle: TextStyle(color: Colors.orange)),
            ),
          ),
        ],
      ),
    );
  }
}
