// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String message;
  final int statusCode;
  final bool success;
  const ErrorMessageModel({
    required this.message,
    required this.statusCode,
    required this.success,
  });
    factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      statusCode: json["statusCode"],
      message: json["message"],
      success: json["sucess"],
    );
  }
  @override
  List<Object?> get props =>[message , statusCode , success];

}
