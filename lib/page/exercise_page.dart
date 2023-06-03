import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Puxada Pronada - Treino a'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print('FAB foi clicado!');
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Enviar foto"),
              ),
              const Text(
                'Como fazer?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text(
                  'Segura com as duas mãos na barra, mantenha a coluna ereta e puxa.'),
              const Divider(),
              const Text(
                'Como estou me sentindo?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text("Senti bastante ativação hoje!"),
            ],
          ),
        ));
  }
}
