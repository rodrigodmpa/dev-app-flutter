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
  List<int> demands = new List(4);
  String sobre;
  String pictureRoute;
  String address;


  Animal({this.id, this.userId, this.name,this.demands = const [1,2,3,4],this.size,this.health,this.idade,this.interest,this.sex,this.sobre,this.species,this.temperament,this.pictureRoute,this.address});

  Animal.noId({this.userId ,this.name,this.demands= const [1,2,3,4],this.size,this.health,this.idade,this.interest,this.sex,this.sobre,this.species,this.temperament,this.pictureRoute,this.address});

}