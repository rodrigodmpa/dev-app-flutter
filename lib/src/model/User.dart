class User {
    int id;
    String name;
    String userName;
    String email;
    String password;
    String state;
    String phone;

    User({this.id, this.name, this.userName, this.email, this.password, this.state, this.phone});
    User.noId({this.name, this.userName, this.email, this.password, this.state, this.phone});
}