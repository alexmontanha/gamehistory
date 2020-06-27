import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:banco_jogos/models/jogo-model.dart';

class JogoService {

  Future<Jogo> fetchJogo() async {
    final response =
        await http.get('https://bancojogos-b7859.firebaseio.com/games/1.json');

    return Jogo.fromJson(json.decode(response.body));
  }

  Future<List<Jogo>> fetchJogos() async {
    final response = 
      await http.get('https://bancojogos-b7859.firebaseio.com/games.json');

    List<dynamic> _list = json.decode(response.body);
    List<Jogo> _listJogos = new List<Jogo>();

    _list.forEach((jogo) {
      Jogo j = Jogo.fromJson(jogo);

      _listJogos.add(j);
    });

    return _listJogos;
    
  }

}
