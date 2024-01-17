import 'package:flutter/material.dart';
import 'package:stuntsync/features/chat/screens/widgets/contact.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          contact(
            'assets/icons/profile.png',
            'Ayoub',
            '19:30',
            'online',
            'Chokran bezaf khouya',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Anas',
            '10:05',
            'online',
            'Inchaalah nji andek...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Hamid',
            '18:20',
            'online',
            'Merci beaucoup frero',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'yassine',
            '12:10',
            'online',
            'Thank so much for your help',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Ayman',
            '16:45',
            'online',
            'Am in the way, just 5 min...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Achraf',
            '19:30',
            'online',
            'Fin nta db, ana f casa...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Hamza',
            'Yesterday',
            'online',
            'Can you explain to me ?',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'youssef',
            'Yesterday',
            'online',
            'Salam alaykom...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Mohamed',
            'Yesterday',
            'online',
            'Lktab lakhor zwin bezaf',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'tariq',
            '4/23/22',
            'online',
            'Wach chritiha men tema',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Adam',
            '4/23/22',
            'online',
            'Kif halek bikhir, kolchi mzn',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            'Islam',
            '4/23/22',
            'online',
            'It\'s a great story',
            context,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}






