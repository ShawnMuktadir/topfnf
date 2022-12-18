import 'package:get/get.dart';
import 'package:topfnf/screens/dashboard_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const DashboardScreen()),
  ];
}
