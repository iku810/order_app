import 'package:flutter_test/flutter_test.dart';
import 'package:order_app/shared/table/domain/table.dart';

void main() {
  group('Table.compareTo', () {
    test('両方sortNoがnullの場合は0を返す', () {
      const a = Table(id: '1', name: 'A');
      const b = Table(id: '2', name: 'B');
      expect(a.compareTo(b), 0);
    });

    test('自身のsortNoがnullの場合は後ろに並ぶ（1を返す）', () {
      const a = Table(id: '1', name: 'A');
      const b = Table(id: '2', name: 'B', sortNo: 1);
      expect(a.compareTo(b), 1);
    });

    test('相手のsortNoがnullの場合は前に並ぶ（-1を返す）', () {
      const a = Table(id: '1', name: 'A', sortNo: 1);
      const b = Table(id: '2', name: 'B');
      expect(a.compareTo(b), -1);
    });

    test('sortNoが小さい方が前に並ぶ', () {
      const a = Table(id: '1', name: 'A', sortNo: 1);
      const b = Table(id: '2', name: 'B', sortNo: 2);
      expect(a.compareTo(b), lessThan(0));
    });

    test('sortNoが同じ場合は0を返す', () {
      const a = Table(id: '1', name: 'A', sortNo: 1);
      const b = Table(id: '2', name: 'B', sortNo: 1);
      expect(a.compareTo(b), 0);
    });
  });
}
