import 'package:dartz/dartz.dart';
import 'package:expense_tracking/core/domain/usecases/usecase.dart';
import 'package:expense_tracking/core/failure/failure.dart';
import 'package:expense_tracking/features/expense/domain/repositories/expense_repository.dart';

class EraseEntriesUsecase implements NoArgsUsecaseOfFuture<Unit> {
  final IExpenseRepository _expenseRepository;

  EraseEntriesUsecase(this._expenseRepository);

  @override
  Future<Either<Failure, Unit>> call() {
    // TODO: implement call
    return _expenseRepository.eraseEntries();
  }
}
