import 'package:flutter/material.dart';
import 'package:flutterdemo/animacao_implicita.dart';
import 'package:flutterdemo/page_route_anim.dart';

void main(){
  runApp(MaterialApp(
    home: AnimacaoImplicita(),
    debugShowCheckedModeBanner: false,
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen'
        ),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.deepOrange,
          child: Text(
            'Secound',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          onPressed: (){
            Navigator.push(context,
              PageRouteAnim(widget: SecondScreen())
             );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secound Screen'),
      ),
      body: Center(
        child: Text(
          'Secound Screen',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold

          ),
        ),
      ),
    );
  }
}
