import 'package:dartz/dartz.dart';
import 'package:persons_app/core/error/failure.dart';
import 'package:persons_app/core/usecase/base_usecase.dart';
import 'package:persons_app/person/domain/entities/person_entity.dart';

import '../repository/main_person_repository.dart';

class AddNewPerson extends BaseUseCase<Person, NoParams, PersonRequestBody> {
  final MainPersonRepository basePersonRepository;
  AddNewPerson(this.basePersonRepository);
  @override
  Future<Either<Failure, Person>> call(
      {required NoParams parameters, required PersonRequestBody body}) async {
    return await basePersonRepository.addNewPerson(personBody: body);
  }
}

class PersonRequestBody{
 int? personId;
    String? name;
    DateTime? birthDate;
    int? age;
    int? nationalityId;

    PersonRequestBody({
        this.personId,
        this.name,
        this.birthDate,
        this.age,
        this.nationalityId,
    });}