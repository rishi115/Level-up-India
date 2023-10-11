import 'package:flutter/material.dart';

import 'Chatgpt_service.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = [];
  final TextEditingController _textController = TextEditingController();

  // ...previous code

  void _handleSubmitted(String text) async {
    if (text.isEmpty) return;

    _textController.clear();
    setState(() {
      _messages.add('User: $text');
    });

    final String response = await ChatGPTService().getResponse(text);
    setState(() {
      _messages.add('ChatGPT: $response');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assistance')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) => ListTile(title: Text(_messages[index])),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(hintText: 'Send a message'),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => _handleSubmitted(_textController.text),
                  child: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}