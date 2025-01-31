// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'web_animations.dart';

@JS('CSSTransition')
@staticInterop
class CSSTransition implements Animation {}

extension CSSTransitionExtension on CSSTransition {
  external JSString get transitionProperty;
}
