import 'package:get/get.dart';
import 'package:topfnf/api/repository/api_repository.dart';
import 'package:topfnf/models/services_model.dart';
import 'package:topfnf/utils/log_utils.dart';
import 'package:topfnf/utils/snakbar_utils.dart';

const title = "AppController";

class AppController extends GetxController {
  final _selectedTabIndex = 0.obs;
  final _isLoading = false.obs;

  // final RxBool _isLoading = false.obs;
  final _isLoadingIndex = <int, bool>{}.obs;
  final _servicesList = <ServicesModel>[].obs;

  int get selectedTabIndex => _selectedTabIndex.value;

  bool get isLoading => _isLoading.value;

  bool isLoadingIndex(int index, [bool defaultValue = false]) =>
      // ignore: invalid_use_of_protected_member
      _isLoadingIndex.value[index] ?? defaultValue;

  // ignore: invalid_use_of_protected_member
  List<ServicesModel> get servicesList => _servicesList.value;

  @override
  void onInit() {
    Log.loga(title, "onInit:: >>>>>>> ");
    getServices();
    super.onInit();
  }

  void onTabChanged(int index) {
    _selectedTabIndex.value = index;
  }

  void setLoading(bool show) {
    _isLoading.value = show;
  }

  void setLoadingIndex(int key, bool show) {
    _isLoadingIndex.update(key, (dynamic val) => show, ifAbsent: () => show);
  }

  void getServices() async {
    setLoading(true);
    try {
      final result = await ApiRepo().getServices();
      // Log.loga(title, "getProducts:: result >>>>> ${result!.toJson()}");

      setLoading(false);
      if (result != null) {
        if (result.isSuccess) {
          _servicesList.value = result.servicesList ?? [];
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
