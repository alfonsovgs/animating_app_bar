import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List buildTextViews(int count) {
    List<Widget> strings = List();

    for (int i = 0; i < count; i++) {
      strings.add(Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "Item number $i",
          style: TextStyle(fontSize: 20.0),
        ),
      ));
    }
    return strings;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: const Text('Sliver App Bar'),
          floating: true,
          snap: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate(buildTextViews(30)),
        )
      ],
    ));
  }
}
