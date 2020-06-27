import 'package:banco_jogos/services/jogo-service.dart';
import 'package:flutter/material.dart';

import 'detalhe.dart';
import 'models/jogo-model.dart';

class GameListPage extends StatefulWidget {
  GameListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _GameListPageState createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  Future<List<Jogo>> _futureJogos;
  JogoService _jogoService = new JogoService();

  @override
  void initState() {
    super.initState();

    _futureJogos = _jogoService.fetchJogos();
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
            child: FutureBuilder<List<Jogo>>(
                future: _futureJogos,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return Text('none');
                    case ConnectionState.waiting:
                      return Text('Aguarde ...',
                          style: TextStyle(color: Colors.white, fontSize: 24));
                    default:
                      return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return new Column(
                              children: <Widget>[
                                ListTile(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetalheJogoPage(
                                                  jogo: snapshot.data[index],
                                                )));
                                  },
                                  title: Text('${snapshot.data[index].name}',
                                      style: TextStyle(
                                          color: Colors.white)),
                                )
                              ],
                            );
                          });
                  }
                })),
      ),
    );
  }
}
