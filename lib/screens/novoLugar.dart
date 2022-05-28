import 'package:flutter/material.dart';
export 'novoLugar.dart';

class NovoLugar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Novo Lugar',
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () => {Navigator.pop(context)},
              child: const Text(
                'Adicionar',
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.place_outlined,
                  ),
                  label: Text("Lugar"),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.indigo)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, style: BorderStyle.solid))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.description_outlined,
                  ),
                  label: Text("Descrição"),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.indigo)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, style: BorderStyle.solid))),
            ),
          ),
        ],
      ),
    );
  }
}
