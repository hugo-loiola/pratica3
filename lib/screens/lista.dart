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
        title: const Text(
          'Ticket',
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.exit_to_app,
              ),
              onPressed: () => {Navigator.pushReplacementNamed(context, "/")}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.pushNamed(context, "/novoLugar")},
        child: const Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemBuilder: (context, index) => Card(
                  elevation: 6,
                  margin: const EdgeInsets.all(16),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(lista[index]['id'].toString()),
                    ),
                    title: Text(lista[index]["title"]),
                    subtitle: Text(lista[index]['subtitle']),
                    trailing: const Icon(
                      Icons.airplane_ticket_outlined,
                    ),
                  ),
                )),
      ),
    );
  }
}
