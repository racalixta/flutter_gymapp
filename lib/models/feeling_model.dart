class FeelingModel {
  String id;
  String feeling;
  String data;

  FeelingModel({required this.id, required this.feeling, required this.data});

  FeelingModel.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        feeling = map['feeling'],
        data = map['data'];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "feeling": feeling,
      "data": data,
    };
  }
}
