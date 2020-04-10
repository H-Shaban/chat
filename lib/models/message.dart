import 'user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message(
      {this.sender,
      this.time,
      this.text,
      this.isLiked = false,
      this.unread = true});

  static User currentUser =
      User(id: 1, name: "Current User", imageUrl: "assets/images/5.jpg");

  static User hamada =
      User(id: 1, name: "hamada", imageUrl: "assets/images/5.jpg");
  static User ali = User(id: 2, name: "ali", imageUrl: "assets/images/1.jpg");
  static User sultan =
      User(id: 3, name: "sultan", imageUrl: "assets/images/7.jpg");
  static User motasem =
      User(id: 4, name: "motasem", imageUrl: "assets/images/8.jpg");

  static User sofia =
      User(id: 5, name: "sofia", imageUrl: "assets/images/2.jpg");
  static User alin = User(id: 6, name: "alin", imageUrl: "assets/images/3.jpg");
  static User lina = User(id: 7, name: "lina", imageUrl: "assets/images/4.jpg");

  List<User> favorit = [ali, sofia, sultan, lina];
  List<Message> chat = [
    Message(
        sender: ali,
        time: "06:30 PM",
        text: "hi, what do you do today?",
        isLiked: false,
        unread: true),
    Message(
        sender: sultan,
        time: "07:30 PM",
        text: "hi, what do you do today?",
        isLiked: false,
        unread: true),
    Message(
        sender: sofia,
        time: "02:30 AM",
        text: "hi, what do you do today?",
        isLiked: false,
        unread: true)
  ];
}
