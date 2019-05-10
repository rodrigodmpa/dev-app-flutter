class User {
    int id;
    String name;
    String userName;
    String email;
    String idade;
    String address;
    String password;
    String state;
    String phone;

    User({this.id, this.name, this.userName, this.email, this.password, this.state, this.phone, this.idade, this.address});
    User.noId({this.name, this.userName, this.email, this.password, this.state, this.phone, this.idade, this.address});

  Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'idade': instance.idade,
      'address': instance.address,
      'password': instance.password,
      'state': instance.state,
      'phone': instance.phone
    };

}