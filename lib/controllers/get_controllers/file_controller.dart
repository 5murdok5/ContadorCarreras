import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FileController extends GetxController {
  late TextEditingController _taskInputCtrl;
  TextEditingController get taskInput => this._taskInputCtrl;
  
  @override
  void onInit() {
    _taskInputCtrl = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    _taskInputCtrl.dispose();
    super.onClose();
  }

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
