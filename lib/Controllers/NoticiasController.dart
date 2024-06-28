import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:noticias/Models/Noticia.dart';
import 'package:http/http.dart' as http;

part 'NoticiasController.g.dart';

class NoticiasController = BaseNoticiasController with _$NoticiasController;

abstract class BaseNoticiasController with Store {
  @observable
  List<Noticia>? lista = [];

  Future<List<Noticia>> buscaNoticiasApi() async {
    const url = "https://servicodados.ibge.gov.br/api/v3/noticias/?qtd=10";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var resposta = json.decode(response.body);

      lista =
          List<Noticia>.from(resposta['items'].map((i) => Noticia.fromJson(i)));
    }

    return lista!;
  }
}
