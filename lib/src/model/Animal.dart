import 'package:json_annotation/json_annotation.dart';
// part 'Animal.g.dart';

@JsonSerializable()
class Animal {
  int userId;
  String name;
  int interest;
  int species;
  int sex;
  int size;
  int age;
  List<int> temperament = new List(6);
  List<int> demands = new List(3);
  List<int> health = new List(4);
  List<int> needs = new List(3);
  String medicationName;
  int objects;
  String objectsName;
  String disease;
  String about;
  String pictureRoute;
  String address;

  Animal(
      {this.userId,
      this.name,
      this.interest,
      this.species,
      this.sex,
      this.size,
      this.age,
      this.temperament,
      this.demands,
      this.health,
      this.needs,
      this.medicationName,
      this.objects,
      this.objectsName,
      this.disease,
      this.about,
      this.pictureRoute,
      this.address});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  // factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  // /// `toJson` is the convention for a class to declare support for serialization
  // /// to JSON. The implementation simply calls the private, generated
  // /// helper method `_$UserToJson`.
  // Map<String, dynamic> toJson() => _$AnimalToJson(this);
}
