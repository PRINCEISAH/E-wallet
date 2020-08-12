class User {
  final String name;
  final String profileImageUrl;

  User({this.name, this.profileImageUrl});
}

List<User> users_list = [
  User(
    name: "Mike",
    profileImageUrl: "images/Mike.svg",
  ),
  User(
    name: 'Joshpen',
    profileImageUrl: "images/Joshpen.svg",
  ),
  User(
    name: "Ashley",
    profileImageUrl: "images/Ashley.svg",
  ),
];
