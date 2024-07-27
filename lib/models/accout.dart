class Account {
  String name;
  String password;

  Account(this.name, this.password);

  get getName => name;
  void setName(String name) {
    this.name = name;
  }

  get getPassword => password;
  void setPassword(String password) {
    this.password = password;
  }

  // static Account account = Account('admin', '1234');
}
