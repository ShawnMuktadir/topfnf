// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class ServicesModel extends Equatable {
  int? id;
  String? serviceName;
  String? description;
  String? hourlyRate;
  String? location;
  String? status;
  String? userId;
  String? createdAt;
  String? updatedAt;

  ServicesModel(
      {this.id,
      this.serviceName,
      this.description,
      this.hourlyRate,
      this.location,
      this.status,
      this.userId,
      this.createdAt,
      this.updatedAt});

  ServicesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
    description = json['description'];
    hourlyRate = json['hourly_rate'];
    location = json['location'];
    status = json['status'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['service_name'] = serviceName;
    data['description'] = description;
    data['hourly_rate'] = hourlyRate;
    data['location'] = location;
    data['status'] = status;
    data['user_id'] = userId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }

  @override
  List<Object?> get props => [serviceName];
}
