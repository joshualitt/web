// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';

typedef AppBannerPromptOutcome = JSString;

@JS('BeforeInstallPromptEvent')
@staticInterop
class BeforeInstallPromptEvent implements Event {
  external factory BeforeInstallPromptEvent(
    JSString type, [
    EventInit eventInitDict,
  ]);
}

extension BeforeInstallPromptEventExtension on BeforeInstallPromptEvent {
  external JSPromise prompt();
}

@JS()
@staticInterop
@anonymous
class PromptResponseObject {
  external factory PromptResponseObject({AppBannerPromptOutcome userChoice});
}

extension PromptResponseObjectExtension on PromptResponseObject {
  external set userChoice(AppBannerPromptOutcome value);
  external AppBannerPromptOutcome get userChoice;
}
