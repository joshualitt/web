// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('FontMetrics')
@staticInterop
class FontMetrics {}

extension FontMetricsExtension on FontMetrics {
  external JSNumber get width;
  external JSArray get advances;
  external JSNumber get boundingBoxLeft;
  external JSNumber get boundingBoxRight;
  external JSNumber get height;
  external JSNumber get emHeightAscent;
  external JSNumber get emHeightDescent;
  external JSNumber get boundingBoxAscent;
  external JSNumber get boundingBoxDescent;
  external JSNumber get fontBoundingBoxAscent;
  external JSNumber get fontBoundingBoxDescent;
  external Baseline get dominantBaseline;
  external JSArray get baselines;
  external JSArray get fonts;
}

@JS('Baseline')
@staticInterop
class Baseline {}

extension BaselineExtension on Baseline {
  external JSString get name;
  external JSNumber get value;
}

@JS('Font')
@staticInterop
class Font {}

extension FontExtension on Font {
  external JSString get name;
  external JSNumber get glyphsRendered;
}
