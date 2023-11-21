
import 'package:flutter/material.dart';

import '../../domain/repositories/usecases/erase_entries_usecase.dart';
import '../../domain/repositories/usecases/get_expenses_usecase.dart';

class ExpenseProvider with ChangeNotifier {
  ExpenseProvider({
    required GetExpensesUsecase getExpensesUsecase,
    required CreateExpenseEntryUsecase createExpenseEntryUsecase,
    required EraseEntriesUsecase eraseEntriesUsecase,
  }) :  _getExpensesUsecase = getExpensesUsecase,
        _createExpenseEntryUsecase = createExpenseEntryUsecase,
        _eraseEntriesUsecase = eraseEntriesUsecase;

  final GetExpensesUsecase _getExpensesUsecase;
  final CreateExpenseEntryUsecase _createExpenseEntryUsecase;
  final EraseEntriesUsecase _eraseEntriesUsecase;

  final DateFormatter dateFmt = DateFormatter.instance;
  AsyncValue<Map<String, List<ExpenseEntity>>> _entries = AsyncValue.loading();
  AsyncValue<Map<String, List<ExpenseEntity>>> get entries => _entries;



}

class CreateExpenseEntryUsecase {
}
