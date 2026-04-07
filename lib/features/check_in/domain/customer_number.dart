import 'check_in_exceptions.dart';

class CustomerNumber {
  const CustomerNumber._(this.value);

  factory CustomerNumber.of(int value) {
    if (value < min || value > max) {
      throw InvalidCustomerNumberException(value);
    }
    return CustomerNumber._(value);
  }

  static const int min = 1;
  static const int max = 9;
  static const CustomerNumber initial = CustomerNumber._(2);

  final int value;

  bool get canIncrement => value < max;
  bool get canDecrement => value > min;

  CustomerNumber increment() => CustomerNumber._(value + 1);
  CustomerNumber decrement() => CustomerNumber._(value - 1);
}
