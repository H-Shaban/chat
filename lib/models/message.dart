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
}

final User currentUser =
    User(id: 0, name: "Current User", imageUrl: "assets/images/5.jpg");

final User hamada =
    User(id: 1, name: "hamada", imageUrl: "assets/images/5.jpg");
final User ali = User(id: 2, name: "ali", imageUrl: "assets/images/1.jpg");
final User sultan =
    User(id: 3, name: "sultan", imageUrl: "assets/images/7.jpg");
final User motasem =
    User(id: 4, name: "motasem", imageUrl: "assets/images/8.jpg");

final User sofia = User(id: 5, name: "sofia", imageUrl: "assets/images/2.jpg");
final User alin = User(id: 6, name: "alin", imageUrl: "assets/images/3.jpg");
final User lina = User(id: 7, name: "lina", imageUrl: "assets/images/4.jpg");

List<User> favorites = [ali, sofia, sultan, lina];
List<Message> messages = [
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
      unread: false),
  Message(
      sender: sofia,
      time: "02:30 AM",
      text: "hi, what do you do today?",
      isLiked: false,
      unread: true),
  Message(
      sender: ali,
      time: "06:30 PM",
      text: "hi, what do you do today?",
      isLiked: false,
      unread: false),
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


List<Message> chat = [
  Message(
      sender: ali,
      time: "06:30 PM",
      text: "hi, what do you do today1?",
      isLiked: true,
      unread: true),
  Message(
      sender: currentUser,
      time: "07:30 PM",
      text: "hi, what do you do today2?",
      isLiked: false,
      unread: false),
  Message(
      sender: sofia,
      time: "02:30 AM",
      text: "hi, what do you do today3?",
      isLiked: true,
      unread: true),
  Message(
      sender: ali,
      time: "06:30 PM",
      text: "hi, what do you do today4?",
      isLiked: false,
      unread: false),
  Message(
      sender: sultan,
      time: "07:30 PM",
      text: "hi, what do you do today5?",
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: "02:30 AM",
      text: "hi, what do you do today6?",
      isLiked: true,
      unread: true),
  Message(
      sender: ali,
      time: "06:30 PM",
      text: "hi, what do you do today7?",
      isLiked: false,
      unread: true),
  Message(
      sender: currentUser,
      time: "07:30 PM",
      text: "hi, what do you do today8?",
      isLiked: false,
      unread: false),
  Message(
      sender: sofia,
      time: "02:30 AM",
      text: "hi, what do you do today9?",
      isLiked: true,
      unread: true),
  Message(
      sender: ali,
      time: "06:30 PM",
      text: "hi, what do you do today10?",
      isLiked: false,
      unread: false),
  Message(
      sender: sultan,
      time: "07:30 PM",
      text: "hi, what do you do today11?",
      isLiked: true,
      unread: true),
  Message(
      sender: currentUser,
      time: "02:30 AM",
      text: "hi, what do you do today12?",
      isLiked: false,
      unread: true)
];
