import 'package:dartz/dartz.dart';
import 'package:persons_app/core/error/failure.dart';
import 'package:persons_app/core/usecase/base_usecase.dart';
import 'package:persons_app/features/person/domain/entities/person_entity.dart';

import '../repository/main_person_repository.dart';

class AddNewPerson extends BaseUseCase<Person, NoParams, UpdatePersonRequestBody> {
  final MainPersonRepository basePersonRepository;
  AddNewPerson(this.basePersonRepository);
  @override
  Future<Either<Failure, Person>> call(
      {required NoParams parameters, required UpdatePersonRequestBody body}) async {
    return await basePersonRepository.updatePerson(updatePersonRequestBody: body);
  }
}

class UpdatePersonRequestBody{
 int? personId;
    String? name;
    DateTime? birthDate;
    int? age;
    int? nationalityId;

    UpdatePersonRequestBody({
        this.personId,
        this.name,
        this.birthDate,
        this.age,
        this.nationalityId,
    });}