import 'package:dart_frog/dart_frog.dart';
import 'package:unicorn_name_api/unicorn_names.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(
        provider<RandomUnicornName>(
          (context) => RandomUnicornName(),
        ),
      );
}
