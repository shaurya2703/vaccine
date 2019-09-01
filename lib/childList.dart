import 'package:flutter/material.dart';

class ChildAddPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChildAddPageState();
  }
}

class _ChildAddPageState extends State<ChildAddPage> {
  int _counter = 0;
  bool value = true;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Child Page'),
      ),
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Name',style: TextStyle(color: Colors.black, fontSize: 18.0),),
                  Text('Date of birth',style: TextStyle(color: Colors.grey, fontSize: 13.0),),
                  Text('Gender',style: TextStyle(color: Colors.black12, fontSize: 10.0),)
                ],
              ),
            ),
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.display1,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.indigo,
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'childform');
        },
        // tooltip: 'Increment',
      ),
    );
  }
}
