import 'package:flutter/material.dart';

class NoDataPage extends StatefulWidget {
  NoDataPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NoDataPageState createState() => _NoDataPageState();
}

class _NoDataPageState extends State<NoDataPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.black,
          child: Center(
              child: new Column(
            children: <Widget>[
              new Image.asset('lib/assets/images/youshallnotpass.jpg'),
              new Text(
                  'Ainda não existem jogos nessa categoria, volte mais tarde!')
            ],
          )),
        ));
  }
}
