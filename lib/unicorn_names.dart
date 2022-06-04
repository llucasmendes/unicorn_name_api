import 'dart:math';

class RandomUnicornName {
  /// [List<String>] unicornnames is a list
  final List<String> unicornNames = [
    'Rainbow',
    'Rainbow Dash',
    'Bloomy',
    'Darling',
    'Sunshine',
    'Sunny',
    'Lion',
  ];

  late final _random = Random();

  /// [String, String] get all the names by random and id
  List<String> getName() {
    final index = _random.nextInt(unicornNames.length);
    return [unicornNames[index], index.toString()];
  }
}
