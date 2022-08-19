import 'package:flutter/material.dart';
import 'package:smf_core/smf_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<YoutubeVideoQualityUrl> youtubeUrls = [];
  List<VimeoVideoLinkDto> vimeoVideLinks = [];

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    await _getYouTubeVideoUrls();
    await _getVimeoVideoUrls();
  }

  _getYouTubeVideoUrls() async {
    final YoutubeService ytService = YoutubeService();
    final response = await ytService.getVideoQualityUrlsFromYoutube(
      'https://www.youtube.com/watch?v=VdkRy3yZiPo',
    );

    setState(() {
      youtubeUrls.addAll(response);
    });
  }

  _getVimeoVideoUrls() async {
    final vimeoService = VimeoRemoteService();
    final urlInfo = await vimeoService.fetchVimeoInfoFromUrl(
      url: 'https://vimeo.com/29474908',
    );
    final response = await vimeoService.fetchAllVimeoVideoLinks(
      videoId: urlInfo.data.videoId.toString(),
    );

    setState(() {
      vimeoVideLinks.addAll(response.data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: youtubeUrls.length,
        itemBuilder: (context, index) {
          final YoutubeVideoQualityUrl ytVideoUrl =
              youtubeUrls.elementAt(index);

          return ListTile(
            title: Text(ytVideoUrl.url),
            subtitle: Text('${ytVideoUrl.quality}'),
          );
        },
      ),
    );
  }
}
