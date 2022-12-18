import 'dart:convert';

import 'package:topfnf/models/services_model.dart';

class ServicesResponse {
  ServicesResponse({
    this.success = false,
    this.message,
    this.statusCode,
    this.servicesList,
  });

  bool success = false;
  int? statusCode;
  String? message;
  List<ServicesModel>? servicesList;

  bool get isSuccess => success;

  ServicesResponse.withError({
    this.statusCode,
    this.success = false,
    String? msg,
  }) : message = msg;

  factory ServicesResponse.fromRawJson(String str) =>
      ServicesResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServicesResponse.fromJson(Map<String, dynamic> json) =>
      ServicesResponse(
        statusCode: json["statusCode"],
        message: json["message"],
        success: json["success"],
        servicesList: json["product_list"] == null
            ? null
            : List<ServicesModel>.from(
                json["product_list"].map(
                  (x) => ServicesModel.fromJson(x),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "statusCode": statusCode,
        "success": success,
        "product_list": servicesList == null
            ? null
            : List<dynamic>.from(
                servicesList!.map(
                  (x) => x.toJson(),
                ),
              ),
      };
}
