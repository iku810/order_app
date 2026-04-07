class TableUseException implements Exception {
  TableUseException();
}

class NotFoundTableException extends TableUseException {
  NotFoundTableException();
}

class NotSingleTableException extends TableUseException {
  NotSingleTableException();
}

class NotMultipleTablesException extends TableUseException {
  NotMultipleTablesException();
}

class AlreadyClosedTableUseException extends TableUseException {
  AlreadyClosedTableUseException();
}

class DuplicateTableException extends TableUseException {
  DuplicateTableException({required this.tableId});
  final String tableId;
}
