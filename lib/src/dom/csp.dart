// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'reporting.dart';

typedef SecurityPolicyViolationEventDisposition = JSString;

@JS('CSPViolationReportBody')
@staticInterop
class CSPViolationReportBody implements ReportBody {}

extension CSPViolationReportBodyExtension on CSPViolationReportBody {
  external JSObject toJSON();
  external JSString get documentURL;
  external JSString? get referrer;
  external JSString? get blockedURL;
  external JSString get effectiveDirective;
  external JSString get originalPolicy;
  external JSString? get sourceFile;
  external JSString? get sample;
  external SecurityPolicyViolationEventDisposition get disposition;
  external JSNumber get statusCode;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
}

@JS('SecurityPolicyViolationEvent')
@staticInterop
class SecurityPolicyViolationEvent implements Event {
  external factory SecurityPolicyViolationEvent(
    JSString type, [
    SecurityPolicyViolationEventInit eventInitDict,
  ]);
}

extension SecurityPolicyViolationEventExtension
    on SecurityPolicyViolationEvent {
  external JSString get documentURI;
  external JSString get referrer;
  external JSString get blockedURI;
  external JSString get effectiveDirective;
  external JSString get violatedDirective;
  external JSString get originalPolicy;
  external JSString get sourceFile;
  external JSString get sample;
  external SecurityPolicyViolationEventDisposition get disposition;
  external JSNumber get statusCode;
  external JSNumber get lineNumber;
  external JSNumber get columnNumber;
}

@JS()
@staticInterop
@anonymous
class SecurityPolicyViolationEventInit implements EventInit {
  external factory SecurityPolicyViolationEventInit({
    required JSString documentURI,
    JSString referrer,
    JSString blockedURI,
    required JSString violatedDirective,
    required JSString effectiveDirective,
    required JSString originalPolicy,
    JSString sourceFile,
    JSString sample,
    required SecurityPolicyViolationEventDisposition disposition,
    required JSNumber statusCode,
    JSNumber lineNumber,
    JSNumber columnNumber,
  });
}

extension SecurityPolicyViolationEventInitExtension
    on SecurityPolicyViolationEventInit {
  external set documentURI(JSString value);
  external JSString get documentURI;
  external set referrer(JSString value);
  external JSString get referrer;
  external set blockedURI(JSString value);
  external JSString get blockedURI;
  external set violatedDirective(JSString value);
  external JSString get violatedDirective;
  external set effectiveDirective(JSString value);
  external JSString get effectiveDirective;
  external set originalPolicy(JSString value);
  external JSString get originalPolicy;
  external set sourceFile(JSString value);
  external JSString get sourceFile;
  external set sample(JSString value);
  external JSString get sample;
  external set disposition(SecurityPolicyViolationEventDisposition value);
  external SecurityPolicyViolationEventDisposition get disposition;
  external set statusCode(JSNumber value);
  external JSNumber get statusCode;
  external set lineNumber(JSNumber value);
  external JSNumber get lineNumber;
  external set columnNumber(JSNumber value);
  external JSNumber get columnNumber;
}
