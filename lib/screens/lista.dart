import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final List lista = List.generate(100, (index) {
    return {"id": index, "title": "Lugar", "subtitle": "Esse lugar blablabla"};
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text(
          'Bússola',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: () => {Navigator.pushReplacementNamed(context, "/")}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () => {Navigator.pushNamed(context, "/novoLugar")},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemBuilder: (context, index) => Card(
                  elevation: 6,
                  margin: const EdgeInsets.all(16),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      child: Text(lista[index]['id'].toString()),
                    ),
                    title: Text(lista[index]["title"]),
                    subtitle: Text(lista[index]['subtitle']),
                    trailing: const Icon(
                      Icons.airplane_ticket_outlined,
                      color: Colors.orange,
                    ),
                  ),
                )),
      ),
    );
  }
}
