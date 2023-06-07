import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

extension EventHandler on Bloc {
  ///Allows for bloc to handle an event awaiting for any of the [awaitForStates] to occur and returning the state
  Future handleEvent(
    event, {
    required List awaitForStates,
    bool Function(dynamic state)? validator,
  }) {
    final _completer = Completer();
    late StreamSubscription _subsc;
    _subsc = stream.listen(
      (_state) {
        if (awaitForStates.contains(_state.runtimeType)) {
          var isValidated = validator?.call(_state) ?? true;
          if (awaitForStates.isEmpty || isValidated) {
            _subsc.cancel();
            _completer.complete(_state);
          }
        }
      },
    );
    add(event);
    return _completer.future;
  }
}
