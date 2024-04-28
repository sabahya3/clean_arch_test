import 'package:persons_app/core/network/error_message_model.dart';

class ServerException implements Exception{
  ErrorMessageModel errorMessageModel;
  ServerException({required this.errorMessageModel});
}