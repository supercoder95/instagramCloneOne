import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
      ),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.send),
          onPressed: (){

          },
        )
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Text('No Image'),
        TextField(
          decoration: InputDecoration(hintText: '내용을 입력하세요'),
          controller: textEditingController,
        )
      ],
    );
  }
}
