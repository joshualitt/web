// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef MediaSessionActionHandler = JSFunction;
typedef MediaSessionPlaybackState = JSString;
typedef MediaSessionAction = JSString;

@JS('MediaSession')
@staticInterop
class MediaSession {}

extension MediaSessionExtension on MediaSession {
  external JSVoid setActionHandler(
    MediaSessionAction action,
    MediaSessionActionHandler? handler,
  );
  external JSVoid setPositionState([MediaPositionState state]);
  external JSVoid setMicrophoneActive(JSBoolean active);
  external JSVoid setCameraActive(JSBoolean active);
  external set metadata(MediaMetadata? value);
  external MediaMetadata? get metadata;
  external set playbackState(MediaSessionPlaybackState value);
  external MediaSessionPlaybackState get playbackState;
}

@JS('MediaMetadata')
@staticInterop
class MediaMetadata {
  external factory MediaMetadata([MediaMetadataInit init]);
}

extension MediaMetadataExtension on MediaMetadata {
  external set title(JSString value);
  external JSString get title;
  external set artist(JSString value);
  external JSString get artist;
  external set album(JSString value);
  external JSString get album;
  external set artwork(JSArray value);
  external JSArray get artwork;
}

@JS()
@staticInterop
@anonymous
class MediaMetadataInit {
  external factory MediaMetadataInit({
    JSString title,
    JSString artist,
    JSString album,
    JSArray artwork,
  });
}

extension MediaMetadataInitExtension on MediaMetadataInit {
  external set title(JSString value);
  external JSString get title;
  external set artist(JSString value);
  external JSString get artist;
  external set album(JSString value);
  external JSString get album;
  external set artwork(JSArray value);
  external JSArray get artwork;
}

@JS()
@staticInterop
@anonymous
class MediaImage {
  external factory MediaImage({
    required JSString src,
    JSString sizes,
    JSString type,
  });
}

extension MediaImageExtension on MediaImage {
  external set src(JSString value);
  external JSString get src;
  external set sizes(JSString value);
  external JSString get sizes;
  external set type(JSString value);
  external JSString get type;
}

@JS()
@staticInterop
@anonymous
class MediaPositionState {
  external factory MediaPositionState({
    JSNumber duration,
    JSNumber playbackRate,
    JSNumber position,
  });
}

extension MediaPositionStateExtension on MediaPositionState {
  external set duration(JSNumber value);
  external JSNumber get duration;
  external set playbackRate(JSNumber value);
  external JSNumber get playbackRate;
  external set position(JSNumber value);
  external JSNumber get position;
}

@JS()
@staticInterop
@anonymous
class MediaSessionActionDetails {
  external factory MediaSessionActionDetails({
    required MediaSessionAction action,
    JSNumber seekOffset,
    JSNumber seekTime,
    JSBoolean fastSeek,
  });
}

extension MediaSessionActionDetailsExtension on MediaSessionActionDetails {
  external set action(MediaSessionAction value);
  external MediaSessionAction get action;
  external set seekOffset(JSNumber value);
  external JSNumber get seekOffset;
  external set seekTime(JSNumber value);
  external JSNumber get seekTime;
  external set fastSeek(JSBoolean value);
  external JSBoolean get fastSeek;
}
