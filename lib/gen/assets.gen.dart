/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsJpgGen {
  const $AssetsJpgGen();

  /// File path: assets/jpg/mock_2.jpeg
  AssetGenImage get mock2 => const AssetGenImage('assets/jpg/mock_2.jpeg');

  /// File path: assets/jpg/mock_3.jpeg
  AssetGenImage get mock3 => const AssetGenImage('assets/jpg/mock_3.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [mock2, mock3];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/mock_1.png
  AssetGenImage get mock1 => const AssetGenImage('assets/png/mock_1.png');

  /// File path: assets/png/mock_4.png
  AssetGenImage get mock4 => const AssetGenImage('assets/png/mock_4.png');

  /// List of all assets
  List<AssetGenImage> get values => [mock1, mock4];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow-left.svg
  String get arrowLeft => 'assets/svg/arrow-left.svg';

  /// File path: assets/svg/chat.svg
  String get chat => 'assets/svg/chat.svg';

  /// File path: assets/svg/clock.svg
  String get clock => 'assets/svg/clock.svg';

  /// File path: assets/svg/filter.svg
  String get filter => 'assets/svg/filter.svg';

  /// File path: assets/svg/fire.svg
  String get fire => 'assets/svg/fire.svg';

  /// File path: assets/svg/home.svg
  String get home => 'assets/svg/home.svg';

  /// File path: assets/svg/leftovers.svg
  String get leftovers => 'assets/svg/leftovers.svg';

  /// File path: assets/svg/minus.svg
  String get minus => 'assets/svg/minus.svg';

  /// File path: assets/svg/plus.svg
  String get plus => 'assets/svg/plus.svg';

  /// File path: assets/svg/search.svg
  String get search => 'assets/svg/search.svg';

  /// File path: assets/svg/settings.svg
  String get settings => 'assets/svg/settings.svg';

  /// File path: assets/svg/share.svg
  String get share => 'assets/svg/share.svg';

  /// File path: assets/svg/shopping_list.svg
  String get shoppingList => 'assets/svg/shopping_list.svg';

  /// List of all assets
  List<String> get values => [
        arrowLeft,
        chat,
        clock,
        filter,
        fire,
        home,
        leftovers,
        minus,
        plus,
        search,
        settings,
        share,
        shoppingList
      ];
}

class Assets {
  Assets._();

  static const $AssetsJpgGen jpg = $AssetsJpgGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
