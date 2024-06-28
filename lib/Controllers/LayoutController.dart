import 'dart:ui';
import 'package:mobx/mobx.dart';

part 'LayoutController.g.dart';

class LayoutController = BaseLayoutController with _$LayoutController;

abstract class BaseLayoutController with Store {
  @observable
  Brightness temaLayout = Brightness.light;
}
