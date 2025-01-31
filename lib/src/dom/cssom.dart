// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'css_highlight_api.dart';
import 'css_parser_api.dart';
import 'css_properties_values_api.dart';
import 'css_typed_om.dart';
import 'html.dart';

@JS('MediaList')
@staticInterop
class MediaList {}

extension MediaListExtension on MediaList {
  external JSString? item(JSNumber index);
  external JSVoid appendMedium(JSString medium);
  external JSVoid deleteMedium(JSString medium);
  external set mediaText(JSString value);
  external JSString get mediaText;
  external JSNumber get length;
}

@JS('StyleSheet')
@staticInterop
class StyleSheet {}

extension StyleSheetExtension on StyleSheet {
  external JSString get type;
  external JSString? get href;
  external JSAny? get ownerNode;
  external CSSStyleSheet? get parentStyleSheet;
  external JSString? get title;
  external MediaList get media;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
}

@JS('CSSStyleSheet')
@staticInterop
class CSSStyleSheet implements StyleSheet {
  external factory CSSStyleSheet([CSSStyleSheetInit options]);
}

extension CSSStyleSheetExtension on CSSStyleSheet {
  external JSNumber insertRule(
    JSString rule, [
    JSNumber index,
  ]);
  external JSVoid deleteRule(JSNumber index);
  external JSPromise replace(JSString text);
  external JSVoid replaceSync(JSString text);
  external JSNumber addRule([
    JSString selector,
    JSString style,
    JSNumber index,
  ]);
  external JSVoid removeRule([JSNumber index]);
  external CSSRule? get ownerRule;
  external CSSRuleList get cssRules;
  external CSSRuleList get rules;
}

@JS()
@staticInterop
@anonymous
class CSSStyleSheetInit {
  external factory CSSStyleSheetInit({
    JSString baseURL,
    JSAny media,
    JSBoolean disabled,
  });
}

extension CSSStyleSheetInitExtension on CSSStyleSheetInit {
  external set baseURL(JSString value);
  external JSString get baseURL;
  external set media(JSAny value);
  external JSAny get media;
  external set disabled(JSBoolean value);
  external JSBoolean get disabled;
}

@JS('StyleSheetList')
@staticInterop
class StyleSheetList {}

extension StyleSheetListExtension on StyleSheetList {
  external CSSStyleSheet? item(JSNumber index);
  external JSNumber get length;
}

@JS('LinkStyle')
@staticInterop
class LinkStyle {}

extension LinkStyleExtension on LinkStyle {
  external CSSStyleSheet? get sheet;
}

@JS('CSSRuleList')
@staticInterop
class CSSRuleList {}

extension CSSRuleListExtension on CSSRuleList {
  external CSSRule? item(JSNumber index);
  external JSNumber get length;
}

@JS('CSSRule')
@staticInterop
class CSSRule {
  external static JSNumber get KEYFRAMES_RULE;
  external static JSNumber get KEYFRAME_RULE;
  external static JSNumber get SUPPORTS_RULE;
  external static JSNumber get COUNTER_STYLE_RULE;
  external static JSNumber get FONT_FEATURE_VALUES_RULE;
  external static JSNumber get STYLE_RULE;
  external static JSNumber get CHARSET_RULE;
  external static JSNumber get IMPORT_RULE;
  external static JSNumber get MEDIA_RULE;
  external static JSNumber get FONT_FACE_RULE;
  external static JSNumber get PAGE_RULE;
  external static JSNumber get MARGIN_RULE;
  external static JSNumber get NAMESPACE_RULE;
}

extension CSSRuleExtension on CSSRule {
  external set cssText(JSString value);
  external JSString get cssText;
  external CSSRule? get parentRule;
  external CSSStyleSheet? get parentStyleSheet;
  external JSNumber get type;
}

@JS('CSSStyleRule')
@staticInterop
class CSSStyleRule implements CSSRule {}

extension CSSStyleRuleExtension on CSSStyleRule {
  external JSNumber insertRule(
    JSString rule, [
    JSNumber index,
  ]);
  external JSVoid deleteRule(JSNumber index);
  external CSSRuleList get cssRules;
  external StylePropertyMap get styleMap;
  external set selectorText(JSString value);
  external JSString get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSImportRule')
@staticInterop
class CSSImportRule implements CSSRule {}

extension CSSImportRuleExtension on CSSImportRule {
  external JSString get href;
  external MediaList get media;
  external CSSStyleSheet? get styleSheet;
  external JSString? get layerName;
  external JSString? get supportsText;
}

@JS('CSSGroupingRule')
@staticInterop
class CSSGroupingRule implements CSSRule {}

extension CSSGroupingRuleExtension on CSSGroupingRule {
  external JSNumber insertRule(
    JSString rule, [
    JSNumber index,
  ]);
  external JSVoid deleteRule(JSNumber index);
  external CSSRuleList get cssRules;
}

@JS('CSSPageRule')
@staticInterop
class CSSPageRule implements CSSGroupingRule {}

extension CSSPageRuleExtension on CSSPageRule {
  external set selectorText(JSString value);
  external JSString get selectorText;
  external CSSStyleDeclaration get style;
}

@JS('CSSMarginRule')
@staticInterop
class CSSMarginRule implements CSSRule {}

extension CSSMarginRuleExtension on CSSMarginRule {
  external JSString get name;
  external CSSStyleDeclaration get style;
}

@JS('CSSNamespaceRule')
@staticInterop
class CSSNamespaceRule implements CSSRule {}

extension CSSNamespaceRuleExtension on CSSNamespaceRule {
  external JSString get namespaceURI;
  external JSString get prefix;
}

@JS('CSSStyleDeclaration')
@staticInterop
class CSSStyleDeclaration {}

extension CSSStyleDeclarationExtension on CSSStyleDeclaration {
  external JSString item(JSNumber index);
  external JSString getPropertyValue(JSString property);
  external JSString getPropertyPriority(JSString property);
  external JSVoid setProperty(
    JSString property,
    JSString value, [
    JSString priority,
  ]);
  external JSString removeProperty(JSString property);
  external set cssText(JSString value);
  external JSString get cssText;
  external JSNumber get length;
  external CSSRule? get parentRule;
  external set cssFloat(JSString value);
  external JSString get cssFloat;
}

@JS('ElementCSSInlineStyle')
@staticInterop
class ElementCSSInlineStyle {}

extension ElementCSSInlineStyleExtension on ElementCSSInlineStyle {
  external StylePropertyMap get attributeStyleMap;
  external CSSStyleDeclaration get style;
}

@JS()
external $CSS get CSS;

@JS('CSS')
@staticInterop
abstract class $CSS {}

extension $CSSExtension on $CSS {
  external JSBoolean supports(
    JSString conditionTextOrProperty, [
    JSString value,
  ]);
  external JSPromise parseStylesheet(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external JSPromise parseRuleList(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external JSPromise parseRule(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external JSPromise parseDeclarationList(
    CSSStringSource css, [
    CSSParserOptions options,
  ]);
  external CSSParserDeclaration parseDeclaration(
    JSString css, [
    CSSParserOptions options,
  ]);
  external CSSToken parseValue(JSString css);
  external JSArray parseValueList(JSString css);
  external JSArray parseCommaValueList(JSString css);
  external JSVoid registerProperty(PropertyDefinition definition);
  external CSSUnitValue number(JSNumber value);
  external CSSUnitValue percent(JSNumber value);
  external CSSUnitValue em(JSNumber value);
  external CSSUnitValue ex(JSNumber value);
  external CSSUnitValue ch(JSNumber value);
  external CSSUnitValue ic(JSNumber value);
  external CSSUnitValue rem(JSNumber value);
  external CSSUnitValue lh(JSNumber value);
  external CSSUnitValue rlh(JSNumber value);
  external CSSUnitValue vw(JSNumber value);
  external CSSUnitValue vh(JSNumber value);
  external CSSUnitValue vi(JSNumber value);
  external CSSUnitValue vb(JSNumber value);
  external CSSUnitValue vmin(JSNumber value);
  external CSSUnitValue vmax(JSNumber value);
  external CSSUnitValue svw(JSNumber value);
  external CSSUnitValue svh(JSNumber value);
  external CSSUnitValue svi(JSNumber value);
  external CSSUnitValue svb(JSNumber value);
  external CSSUnitValue svmin(JSNumber value);
  external CSSUnitValue svmax(JSNumber value);
  external CSSUnitValue lvw(JSNumber value);
  external CSSUnitValue lvh(JSNumber value);
  external CSSUnitValue lvi(JSNumber value);
  external CSSUnitValue lvb(JSNumber value);
  external CSSUnitValue lvmin(JSNumber value);
  external CSSUnitValue lvmax(JSNumber value);
  external CSSUnitValue dvw(JSNumber value);
  external CSSUnitValue dvh(JSNumber value);
  external CSSUnitValue dvi(JSNumber value);
  external CSSUnitValue dvb(JSNumber value);
  external CSSUnitValue dvmin(JSNumber value);
  external CSSUnitValue dvmax(JSNumber value);
  external CSSUnitValue cqw(JSNumber value);
  external CSSUnitValue cqh(JSNumber value);
  external CSSUnitValue cqi(JSNumber value);
  external CSSUnitValue cqb(JSNumber value);
  external CSSUnitValue cqmin(JSNumber value);
  external CSSUnitValue cqmax(JSNumber value);
  external CSSUnitValue cm(JSNumber value);
  external CSSUnitValue mm(JSNumber value);
  external CSSUnitValue Q(JSNumber value);
  @JS('in')
  external CSSUnitValue in_(JSNumber value);
  external CSSUnitValue pt(JSNumber value);
  external CSSUnitValue pc(JSNumber value);
  external CSSUnitValue px(JSNumber value);
  external CSSUnitValue deg(JSNumber value);
  external CSSUnitValue grad(JSNumber value);
  external CSSUnitValue rad(JSNumber value);
  external CSSUnitValue turn(JSNumber value);
  external CSSUnitValue s(JSNumber value);
  external CSSUnitValue ms(JSNumber value);
  external CSSUnitValue Hz(JSNumber value);
  external CSSUnitValue kHz(JSNumber value);
  external CSSUnitValue dpi(JSNumber value);
  external CSSUnitValue dpcm(JSNumber value);
  external CSSUnitValue dppx(JSNumber value);
  external CSSUnitValue fr(JSNumber value);
  external JSString escape(JSString ident);
  external Worklet get animationWorklet;
  external HighlightRegistry get highlights;
  external JSAny get elementSources;
  external Worklet get layoutWorklet;
  external Worklet get paintWorklet;
}
