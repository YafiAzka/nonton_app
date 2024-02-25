import 'package:nonton_app/domain/entities/result.dart';
import 'package:nonton_app/domain/entities/transaction.dart';

abstract interface class TransactionRepository {
  Future<Result<Transaction>> createTransaction(
      {required Transaction transaction});
  Future<Result<Transaction>> getUserTransaction({required int uid});
}
