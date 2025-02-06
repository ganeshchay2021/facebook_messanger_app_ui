// ignore_for_file: public_member_api_docs, sort_constructors_first
class ContactModel {
  final String name;
  final String image;
  final String lastSeen;

  ContactModel({
    required this.name,
    required this.image,
    required this.lastSeen,
  });
}

class ChatModel {
  final String name;
  final String image;
  final String lastSeen;
  final String day;
  final int numberofMsg;

  ChatModel({
    required this.name,
    required this.image,
    required this.lastSeen,
    required this.day,
    required this.numberofMsg,
  });
}

final List<ContactModel> listOfContacts = [
  ContactModel(
    name: "Athalia Putri",
    image: "assets/images/Avatar (1).png",
    lastSeen: "Last seen yesterday",
  ),
  ContactModel(
    name: "Erlan Sadewa",
    image: "assets/images/Avatar (2).png",
    lastSeen: "Online",
  ),
  ContactModel(
    name: "Midala Huera",
    image: "assets/images/Avatar (3).png",
    lastSeen: "Last seen 3 hours ago",
  ),
  ContactModel(
    name: "Nafisa Gitari",
    image: "assets/images/Avatar (4).png",
    lastSeen: "Online",
  ),
  ContactModel(
    name: "Raki Devon",
    image: "assets/images/Avatar (6).png",
    lastSeen: "Online",
  ),
  ContactModel(
    name: "Salsabila Akira",
    image: "assets/images/Avatar.png",
    lastSeen: "Last seen 30 minutes ago",
  ),
];

final List<ChatModel> listOfChats = [
  ChatModel(
    name: "Raki Devon",
    image: "assets/images/Avatar (6).png",
    lastSeen: "Online",
    day:"Today",
    numberofMsg: 1
    
  ),
  ChatModel(
    name: "Salsabila Akira",
    image: "assets/images/Avatar.png",
    lastSeen: "Last seen 30 minutes ago",
     day:"11/6",
    numberofMsg: 1
  ),
  ChatModel(
    name: "Erlan Sadewa",
    image: "assets/images/Avatar (2).png",
    lastSeen: "Online",
     day:"11/6",
    numberofMsg: 1
  ),
];
