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
        appBar: AppBar(
          title: Text('${exerciseModel.name} - ${exerciseModel.workout}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print('FAB foi clicado!');
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
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
              Text(exerciseModel.howToMake),
              const Divider(),
              const Text(
                'Como estou me sentindo?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listFeeling.length, (index) {
                  FeelingModel feelingSelected = listFeeling[index];
                  return Text(feelingSelected.feeling);
                }),
              ),
            ],
          ),
        ));
  }
}
