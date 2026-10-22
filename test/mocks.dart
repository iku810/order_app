import 'package:mockito/annotations.dart';
import 'package:order_app/features/check_in/domain/repository/check_in_repository.dart';
import 'package:order_app/features/order/domain/repository/menu_repository.dart';
import 'package:order_app/features/order/domain/repository/order_repository.dart';
import 'package:order_app/features/order_history/domain/repository/order_history_repository.dart';
import 'package:order_app/features/payment/domain/repository/payment_repository.dart';
import 'package:order_app/features/store/domain/repository/store_repository.dart';
import 'package:order_app/infrastructure/network/api_client.dart';
import 'package:order_app/infrastructure/network/auth_api_client.dart';
import 'package:order_app/infrastructure/storage/secure_storage.dart';
import 'package:order_app/infrastructure/storage/shared_preferences.dart';
import 'package:order_app/shared/auth/domain/repository/auth_repository.dart';
import 'package:order_app/shared/table/domain/repository/table_repository.dart';
import 'package:order_app/shared/table/domain/repository/table_use_repository.dart';

@GenerateMocks([
  AuthRepository,
  CheckInRepository,
  MenuRepository,
  OrderRepository,
  OrderHistoryRepository,
  PaymentRepository,
  StoreRepository,
  TableRepository,
  TableUseRepository,
  ApiClient,
  AuthApiClient,
  SecureStorage,
  SharedPreferencesStorage,
])
void main() {}
