// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(approaches) => "${approaches}";

  static String m1(count) =>
      "${Intl.plural(count, one: 'РАЗ', two: 'РАЗА', other: 'Отхер')}";

  static String m2(count) => "${count}\nРАЗ";

  static String m3(time) => "${time}";

  static String m4(time) => "${time}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "approachLabel": MessageLookupByLibrary.simpleMessage("ПОДХОДА"),
        "approachesPart1Label":
            MessageLookupByLibrary.simpleMessage("В НЕСКОЛЬКО ПОДХОДОВ"),
        "countApproachesLabel": m0,
        "countLabel": m1,
        "countLabelWithParameter": m2,
        "fixedTimeLabel": MessageLookupByLibrary.simpleMessage("10:00"),
        "homeFixedTimeModeDescription":
            MessageLookupByLibrary.simpleMessage("МИНУТ"),
        "homeFixedTimeModeLabel":
            MessageLookupByLibrary.simpleMessage("ХОЧУ ОТЖИМАТЬСЯ"),
        "homeFixedTimeModeTime": m3,
        "pushUpFixedCountLabel": MessageLookupByLibrary.simpleMessage("10"),
        "pushUpFixedTimedLabel":
            MessageLookupByLibrary.simpleMessage("ОТЖИМАТЬСЯ"),
        "restLabel": MessageLookupByLibrary.simpleMessage("ОТДЫХ"),
        "staminaLabel": MessageLookupByLibrary.simpleMessage("НА ВЫНОСЛИВОСТь"),
        "statisticsLabel": MessageLookupByLibrary.simpleMessage("СТАТИСТИКА"),
        "timeBetweenApproachesLabel": m4,
        "trainingProgramLabel":
            MessageLookupByLibrary.simpleMessage("Программа Тренировок"),
        "wantLabel": MessageLookupByLibrary.simpleMessage("ХОЧУ")
      };
}
