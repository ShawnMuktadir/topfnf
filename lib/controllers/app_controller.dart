import 'package:get/get.dart';
import 'package:topfnf/api/repository/api_repository.dart';
import 'package:topfnf/models/services_model.dart';
import 'package:topfnf/utils/log_utils.dart';
import 'package:topfnf/utils/snakbar_utils.dart';

const title = "AppController";

class AppController extends GetxController {
  final isLoading = false.obs;
  List<ServicesModel> uniqueList = [];
  final servicesList = <ServicesModel>[].obs;

  @override
  void onInit() {
    Log.loga(title, "onInit:: >>>>>>> ");
    getServices();
    super.onInit();
  }

  void setLoading(bool show) {
    isLoading.value = show;
    update();
  }

  void getServices() async {
    setLoading(true);
    try {
      final result = await ApiRepo().getServices();
      if (result != null) {
        if (result.isSuccess) {
          var serviceName = <String>{};
          uniqueList = result.servicesList!
              .where((service) => serviceName.add(service.serviceName!))
              .toList();
          servicesList.value = uniqueList;
          setLoading(false);
        } else {
          ConstantsUtils.showSnackbar(
              "Api Error Response", "error:: ${result.message}");
        }
      }
    } catch (e) {
      Log.loga(title, "getProducts:: e >>>>> $e");
      setLoading(false);
      ConstantsUtils.showSnackbar("Api Error", "error:: $e");
    }
  }
}
