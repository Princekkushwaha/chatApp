import 'package:chat_app1/chatpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

List name = [
  "sumit",
  "Rohit",
  "Hitman",
  "yash",
  "surya",
  "om",
  "shami",
];

List image = [
  "images/programmer.png",
  "images/profile.png",
  "images/man.png",
  "images/profile (1).png",
  "images/user-experience.png",
  "images/satisfaction.png",
  "images/student.png",
];

List messagetime = [
  "19:12",
  "18: 50",
  "17: 45",
  "16:34",
  "15:2",
  "14: 25",
  "13: 20",
];

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          CupertinoIcons.home,
          color: Colors.white,
        ),
        title: const Text(
          "we chat",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              ))
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_comment_rounded),
        ),
      ),
      body: SizedBox(
        height: 700,
        child: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.to(
                  const PersonalChatView(),
                );
              },
              trailing: Text(
                messagetime[index],
                style: const TextStyle(color: Colors.white),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  image[index],
                ),
              ),
              title: Text(
                name[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
