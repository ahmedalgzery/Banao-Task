// ignore_for_file: public_member_api_docs, sort_constructors_first

// Define a class named ProgramModel to represent a program.
class ProgramModel {
  // Properties of the ProgramModel class.
  String createdAt; // The date and time when the program was created.
  String name; // The name of the program.
  String category; // The category to which the program belongs.
  int lesson; // The number of lessons in the program.
  String id; // The unique identifier of the program.

  // Constructor for ProgramModel class with required parameters.
  ProgramModel({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
    required this.id,
  });

  // Factory method to create a ProgramModel instance from a JSON map.
  factory ProgramModel.fromJson(Map<String, dynamic> json) {
    return ProgramModel(
      createdAt: json['createdAt'], // Assign the 'createdAt' value from JSON to the property.
      name: json['name'], // Assign the 'name' value from JSON to the property.
      category: json['category'], // Assign the 'category' value from JSON to the property.
      lesson: json['lesson'], // Assign the 'lesson' value from JSON to the property.
      id: json['id'], // Assign the 'id' value from JSON to the property.
    );
  }
}
