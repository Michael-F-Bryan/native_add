import 'dart:ffi';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_add/bridge_generated.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late final dylib = Platform.isAndroid
      ? DynamicLibrary.open('libnative_add.so')
      : DynamicLibrary.process();

  late final api = NativeAdd(dylib);

  test('2 + 2 is 4', () async {
    final twoPlusTwo = await api.add(left: 2, right: 2);
    expect(twoPlusTwo, '2 + 2 = 42');
  });
}
