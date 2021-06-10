// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

const List<int> kTransparentImage = <int>[
  0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, 0x00, 0x00, 0x00, 0x0D, 0x49,
  0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x08, 0x06,
  0x00, 0x00, 0x00, 0x1F, 0x15, 0xC4, 0x89, 0x00, 0x00, 0x00, 0x0A, 0x49, 0x44,
  0x41, 0x54, 0x78, 0x9C, 0x63, 0x00, 0x01, 0x00, 0x00, 0x05, 0x00, 0x01, 0x0D,
  0x0A, 0x2D, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4E, 0x44, 0xAE,
];

/// An animated GIF image with 3 1x1 pixel frames (a red, green, and blue
/// frames). The GIF animates forever, and each frame has a 100ms delay.
const List<int> kAnimatedGif = <int> [
  0x47, 0x49, 0x46, 0x38, 0x39, 0x61, 0x01, 0x00, 0x01, 0x00, 0xa1, 0x03, 0x00,
  0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0xff, 0x00, 0xff, 0xff, 0xff, 0x21,
  0xff, 0x0b, 0x4e, 0x45, 0x54, 0x53, 0x43, 0x41, 0x50, 0x45, 0x32, 0x2e, 0x30,
  0x03, 0x01, 0x00, 0x00, 0x00, 0x21, 0xf9, 0x04, 0x00, 0x0a, 0x00, 0xff, 0x00,
  0x2c, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x02, 0x02, 0x4c,
  0x01, 0x00, 0x21, 0xf9, 0x04, 0x00, 0x0a, 0x00, 0xff, 0x00, 0x2c, 0x00, 0x00,
  0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x02, 0x02, 0x54, 0x01, 0x00, 0x21,
  0xf9, 0x04, 0x00, 0x0a, 0x00, 0xff, 0x00, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x01,
  0x00, 0x01, 0x00, 0x00, 0x02, 0x02, 0x44, 0x01, 0x00, 0x3b,
];

// A PNG with 100x100 blue pixels.
//
// Constructed by the following code:
// ```dart
//  Future<void> someTest(WidgetTester tester) async {
//    Uint8List bytes;
//    await tester.runAsync(() async {
//      const int imageWidth = 100;
//      const int imageHeight = 100;
//      final Uint8List pixels = Uint8List.fromList(List<int>.generate(
//        imageWidth * imageHeight * 4,
//            (int i) => i % 4 < 2 ? 0x00 : 0xFF, // opaque blue
//      ));
//      final Completer<void> completer = Completer<void>();
//      ui.decodeImageFromPixels(
//        pixels, imageWidth, imageHeight, ui.PixelFormat.rgba8888,
//            (ui.Image image) async {
//          final ByteData byteData = await image.toByteData(
//              format: ui.ImageByteFormat.png);
//          bytes = byteData.buffer.asUint8List();
//          completer.complete();
//        },
//      );
//      await completer.future;
//    });
//    print(bytes);
//  }
// ```
const List<int> kBlueRectPng = <int> [
  137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 100, 0,
  0, 0, 100, 8, 6, 0, 0, 0, 112, 226, 149, 84, 0, 0, 0, 4, 115, 66, 73, 84, 8,
  8, 8, 8, 124, 8, 100, 136, 0, 0, 1, 0, 73, 68, 65, 84, 120, 156, 237, 209, 65,
  13, 0, 32, 16, 192, 176, 3, 255, 158, 225, 141, 2, 246, 104, 21, 44, 217, 154,
  57, 103, 200, 216, 191, 3, 120, 25, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 140, 33, 49, 134, 196, 24, 18,
  99, 72, 140, 33, 49, 134, 196, 24, 18, 99, 72, 204, 5, 234, 78, 2, 198, 180,
  170, 48, 200, 0, 0, 0, 0, 73, 69, 78, 68, 174, 66, 96, 130
];