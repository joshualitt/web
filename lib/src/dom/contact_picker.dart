// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef ContactProperty = JSString;

@JS('ContactAddress')
@staticInterop
class ContactAddress {}

extension ContactAddressExtension on ContactAddress {
  external JSObject toJSON();
  external JSString get city;
  external JSString get country;
  external JSString get dependentLocality;
  external JSString get organization;
  external JSString get phone;
  external JSString get postalCode;
  external JSString get recipient;
  external JSString get region;
  external JSString get sortingCode;
  external JSArray get addressLine;
}

@JS()
@staticInterop
@anonymous
class ContactInfo {
  external factory ContactInfo({
    JSArray address,
    JSArray email,
    JSArray icon,
    JSArray name,
    JSArray tel,
  });
}

extension ContactInfoExtension on ContactInfo {
  external set address(JSArray value);
  external JSArray get address;
  external set email(JSArray value);
  external JSArray get email;
  external set icon(JSArray value);
  external JSArray get icon;
  external set name(JSArray value);
  external JSArray get name;
  external set tel(JSArray value);
  external JSArray get tel;
}

@JS()
@staticInterop
@anonymous
class ContactsSelectOptions {
  external factory ContactsSelectOptions({JSBoolean multiple});
}

extension ContactsSelectOptionsExtension on ContactsSelectOptions {
  external set multiple(JSBoolean value);
  external JSBoolean get multiple;
}

@JS('ContactsManager')
@staticInterop
class ContactsManager {}

extension ContactsManagerExtension on ContactsManager {
  external JSPromise getProperties();
  external JSPromise select(
    JSArray properties, [
    ContactsSelectOptions options,
  ]);
}
