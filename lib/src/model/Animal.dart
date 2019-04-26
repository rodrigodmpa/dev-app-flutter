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
  String health;
  var demands = new List<String>(4);
  String sobre;


  Animal({this.id, this.userId, this.name, this.demands, this.size, this.health, this.idade, this.interest, this.sex, this.sobre, this.species, this.temperament});

  Animal.noId({this.userId ,this.name,this.demands,this.size,this.health,this.idade,this.interest,this.sex,this.sobre,this.species,this.temperament});

}