# flutter_common_exports

A Flutter package includes some common exportation of constants and utils.

## Requirement

Flutter SDK: `>=1.12.13`

## Contents

* `Cookie` from `dart:io`.
* dartx
* `DateFormat` from `intl`.
* OKToast.
* `Permission`, `PermissionStatus` from `permission_handler`.
* Constants:
  * `lessThanOne`
  * `lessThanZero`
  * `moreThanOne`
  * `moreThanZero`
  * `betweenZeroAndOne`
  * `currentTime`
  * `currentTimeStamp`
  * `localizationsDelegates`
  * `supportedLocales`
* Extensions:
  * `BuildContextExtension`:
    * `context.mediaQuery`
    * `context.themeData`
  * `ColorExtension`:
    * `color.swatch`
    * `color.getMaterialColorValues`
* Screens:
  * `MediaQueryData`
  * `fixedFontSize`
  * `scale` (devicePixelRatio)
  * `width`
  * `widthPixels`
  * `height`
  * `heightPixels`
  * `aspectRatio`
  * `textScaleFactor`
  * `navigationBarHeight`
  * `topSafeHeight`
  * `bottomSafeHeight`
  * `safeHeight`
  * `updateStatusBarStyle`
* Utils:
  * Input utils:
    * `insertText`
    * `showKeyboard`
    * `hideKeyboard`
  * `realDebugPrint`
  * `doubleBackExit`
  * `doNothing`
  * `checkPermissions`
* Widgets:
  * `emptyCounterBuilder`
  * `maxBorderRadius`
  * `PlatformProgressIndicator`
  * `NoSplashFactory`
  * `NoGlowScrollBehavior`
