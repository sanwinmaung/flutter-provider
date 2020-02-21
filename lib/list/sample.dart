import 'package:flutter/material.dart';

class ProviderClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.green[200],
            child: RaisedButton(
              child: Text('Do Something!'),
              onPressed: () {},
            ),
          ),

          Container(
            padding: const EdgeInsets.all(35),
            color: Colors.blue[200],
            child: Text('Show something!'),
          )
        ],
      ),
    );
  }
}
