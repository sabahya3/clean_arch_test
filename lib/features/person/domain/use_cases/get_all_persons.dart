import 'package:dartz/dartz.dart';
import 'package:persons_app/core/error/failure.dart';
import 'package:persons_app/core/usecase/base_usecase.dart';
import 'package:persons_app/features/person/domain/entities/person_entity.dart';

import '../repository/main_person_repository.dart';

class GetAllPersons extends BaseUseCase<List<Person>, NoParams, NoBody> {
  final MainPersonRepository basePersonRepository;
  GetAllPersons(this.basePersonRepository);
  @override
  Future<Either<Failure, List<Person>>> call(
      {required NoParams parameters, required NoBody body}) async {
    return await basePersonRepository.getPersons();
  }
}

