import 'package:dart_frog/dart_frog.dart';
import 'package:unicorn_name_api/unicorn_names.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final unicornNames = context.read<RandomUnicornName>().unicornNames;
  final unicornName = unicornNames[int.parse(id)];
  return Response.json(
    body: {
      'id': int.parse(id),
      'name': unicornName,
    },
  );
}
