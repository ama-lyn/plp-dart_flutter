import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello, there!',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('You are on the right platform :)');
            },
            child: Text('Press Me Please'),
          ),
          SizedBox(height: 20),
          Image.network(
            'https://i.pinimg.com/564x/2b/76/57/2b7657b77aba642b4db75b8b3ad42c1c.jpg',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
