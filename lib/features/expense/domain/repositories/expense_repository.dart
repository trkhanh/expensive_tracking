import 'package:dartz/dartz.dart';
import 'package:expense_tracking/core/failure/failure.dart';
import 'package:expense_tracking/core/domain/entities/expense.dart';

abstract class IExpenseRepository {
  Stream<Either<Failure, Map<String, List<ExpenseEntity>>>>
  watchMonthlyEntries();
  Future<Either<Failure, Unit>> createExpenseEntry(
      ExpenseEntity expense,
      );
  Future<Either<Failure, Unit>> eraseEntries();
}