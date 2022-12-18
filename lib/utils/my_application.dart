import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topfnf/controllers/app_controller.dart';
import 'package:topfnf/data/params_args.dart';

MyApplication app = MyApplication();

class MyApplication {
  static final MyApplication _myApplication = MyApplication._i();
  final AppController _appController = Get.find(tag: ParamsArgus.APP);

  factory MyApplication() {
    return _myApplication;
  }

  MyApplication._i() {}

  AppController get appController {
    return _appController;
  }
}
