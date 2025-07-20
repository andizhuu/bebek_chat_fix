import 'package:flutter/material.dart';

class BluetoothChatPage extends StatefulWidget {
  @override
  _BluetoothChatPageState createState() => _BluetoothChatPageState();
}

class _BluetoothChatPageState extends State<BluetoothChatPage> {
  final TextEditingController _messageController = TextEditingController();
  List<String> messages = [];

  void _sendMessage() {
    String text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        messages.add('Saya: $text');
        messages.add('Teman: (balasan otomatis)');
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat Bluetooth")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) =>
                  ListTile(title: Text(messages[index])),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(hintText: "Ketik pesan"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.cyan),
                  onPressed: _sendMessage,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
