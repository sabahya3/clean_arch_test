import 'package:dartz/dartz.dart';
import 'package:persons_app/core/error/failure.dart';
import 'package:persons_app/core/usecase/base_usecase.dart';

import '../repository/main_person_repository.dart';

class DeletePerson extends BaseUseCase<bool, DeletePersonParams, NoBody> {
  final MainPersonRepository basePersonRepository;
  DeletePerson(this.basePersonRepository);
  @override
  Future<Either<Failure, bool>> call(
      {required DeletePersonParams parameters, required NoBody body}) async {
    return await basePersonRepository.deletePerson(
        deletePersonParams: parameters);
  }
}

class DeletePersonParams {
  int personId;
  DeletePersonParams(
    this.personId,
  );
}
