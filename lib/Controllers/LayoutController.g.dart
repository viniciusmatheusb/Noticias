// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LayoutController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LayoutController on BaseLayoutController, Store {
  late final _$temaLayoutAtom =
      Atom(name: 'BaseLayoutController.temaLayout', context: context);

  @override
  Brightness get temaLayout {
    _$temaLayoutAtom.reportRead();
    return super.temaLayout;
  }

  @override
  set temaLayout(Brightness value) {
    _$temaLayoutAtom.reportWrite(value, super.temaLayout, () {
      super.temaLayout = value;
    });
  }

  @override
  String toString() {
    return '''
temaLayout: ${temaLayout}
    ''';
  }
}
