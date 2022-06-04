import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:unicorn_name_api/unicorn_names.dart';
import '../../../routes/unicorn/index.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

class _MockRandomName extends Mock implements RandomUnicornName {}

void main() {
  group('unicorn name', () {
    test('index', () async {
      final context = _MockRequestContext();
      final random = _MockRandomName();
      when(() => context.read<RandomUnicornName>()).thenReturn(random);
      when(random.getName).thenReturn(['Unicorn Name', '0']);
      final response = await route.onRequest(context);
      expect(response.statusCode, equals(HttpStatus.ok));
      expect(
        response.body(),
        completion(
          equals('{"id":"0","name":"Unicorn Name"}'),
        ),
      );
    });
  });
}
