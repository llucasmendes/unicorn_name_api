import 'package:dart_frog/dart_frog.dart';
import 'package:unicorn_name_api/unicorn_names.dart';

Future<Response> onRequest(RequestContext context) async {
  // final request = context.request;
  final unicornName = context.read<RandomUnicornName>().getName();

  return Response.json(
    body: {
      'id': unicornName[1],
      'name': unicornName[0],
    },
  );
}
