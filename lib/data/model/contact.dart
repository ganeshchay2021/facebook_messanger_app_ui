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

final List<ContactModel> listOfChats = [
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
  ContactModel(
    name: "Erlan Sadewa",
    image: "assets/images/Avatar (2).png",
    lastSeen: "Online",
  ),
];
