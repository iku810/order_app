class CheckInException implements Exception {
  CheckInException();
}

class InvalidCustomerNumberException extends CheckInException {
  InvalidCustomerNumberException(this.value);

  final int value;
}
