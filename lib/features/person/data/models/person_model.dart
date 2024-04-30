import 'package:persons_app/features/person/domain/entities/person_entity.dart';

class PersonModel extends Person {
  PersonModel({
    required super.personId,
    required super.name,
    required super.birthDate,
    required super.age,
    required super.nationalityId,
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) => PersonModel(
        personId: json["personID"],
        name: json["name"],
        birthDate: json["birthDate"] == null
            ? null
            : DateTime.parse(json["birthDate"]),
        age: json["age"],
        nationalityId: json["nationalityID"],
      );
}
