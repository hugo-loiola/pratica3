import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

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
            itemCount: 100,
            itemBuilder: (context, index) => Card(
                elevation: 10,
                margin: const EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Lugar ${index + 1}"),
                        subtitle: Text('Lugar maravilhoso!'),
                        trailing: IconButton(
                            onPressed: () => {},
                            icon: Icon(Icons.airplane_ticket_outlined)),
                      ),
                      Container(
                        child: Image.network(
                            'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2021/02/nyan-cat-1.gif'),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
