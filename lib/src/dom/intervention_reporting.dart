// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'reporting.dart';

@JS('InterventionReportBody')
@staticInterop
class InterventionReportBody implements ReportBody {}

extension InterventionReportBodyExtension on InterventionReportBody {
  external JSObject toJSON();
  external JSString get id;
  external JSString get message;
  external JSString? get sourceFile;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
}
