class ExerciseModel {
  String id;
  String name;
  String workout;
  String howToMake;

  String? urlImage;

  ExerciseModel({
    required this.id,
    required this.name,
    required this.workout,
    required this.howToMake,
  });

  ExerciseModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        workout = map['workout'],
        howToMake = map['howToMake'],
        urlImage = map['urlImage'];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "workout": workout,
      "howToMake": howToMake,
      "urlImage": urlImage,
    };
  }
}
