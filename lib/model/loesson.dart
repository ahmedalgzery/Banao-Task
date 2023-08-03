// Define a class named LessonModel to represent a lesson.
class LessonModel {
  // Properties of the LessonModel class.
  String createdAt; // The date and time when the lesson was created.
  String name; // The name of the lesson.
  int duration; // The duration of the lesson in minutes.
  String category; // The category to which the lesson belongs.
  bool locked; // A flag indicating if the lesson is locked or not.
  String id; // The unique identifier of the lesson.

  // Constructor for LessonModel class with required parameters.
  LessonModel({
    required this.createdAt,
    required this.name,
    required this.duration,
    required this.category,
    required this.locked,
    required this.id,
  });

  // Factory method to create a LessonModel instance from a JSON map.
  factory LessonModel.fromJson(Map<String, dynamic> json) {
    return LessonModel(
      createdAt: json['createdAt'], // Assign the 'createdAt' value from JSON to the property.
      name: json['name'], // Assign the 'name' value from JSON to the property.
      duration: json['duration'], // Assign the 'duration' value from JSON to the property.
      category: json['category'], // Assign the 'category' value from JSON to the property.
      locked: json['locked'], // Assign the 'locked' value from JSON to the property.
      id: json['id'], // Assign the 'id' value from JSON to the property.
    );
  }
}
