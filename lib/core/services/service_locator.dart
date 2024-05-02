import 'package:get_it/get_it.dart';
import 'package:persons_app/features/person/domain/repository/main_person_repository.dart';

import '../../features/person/data/datasource/person_remote_data_source.dart';
import '../../features/person/data/repository/person_repository.dart';
import '../../features/person/domain/use_cases/get_all_persons.dart';

final sl = GetIt.instance;

class ServiceLocator{

  initialize(){
    sl.registerLazySingleton<BasePersonRemoteDataSource>(() => PersonsHttpRemoteDataSource());
    sl.registerLazySingleton<MainPersonRepository>(() => PersonRepository(sl()));
    sl.registerLazySingleton<GetAllPersons>(() => GetAllPersons(sl()));

  }
}