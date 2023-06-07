import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

final appLogger = Logger();

class AppLogger {
  factory AppLogger() => _instance;

  AppLogger._();

  static final logger = Logger();
  static final loggerCustom = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      lineLength: 20,
    ),
  );

  static final _instance = AppLogger._();

  static void log(dynamic message) {
    if (message is DioError) {
      _logDio(message);
    } else {
      logger.e(message);
    }
  }

  void call(dynamic message) => log(message);

  static void _logDio(DioError error) {
    ///TODO чекни, насколько тут нужны "=" возле output! +=
    String? output = error.message;
    if (error.response?.statusMessage != null) {
      output! + ' - ${error.response?.statusMessage}';
    }
    output! + '\n${error.response?.data.toString().firstLines}';

    if (error.requestOptions.method == 'get') {
      output += '\n${error.response?.realUri}';
    } else {
      output += '\n${error.requestOptions.uri.host.toString()}';
      output += '\n${error.requestOptions.path}\nParameters:\n${error.requestOptions.data}';
    }
    output += '\n\n********** Headers:';
    for (var item in error.requestOptions.headers.entries) {
      output + '\n${item.key}: ${item.value}';
    }
    output += '\n**********';
    loggerCustom.wtf(output);
  }
}

extension _StringUtils on String {
  String get firstLines {
    final amount = length > 350 ? 350 : length;
    return substring(0, amount);
  }
}
