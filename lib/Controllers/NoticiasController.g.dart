// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NoticiasController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NoticiasController on BaseNoticiasController, Store {
  late final _$listaAtom =
      Atom(name: 'BaseNoticiasController.lista', context: context);

  @override
  List<Noticia>? get lista {
    _$listaAtom.reportRead();
    return super.lista;
  }

  @override
  set lista(List<Noticia>? value) {
    _$listaAtom.reportWrite(value, super.lista, () {
      super.lista = value;
    });
  }

  @override
  String toString() {
    return '''
lista: ${lista}
    ''';
  }
}
