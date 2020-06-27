import 'dart:ui';
import 'package:flutter/material.dart';
import 'models/jogo-model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetalheJogoPage extends StatefulWidget {
  final Jogo jogo;

  final String title = "Detalhe do Jogo";

  DetalheJogoPage({@required this.jogo});

  @override
  _DetalheJogoPageState createState() => _DetalheJogoPageState(jogo: this.jogo);
}

class _DetalheJogoPageState extends State<DetalheJogoPage> {
  final Jogo jogo;
  Color _colorOn = Colors.deepPurple;
  Color _colorOff = Colors.grey;
  Color _starColor1;
  Color _starColor2;
  Color _starColor3;
  Color _starColor4;
  Color _starColor5;

  _DetalheJogoPageState({@required this.jogo}) {
    _starColor1 = _colorOff;
    _starColor2 = _colorOff;
    _starColor3 = _colorOff;
    _starColor4 = _colorOff;
    _starColor5 = _colorOff;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(jogo.image),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    jogo.name,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.star,
                            color: _starColor1,
                          ),
                          onPressed: () {
                            setState(() {
                              _starColor1 = (_starColor1 == _colorOff)
                                  ? _colorOn
                                  : _colorOff;

                              if (_starColor1 == _colorOff) {
                                _starColor2 = _colorOff;
                                _starColor3 = _colorOff;
                                _starColor4 = _colorOff;
                                _starColor5 = _colorOff;
                              }
                            });
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.star,
                            color: _starColor2,
                          ),
                          onPressed: () {
                            setState(() {
                              _starColor2 = (_starColor2 == _colorOff)
                                  ? _colorOn
                                  : _colorOff;

                              if (_starColor2 == _colorOn) {
                                _starColor1 = _starColor2;
                              }

                              if (_starColor2 == _colorOff) {
                                _starColor3 = _colorOff;
                                _starColor4 = _colorOff;
                                _starColor5 = _colorOff;
                              }
                            });
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.star,
                            color: _starColor3,
                          ),
                          onPressed: () {
                            setState(() {
                              _starColor3 = (_starColor3 == _colorOff)
                                  ? _colorOn
                                  : _colorOff;

                              if (_starColor3 == _colorOn) {
                                _starColor1 = _starColor3;
                                _starColor2 = _starColor3;
                              }

                              if (_starColor3 == _colorOff) {
                                _starColor4 = _colorOff;
                                _starColor5 = _colorOff;
                              }
                            });
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.star,
                            color: _starColor4,
                          ),
                          onPressed: () {
                            setState(() {
                              _starColor4 = (_starColor4 == _colorOff)
                                  ? _colorOn
                                  : _colorOff;

                              if (_starColor4 == _colorOn) {
                                _starColor1 = _starColor4;
                                _starColor2 = _starColor4;
                                _starColor3 = _starColor4;
                              }

                              if (_starColor4 == _colorOff) {
                                _starColor5 = _colorOff;
                              }
                            });
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.star,
                            color: _starColor5,
                          ),
                          onPressed: () {
                            setState(() {
                              _starColor5 = (_starColor5 == _colorOff)
                                  ? _colorOn
                                  : _colorOff;

                              if (_starColor5 == _colorOn) {
                                _starColor1 = _starColor5;
                                _starColor2 = _starColor5;
                                _starColor3 = _starColor5;
                                _starColor4 = _starColor5;
                              }
                            });
                          })
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Text(
                      jogo.resumo,
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Text(
                      'Mecânicas',
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Text(
                      jogo.mecanica,
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Text(
                      'Link na Loja',
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: InkWell(
                      child: Text(
                        jogo.linkStore,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.lightBlue[50],
                            fontStyle: FontStyle.italic),
                      ),
                      onTap: () async {
                        if (await canLaunch(jogo.linkStore)) {
                          await launch(jogo.linkStore);
                        }
                      },
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Text(
                      'Link no Internet Game Database',
                      textAlign: TextAlign.justify,
                    )),
                Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: InkWell(
                      child: Text(
                        jogo.linkIGDB,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.lightBlue[50],
                            fontStyle: FontStyle.italic),
                      ),
                      onTap: () async {
                        if (await canLaunch(jogo.linkIGDB)) {
                          await launch(jogo.linkIGDB);
                        }
                      },
                    )),
              ],
            ),
          )),
    );
  }
}
