import 'package:dartz/dartz.dart';
import 'package:persons_app/core/error/exceptions.dart';
import 'package:persons_app/core/error/failure.dart';
import 'package:persons_app/person/data/datasource/person_remote_data_source.dart';
import 'package:persons_app/person/domain/entities/person_entity.dart';
import 'package:persons_app/person/domain/repository/main_person_repository.dart';
import 'package:persons_app/person/domain/use_cases/add_new_person.dart';
import 'package:persons_app/person/domain/use_cases/delete_person.dart';
import 'package:persons_app/person/domain/use_cases/get_person_by_id.dart';
import 'package:persons_app/person/domain/use_cases/update_person.dart';

class PersonRepository extends MainPersonRepository {
  BasePersonRemoteDataSource basePersonRemoteDataSource;
  PersonRepository(this.basePersonRemoteDataSource);
  @override
  Future<Either<Failure, Person>> addNewPerson(
      {required PersonRequestBody personBody}) {
    // TODO: implement addNewPerson
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> deletePerson(
      {required DeletePersonParams deletePersonParams}) {
    // TODO: implement deletePerson
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Person>> getPersonById(
      {required GetPersonByIdParams getPersonByIdParams}) {
    // TODO: implement getPersonById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Person>>> getPersons() async {
    final result = await basePersonRemoteDataSource.getPersons();

    try {
      return Right(result);
    } on ServerException catch (f) {
      return Left(ServerFailure(f.errorMessageModel.message));
    }
  }

  @override
  Future<Either<Failure, Person>> updatePerson(
      {required UpdatePersonRequestBody updatePersonRequestBody}) {
    // TODO: implement updatePerson
    throw UnimplementedError();
  }
}
