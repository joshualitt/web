// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('CustomStateSet')
@staticInterop
class CustomStateSet {}

extension CustomStateSetExtension on CustomStateSet {
  external JSVoid add(JSString value);
}
