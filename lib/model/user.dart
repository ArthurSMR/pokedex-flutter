class User {
  String username = "";
  String password = "";
  String email = "";
  bool terms = false;

  printValues() {
    print("Validation successful!");
    print("Username: $username");
    print("Password: $password");
    print("Email: $email");
    print("O usuário concorda com os termos? $terms");
  }
}
