import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TheGridView().build(),
      ),
    );
  }
}

class TheGridView {
  Card makeGridCell(String name, IconData icon) {
    return Card(
      elevation: 1.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Center(child: Icon(icon)),
          Center(child: Text(name))
        ],
      ),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: <Widget>[
        makeGridCell("Home", Icons.home),
        makeGridCell("Email", Icons.email),
        makeGridCell("Chat", Icons.chat_bubble),
        makeGridCell("New", Icons.new_releases),
        makeGridCell("Network", Icons.network_wifi),
        makeGridCell("Options", Icons.settings),
      ],
    );
  }
}
