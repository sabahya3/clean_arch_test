import 'dart:convert';

import 'package:persons_app/core/error/exceptions.dart';
import 'package:persons_app/core/network/error_message_model.dart';
import 'package:persons_app/core/network/api_constants.dart';

import '../models/person_model.dart';

import 'package:http/http.dart' as http;

abstract class BasePersonRemoteDataSource {
  Future<List<PersonModel>> getPersons();
}

class PersonsHttpRemoteDataSource extends BasePersonRemoteDataSource {
  @override
  Future<List<PersonModel>> getPersons() async {
    final result = await http.get(Uri.parse(ApiConstants.getAllPersonsPath()));
    if (result.statusCode == 200) {
      // print(result.body);
      return List.from(jsonDecode(result.body))
          .map((e) => PersonModel.fromJson(e))
          .toList();
    } else {
      throw ServerException(
          errorMessageModel:
              ErrorMessageModel.fromJson(jsonDecode(result.body)));
    }
  }
}
