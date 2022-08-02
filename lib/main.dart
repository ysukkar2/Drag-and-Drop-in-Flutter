import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  Color value = Colors.blueAccent;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Draggable(
              data: Colors.grey,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              feedback: Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
              childWhenDragging: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
            DragTarget(builder: (BuildContext comtext,List<dynamic> accepted,List<dynamic> rejected){
              return Container(
                height: 200,
                width: 200,
                color: value,
              );
 
            },onAccept: (Color color){
              setState(() {
                value = color;
              });
            },)
          ],
        ),
      ),
    );
  }
}