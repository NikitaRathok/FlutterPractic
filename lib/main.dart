import 'package:flutter/material.dart';

void main() => runApp(CounterWidget());

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;
  @override
  void initState() {
    _count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 89, 163, 223),
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tap "-" to decrement'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 131, 174, 209),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                    ),
    
                    child: IconButton(
                       
                        onPressed: () {
                          setState(() {
                            _count++;
                          });
                        },
                        icon: Icon(Icons.add)),
                  ),
                  Container(
                    color: Color.fromARGB(255, 131, 174, 209),
                    padding: EdgeInsets.all(12.5),
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${_count}',
                      style:
                          TextStyle( fontSize: 20),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 131, 174, 209),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            _count--;
                          });
                        },
                        icon: Icon(Icons.remove)),
                  )
                ],
              ),
              Text('Tap "+" to increment'),
            ],
          ),
        ),
      ),
    );
  }
}
