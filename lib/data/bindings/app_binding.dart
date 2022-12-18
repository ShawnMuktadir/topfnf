import 'package:get/get.dart';
import 'package:topfnf/controllers/app_controller.dart';
import 'package:topfnf/data/params_args.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController(), tag: ParamsArgus.APP, fenix: true);
  }
}
