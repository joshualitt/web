// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef LaunchConsumer = JSFunction;

@JS('LaunchParams')
@staticInterop
class LaunchParams {}

extension LaunchParamsExtension on LaunchParams {
  external JSString? get targetURL;
  external JSArray get files;
}

@JS('LaunchQueue')
@staticInterop
class LaunchQueue {}

extension LaunchQueueExtension on LaunchQueue {
  external JSVoid setConsumer(LaunchConsumer consumer);
}
