import 'package:flutter/material.dart';
import 'package:flutter_gymapp/models/exercise_model.dart';
import 'package:flutter_gymapp/models/feeling_model.dart';

class ExercisePage extends StatelessWidget {
  ExercisePage({super.key});

  final ExerciseModel exerciseModel = ExerciseModel(
      id: 'EX001',
      name: 'Remada Baixa Supinada',
      workout: 'Treino A',
      howToMake: 'Segura a barra e puxa!');

  final List<FeelingModel> listFeeling = [
    FeelingModel(
        id: 'FE001', feeling: 'Pouca ativação hoje', data: '2022-02-17'),
    FeelingModel(
        id: 'FE002', feeling: 'Melhorou a ativação hoje', data: '2022-02-19'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('${exerciseModel.name} - ${exerciseModel.workout}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print('FAB foi clicado!');
          },
          child: const Icon(Icons.add),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: ListView(
            children: [
              SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Enviar foto"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Tirar foto"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Como fazer?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(exerciseModel.howToMake),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              const Text(
                'Como estou me sentindo?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listFeeling.length, (index) {
                  FeelingModel feelingSelected = listFeeling[index];
                  return ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(feelingSelected.feeling),
                    subtitle: Text(feelingSelected.data),
                    leading: const Icon(Icons.double_arrow),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {},
                    ),
                  );
                }),
              ),
            ],
          ),
        ));
  }
}
