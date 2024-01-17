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
            "RSUP Dr Sardjito Admin",
            '19:30',
            'online',
            'Chokran bezaf khouya',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Muhammadiyah Yogyakarta Admin",
            '10:05',
            'online',
            'Inchaalah nji andek...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Ludira Husada Tama Admin",
            '18:20',
            'online',
            'Merci beaucoup frero',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Islam Hidayatullah Admin",
            '12:10',
            'online',
            'Thank so much for your help',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Happy Land Admin",
            '16:45',
            'online',
            'Am in the way, just 5 min...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Dr. Yap Yogyakarta Admin",
            '19:30',
            'online',
            'Fin nta db, ana f casa...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Dr. Soetarto Admin",
            'Yesterday',
            'online',
            'Can you explain to me ?',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Bethesda Yogyakarta Admin",
            'Yesterday',
            'online',
            'Salam alaykom...',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Bethesda Lempuyangwangi Admin",
            'Yesterday',
            'online',
            'Lktab lakhor zwin bezaf',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RS Dr Soetarto Admin",
            '4/23/22',
            'online',
            'Wach chritiha men tema',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "RSUD Kota Yogyakarta Admin",
            '4/23/22',
            'online',
            'Kif halek bikhir, kolchi mzn',
            context,
          ),
          contact(
            'assets/icons/profile.png',
            "Puskesmas Sinduadi Admin",
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






