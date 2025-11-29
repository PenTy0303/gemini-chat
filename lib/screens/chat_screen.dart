import 'package:clone_line/left_message_balloon.dart';
import 'package:clone_line/right_message_balloon.dart';
import 'package:clone_line/text_input.dart';
import 'package:clone_line/data_class/message.dart';
import 'package:clone_line/state/s_message_list.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';



class ChatScreen extends HookConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final messageList = ref.watch(sMessageListProvider);

    final textController = useTextEditingController();
    
    final temp = Scaffold(
      appBar: AppBar(
        title: Text("Gemini Chat by Flutter"),
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body:SafeArea(child: 
        Container(
          decoration: BoxDecoration(
            
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messageList.length, 
                    itemBuilder: (c, i) {
                      final message = messageList[i];
                      return message.isUser ? RightMessageBalloon(body: message.body) : LeftMessageBalloon(body: message.body);
                  }),
                ),
              ),
              TextInput(textEditingController: textController, messageSendFunction: () {_sendMessage(textController.text, ref); textController.clear();},)
            ],
          ),
        )
      ),
    );
    return MaterialApp(home: temp, debugShowCheckedModeBanner: false,);
  }

  Future<void> _sendMessage(String message, WidgetRef ref) async {
    if(message == '') {
      return;
    }
    final notifier = ref.read(sMessageListProvider.notifier);
    notifier.addMessage(newMessage: Message(messageid: 'm5', date: '2025-12-31-11:12:34', name: 'MasuiShu', body: message, isUser: true));

    await dotenv.load(fileName: '.env');
    final apiKey = dotenv.get('GEMINI_API_KEY');
    final model = GenerativeModel(model: 'gemini-2.5-flash', apiKey: apiKey);
    final prompt = [Content.text('Respond directly to the user\'s message below, keeping the reply under 100 characters in Japanese and not using markdown. Adopt a friendly, casual, and informal tone. Only your response.User message: "$message"')];
    final response = await model.generateContent(prompt);

    notifier.addMessage(newMessage: Message(messageid: 'm6', date: '2025-12-31-11:14:54', name: 'gemini-2.5-flash', body: response.text ?? '応答がありませんでした', isUser: false));

    return;

  }
}
