class LessonModel {
  String createdAt;
  String name;
  int duration;
  String category;
  bool locked;
  String id;

  LessonModel({
    required this.createdAt,
    required this.name,
    required this.duration,
    required this.category,
    required this.locked,
    required this.id,
  });

  factory LessonModel.fromJson(Map<String, dynamic> json) {
    return LessonModel(
      createdAt: json['createdAt'],
      name: json['name'],
      duration: json['duration'],
      category: json['category'],
      locked: json['locked'],
      id: json['id'],
    );
  }
}
