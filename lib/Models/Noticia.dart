import 'package:intl/intl.dart';

class Noticia {
  int? id;
  String? tipo;
  String? titulo;
  String? introducao;
  DateTime? data_publicacao;
  int? produto_id;
  String? produtos;
  String? editorias;
  String? imagens;
  String? produtos_relacionados;
  bool? destaque;
  String? link;

  Noticia({
    this.id,
    this.tipo,
    this.titulo,
    this.introducao,
    this.data_publicacao,
    this.produto_id,
    this.produtos,
    this.editorias,
    this.imagens,
    this.produtos_relacionados,
    this.destaque,
    this.link,
  });

  Noticia.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tipo = json['tipo'];
    titulo = json['titulo'];
    introducao = json['introducao'];
    data_publicacao = DateFormat("dd/MM/yyyy HH:mm:ss")
        .parse(json['data_publicacao'].toString());
    produto_id = json['produto_id'];
    produtos = json['produtos'];
    editorias = json['editorias'];
    imagens = json['imagens'];
    produtos_relacionados = json['produtos_relacionados'];
    destaque = json['destaque'];
    link = json['link'];
  }
}
