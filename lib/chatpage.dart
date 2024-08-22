import 'dart:developer';
import 'package:chat_app1/ChatPageController.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PersonalChatView extends StatefulWidget {
  const PersonalChatView({super.key});

  @override
  State<PersonalChatView> createState() => _PersonalChatViewState();
}

class _PersonalChatViewState extends State<PersonalChatView> {
  final controller = Get.put(
    ChatPageController(),
  );
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage({required ImageSource source}) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      log("Picked image: ${pickedFile.path}");
    } else {
      log("No image selected.");
    }
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
              size: 30,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {},
                  child: const Text("Settings"),
                ),
              ];
            },
          ),
        ],
        leadingWidth: 25,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Text(
              "Rahul",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black38,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  DateChip(
                    date: DateTime(now.year, now.month, now.day + 0),
                  ),
                  const BubbleSpecialThree(
                    text: "Hi",
                    tail: true,
                    isSender: true,
                    color: Colors.grey,
                  ),
                  const BubbleSpecialThree(
                    text: "Hello",
                    tail: true,
                    isSender: false,
                    color: Colors.blue,
                  ),
                  const BubbleSpecialThree(
                    text: "What are you doing?",
                    tail: true,
                    isSender: true,
                    color: Colors.grey,
                  ),
                  const BubbleSpecialThree(
                    text: "Nothing important",
                    tail: true,
                    isSender: false,
                    color: Colors.blue,
                  ),
                  const BubbleSpecialThree(
                    text: "Going to the market",
                    tail: true,
                    isSender: true,
                    color: Colors.grey,
                  ),
                  BubbleNormalImage(
                    id: 'id001',
                    image: Image.asset("images/student.png"),
                    color: Colors.blue,
                    tail: true,
                    delivered: true,
                    isSender: false,
                  ),
                  const BubbleSpecialThree(
                    text: "Nice Picture",
                    tail: true,
                    isSender: true,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                  color: Colors.grey.shade800,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.emoji_emotions,
                            color: Colors.white),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                            hintText: "Type a message...",
                            hintStyle: TextStyle(color: Colors.white38),
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      IconButton(
                        icon:
                            const Icon(Icons.attach_file, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.camera_alt, color: Colors.white),
                        onPressed: () {
                          _pickImage(source: ImageSource.camera);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.mic, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                shape: const CircleBorder(),
                color: Colors.blue,
                onPressed: () {},
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
