// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class FlacEncoderConfig {
  external factory FlacEncoderConfig({
    JSNumber blockSize,
    JSNumber compressLevel,
  });
}

extension FlacEncoderConfigExtension on FlacEncoderConfig {
  external set blockSize(JSNumber value);
  external JSNumber get blockSize;
  external set compressLevel(JSNumber value);
  external JSNumber get compressLevel;
}
