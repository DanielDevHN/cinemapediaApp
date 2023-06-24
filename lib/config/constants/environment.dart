import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String movieDbkey = dotenv.env['MOVIEDB_KEY'] ?? 'No api key found';
}
