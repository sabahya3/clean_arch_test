import 'package:dartz/dartz.dart';
import 'package:persons_app/core/error/failure.dart';
import 'package:persons_app/person/domain/entities/person_entity.dart';

import '../use_cases/add_new_person.dart';
import '../use_cases/delete_person.dart';
import '../use_cases/get_person_by_id.dart';
import '../use_cases/update_person.dart';

abstract class MainPersonRepository{
  Future<Either<Failure , Person>>addNewPerson({ required PersonRequestBody personBody});
  Future<Either<Failure , Person>>getPersonById({required GetPersonByIdParams getPersonByIdParams});
  Future<Either<Failure , Person>>updatePerson({required UpdatePersonRequestBody updatePersonRequestBody});
  Future<Either<Failure , List<Person>>>getPersons();
  Future<Either<Failure , bool>>deletePerson({required DeletePersonParams deletePersonParams });
}