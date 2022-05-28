import "package:flutter/material.dart";
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Novo Cadastro',
        ),
        actions: [
          TextButton(
              onPressed: () => {Navigator.pop(context)},
              child: const Text(
                'Salvar',
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Email")),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone,
                ),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                label: Text("Telefone"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Senha")),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline_rounded,
                ),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigo, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                label: Text("Repita a Senha"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
