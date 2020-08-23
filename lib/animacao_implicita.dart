import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  @override
  _AnimacaoImplicitaState createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {

  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
 AnimatedAlign(alignment: _status
       ? Alignment.bottomLeft : Alignment.topCenter,
                 duration: Duration(seconds: 2),
                 child: AnimatedOpacity(
                     opacity: _status ? 0 : 1,
                     duration: Duration(seconds: 2),
                     child: AnimatedContainer(
                         duration: Duration(seconds: 2),
                         padding: const EdgeInsets.all(10),
                         height: _status? 200 : 300,
                         width: _status ? 200 : 300,
                         color: _status ? Colors.white : Colors.purpleAccent,
                         curve: Curves.elasticOut,
                         child: Image.asset('imagens/logo.png')
                     ))),
        RaisedButton(
          onPressed: (){
            setState(() {
              _status = !_status;
            });
          },
          child: Text('Alterar'),
        )
      ],
    );
  }
}
