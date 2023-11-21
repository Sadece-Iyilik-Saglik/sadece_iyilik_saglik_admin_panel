import '../model/user_model.dart';

class UserViewModel {
  static List<User> get users => [
        User(
            name: "Bedirhan",
            surname: "Tong",
            email: "a@gmail.com",
            password: "123456")
      ];

  User createUser(User user) {
    users.add(user);
    return user;
  }
}
