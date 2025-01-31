// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'cssom.dart';

@JS('CSSScopeRule')
@staticInterop
class CSSScopeRule implements CSSGroupingRule {}

extension CSSScopeRuleExtension on CSSScopeRule {
  external JSString? get start;
  external JSString? get end;
}
