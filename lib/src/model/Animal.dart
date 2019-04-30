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

}