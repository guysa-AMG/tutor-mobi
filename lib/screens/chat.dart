import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';

class MessageScreen extends StatefulWidget {
  @override
  State<MessageScreen> createState() => MessageScreenState();
}

class MessageScreenState extends State<MessageScreen> {
  final _inMemoryController = InMemoryChatController();

  @override
  void dispose() {
    _inMemoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("lets chat"), centerTitle: true,leading: BackButton(),),
      body: Chat(
        
        theme: Theme.of(context).brightness == Brightness.dark
            ? ChatTheme.dark()
            : ChatTheme.light(),
        currentUserId: "me",
        onMessageSend: (text) {
          _inMemoryController.insertMessage(TextMessage(id: "${Random().nextInt(100)}",text: text,authorId: "me"));
          setState(() {
            
          });
        },
        resolveUser: (String id)async{
          
          return  User(id: id);
        },
        chatController: _inMemoryController,
      ),
    );
  }
}
