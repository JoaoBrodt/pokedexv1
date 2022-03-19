import 'package:dartz/dartz.dart';
import 'package:demeter_app/core/services/http_service.dart';
import 'package:demeter_app/features/refund/domain/entities/refund_model.dart';
import 'package:demeter_app/features/refund/domain/exception/refund_exception.dart';

abstract class SearchRefundRepository {
  Future<Either<RefundException, List<RefundEntity>>> call(String type);
}
