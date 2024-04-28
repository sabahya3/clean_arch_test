import 'package:dartz/dartz.dart';
import 'package:persons_app/core/error/failure.dart';
import 'package:persons_app/core/usecase/base_usecase.dart';
import 'package:persons_app/person/domain/entities/person_entity.dart';

import '../repository/main_person_repository.dart';

class GetPersonById extends BaseUseCase<Person, GetPersonByIdParams, NoBody> {
  final MainPersonRepository basePersonRepository;
  GetPersonById(this.basePersonRepository);
  @override
  Future<Either<Failure, Person>> call(
      {required GetPersonByIdParams parameters, required NoBody body}) async {
    return await basePersonRepository.getPersonById(
        getPersonByIdParams: parameters);
  }
}

class GetPersonByIdParams {
  int personId;
  GetPersonByIdParams(
    this.personId,
  );
}
