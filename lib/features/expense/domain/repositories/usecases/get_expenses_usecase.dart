import 'package:dartz/dartz.dart';
import 'package:expense_tracking/core/domain/entities/expense.dart';
import 'package:expense_tracking/core/domain/usecases/usecase.dart';
import 'package:expense_tracking/core/failure/failure.dart';
import 'package:expense_tracking/features/expense/domain/repositories/expense_repository.dart';

class GetExpensesUsecase
    implements NoArgsUsecaseOfStream<String, List<ExpenseEntity>> {
  final IExpenseRepository _expenseRepository;

  GetExpensesUsecase(this._expenseRepository);

  @override
  Stream<Either<Failure, Map<String, List<ExpenseEntity>>>> call() {
    return _expenseRepository.watchMonthlyEntries();
  }
}
