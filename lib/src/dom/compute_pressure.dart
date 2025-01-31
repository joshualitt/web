// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PressureUpdateCallback = JSFunction;
typedef PressureSource = JSString;
typedef PressureState = JSString;

@JS('PressureObserver')
@staticInterop
class PressureObserver {
  external factory PressureObserver(
    PressureUpdateCallback callback, [
    PressureObserverOptions options,
  ]);

  external static JSArray get supportedSources;
}

extension PressureObserverExtension on PressureObserver {
  external JSPromise observe(PressureSource source);
  external JSVoid unobserve(PressureSource source);
  external JSVoid disconnect();
  external JSArray takeRecords();
}

@JS('PressureRecord')
@staticInterop
class PressureRecord {}

extension PressureRecordExtension on PressureRecord {
  external JSObject toJSON();
  external PressureSource get source;
  external PressureState get state;
  external DOMHighResTimeStamp get time;
}

@JS()
@staticInterop
@anonymous
class PressureObserverOptions {
  external factory PressureObserverOptions({JSNumber sampleRate});
}

extension PressureObserverOptionsExtension on PressureObserverOptions {
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
}
