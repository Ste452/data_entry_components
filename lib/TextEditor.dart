import 'package:flutter/material.dart';

class TextEditor extends StatelessWidget {
  const TextEditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data enter"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              key: Key("text_field_key"), // Adicione esta linha
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Enter a value",
              ),
              style: TextStyle(
                fontSize: 25,
                color: Colors.tealAccent,
              ),
              onSubmitted: (String text) {
                print("Digited value:" + text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
