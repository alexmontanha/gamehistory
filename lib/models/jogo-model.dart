class Jogo {
  String arquitetura;
  String classificacao;
  String contexto;
  String geopolitica;
  int id;
  String image;
  String linkIGDB;
  String linkStore;
  String lore;
  String mecanica;
  String musica;
  String name;
  String religiao;
  String resumo;

  Jogo(
      {this.arquitetura,
      this.classificacao,
      this.contexto,
      this.geopolitica,
      this.id,
      this.image,
      this.linkIGDB,
      this.linkStore,
      this.lore,
      this.mecanica,
      this.musica,
      this.name,
      this.religiao,
      this.resumo});

  Jogo.fromJson(Map<String, dynamic> json) {
    arquitetura = json['arquitetura'];
    classificacao = json['classificacao'].toString();
    contexto = json['contexto'];
    geopolitica = json['geopolitica'];
    id = json['id'];
    image = json['image'];
    linkIGDB = json['linkIGDB'];
    linkStore = json['linkStore'];
    lore = json['lore'];
    mecanica = json['mecanica'];
    musica = json['musica'];
    name = json['name'];
    religiao = json['religiao'];
    resumo = json['resumo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['arquitetura'] = this.arquitetura;
    data['classificacao'] = this.classificacao;
    data['contexto'] = this.contexto;
    data['geopolitica'] = this.geopolitica;
    data['id'] = this.id;
    data['image'] = this.image;
    data['linkIGDB'] = this.linkIGDB;
    data['linkStore'] = this.linkStore;
    data['lore'] = this.lore;
    data['mecanica'] = this.mecanica;
    data['musica'] = this.musica;
    data['name'] = this.name;
    data['religiao'] = this.religiao;
    data['resumo'] = this.resumo;
    return data;
  }
}