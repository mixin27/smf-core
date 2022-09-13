<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A core package that provides some reusable widgets, text, extensions and utils, etc.

## Features

- Ready to use paginated `freezed` domain model.
- Ready to use some network exceptions.
- `SizeConfig` for responsive.
- Some extensions for `BuildContext`, `DateTime`, `Dio` and `String`.
- Some helper classes and functions
- Logger with some colors and types.
- Some common used `rivperpod` providers for instances.
- `Vimeo` video links fetching via `id`
- `YouTube` video links fetching via `link` or `id`.

## Getting started

You do not need any requirements right now.

## Usage

To use this package, all you have to do is to import.

```dart
import 'package:smf_core/smf_core.dart';
```

### Vimeo

To get video id from vimeo url

```dart
final VimeoService service = VimeoService();

final response = await service.fetchVimeoInfoFromUrl(
    url: 'https://vimeo.com/29474908',
);
final videoId = await response.when(
    data: (info) => info.videoId.toString(),
);
```

To get list of `vimeo` video links

```dart
final vimeoService = VimeoService();
final response = await vimeoService.fetchAllVimeoVideoLinks(
    videoId: videoId,
);
final videLinks = await remoteResponse.when(
    data: (videos) => videos,
);
```

### YouTube

To get list of `youtube` video links

```dart
final youtubeService = YoutubeService();
final urls = await youtubeService.getVideoQualityUrlsFromYoutube(
    'https://www.youtube.com/watch?v=gYNTcgZVcWw',
);

// Create resolutions map
Map<String, String> resolutionsMap = {};
for (var link in urls.reversed) {
    String processedKey = link.quality.toString();
    resolutionsMap[processedKey] = link.url;
}
```

And you can use above `urls` and `resolutionsMap` within your player.

## Additional information

Package repository link is [here](https://github.com/mixin27/smf-core)
