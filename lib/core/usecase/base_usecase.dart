import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:persons_app/core/error/failure.dart';

abstract class BaseUseCase<T,Parameters , Body>{
 Future<Either<Failure,T>> call({ required Parameters parameters ,required Body body} );
}

class NoBody extends Equatable{
  @override

  List<Object?> get props =>[];
}

class NoParams extends Equatable{
  @override

  List<Object?> get props =>[];
}



