import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:topfnf/api/api.dart';
import 'package:topfnf/api/api_end_points.dart';
import 'package:topfnf/api/api_params.dart';
import 'package:topfnf/api/api_utils.dart';
import 'package:topfnf/models/services_model.dart';
import 'package:topfnf/models/services_response.dart';

class ApiRepo {
  Future<ServicesResponse?> getServices() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return ServicesResponse.withError(
          statusCode: CODE_NO_INTERNET, msg: apiUtils.getNetworkError());
    }

    String url = Api.baseUrl + ApiEndPoints.services;

    try {
      final response = await apiUtils.get(url: url);

      // ignore: unnecessary_null_comparison
      if (response != null) {
        List<ServicesModel> services = List<ServicesModel>.from(
            response.data.map((x) => ServicesModel.fromJson(x)));

        return ServicesResponse(success: true, servicesList: services);
      }

      return ServicesResponse.withError(
          statusCode: CODE_RESPONSE_NULL, msg: "");
    } catch (e) {
      return ServicesResponse.withError(
          statusCode: CODE_ERROR, msg: apiUtils.handleError(e));
    }
  }
}
