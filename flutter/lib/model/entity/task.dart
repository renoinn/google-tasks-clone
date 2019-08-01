import 'package:flutter/foundation.dart';

import 'entity.dart';

@immutable
class Task {
  const Task({
    @required this.title,
    @required this.details,
    @required this.due,
  });

  const Task.empty()
      : this(
          title: null,
          details: null,
          due: null,
        );

  final String title;
  final String details;
  final Due due;

  Task copyWith({
    String title,
    String details,
    Due due,
    bool clearDue = false,
  }) {
    return Task(
      title: title ?? this.title,
      details: details ?? this.details,
      due: clearDue ? null : due ?? this.due,
    );
  }
}
