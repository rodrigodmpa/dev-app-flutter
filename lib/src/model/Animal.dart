import 'package:json_annotation/json_annotation.dart';
part 'Animal.g.dart';

@JsonSerializable()
class Animal {
  int id;
  int userId;
  String name;
  int interest;
  String species;
  String sex;
  String size;
  int idade;
  String temperament;
  String demands;
  List<int> health = new List(4);
  String sobre;
  String pictureRoute;
  String address;
  String needs;


  Animal({this.id, this.userId, this.name,this.health = const [1,1,0,1],this.size,this.demands,this.idade,this.interest,this.sex,this.sobre,this.species,this.temperament,this.pictureRoute,this.address, this.needs = 'Nada'});

  Animal.noId({this.userId ,this.name,this.health= const [1,1,0,1],this.size,this.demands,this.idade,this.interest,this.sex,this.sobre,this.species,this.temperament,this.pictureRoute,this.address, this.needs = 'Nada'});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$AnimalToJson(this);
}