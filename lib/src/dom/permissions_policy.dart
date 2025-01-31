// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'reporting.dart';

@JS('PermissionsPolicy')
@staticInterop
class PermissionsPolicy {}

extension PermissionsPolicyExtension on PermissionsPolicy {
  external JSBoolean allowsFeature(
    JSString feature, [
    JSString origin,
  ]);
  external JSArray features();
  external JSArray allowedFeatures();
  external JSArray getAllowlistForFeature(JSString feature);
}

@JS('PermissionsPolicyViolationReportBody')
@staticInterop
class PermissionsPolicyViolationReportBody implements ReportBody {}

extension PermissionsPolicyViolationReportBodyExtension
    on PermissionsPolicyViolationReportBody {
  external JSString get featureId;
  external JSString? get sourceFile;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
  external JSString get disposition;
}
