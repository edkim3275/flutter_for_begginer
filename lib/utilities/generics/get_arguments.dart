import 'package:flutter/material.dart' show BuildContext, ModalRoute;

extension GetArgument on BuildContext {
  T? getArgument<T>() {
    final modalRoute = ModalRoute.of(this);
    // if we can't get the modalRoute then we can't extract any argument from it.
    if (modalRoute != null) {
      final args = modalRoute.settings.arguments;
      // args is now na object as it was on the call site. we need to guard that.
      if (args != null && args is T) {
        return args as T;
      }
    }
    return null;
  }
}
