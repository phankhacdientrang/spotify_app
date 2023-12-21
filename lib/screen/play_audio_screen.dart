import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotify/spotify.dart';
import 'package:spotify_project/component_widget/image_widget.dart';
import 'package:spotify_project/model/muisic_model.dart';
import 'package:spotify_project/screen/lyrics_screen.dart';
import 'package:spotify_project/screen/option_screen.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
AudioPlayer? currentPlayer;
class PlayAudioScreen extends StatefulWidget {
  final String trackId;
  const PlayAudioScreen({super.key, required this.trackId});
  @override
  State<StatefulWidget> createState() {
    return _PlayAudioScreenState();
  }
}

class _PlayAudioScreenState extends State<PlayAudioScreen> {
  String clientId = 'e8077a837bda44d8bd28edd4cb3307f0';
  String clientSecret = '52ebb612bb024294a5db58377bd2ff4e';

  Music music = Music();
  final player = AudioPlayer();
  SpotifyApi? spotify;
  @override
  void initState() {
    if (currentPlayer != null) {
      currentPlayer!.dispose();
      currentPlayer = player;
    } else {
      currentPlayer = player;
    }
    final credentials = SpotifyApiCredentials(clientId, clientSecret);
    final spotify = SpotifyApi(credentials);
    spotify.tracks.get(widget.trackId).then((track) async {
      track.linkedFrom;
      music.songName = track.name!;
      music.artists = track.artists!.first.name!;
      final image = track.album?.images?.first.url;
      if (image != null) {
        music.songImage = image;
      }
      music.artistsImage = track.artists?.first.images?.first.url;
      if (music.songName != null) {
        final yt = YoutubeExplode();
        final video = (await yt.search.search(music.songName!)).first;
        final videoId = video.id.value;
        music.duration = video.duration ?? const Duration(seconds: 4);
        setState(() {

        });
        final manifest = await yt.videos.streamsClient.getManifest(videoId);
        var audioUrl = manifest.audioOnly.first.url;
        player.play(UrlSource(audioUrl.toString()));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.headline1!;
    TextStyle mediumStyle = Theme.of(context).textTheme.headline3!;
    TextStyle subStyle = Theme.of(context).textTheme.subtitle1!;
    Color greenColor = Theme.of(context).colorScheme.onSecondary!;
    Color bgColor = Theme.of(context).colorScheme.onBackground!;
    Color lightGrey = Theme.of(context).colorScheme.onSecondaryContainer!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    margin: const EdgeInsets.only(left: 25, top: 10),
                    decoration:
                        BoxDecoration(color: lightGrey, shape: BoxShape.circle),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OptionScreen(),));
                      },
                      icon: const ImageIcon(
                          AssetImage('assets/images/left_icon.png')),
                    ),
                  ),
                  Text(
                    'Now playing',
                    style: titleStyle,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          ImageWidget(
                            songImage: music.songImage ?? '',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    child: Text(
                                      music.songName ?? 'Loading',
                                      style: titleStyle,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    music.artists ?? '',
                                    style: titleStyle.copyWith(
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const ImageIcon(AssetImage(
                                      'assets/images/heart_icon_02.png')))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: StreamBuilder(
                    stream: player.onPositionChanged,
                    builder: (context, snapshot) {
                      final data = snapshot.data;
                      return Column(
                        children: [
                          ProgressBar(
                            progress: data ?? const Duration(seconds: 0),
                            total: music.duration ?? const Duration(minutes: 4),
                            thumbColor: Colors.white,
                            progressBarColor: Colors.white,
                            onSeek: (duration) {
                              player.seek(duration);
                            },
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          //   PLAYER
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const ImageIcon(AssetImage(
                                      'assets/images/repeat_icon.png'))),
                              IconButton(
                                  onPressed: () {},
                                  padding: const EdgeInsets.all(0),
                                  icon: const Icon(
                                    Icons.skip_previous_rounded,
                                    size: 30,
                                  )),
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: greenColor),
                                child: IconButton(
                                    onPressed: () async {
                                      if (player.state == PlayerState.playing) {
                                        setState(() {
                                          player.pause();
                                        });
                                      } else {
                                        setState(() {
                                          player.resume();
                                        });
                                      }
                                    },
                                    padding: const EdgeInsets.all(0),
                                    icon: (PlayerState.playing == player.state)
                                        ? const ImageIcon(
                                            AssetImage(
                                                'assets/images/pause_icon.png'),
                                            size: 50,
                                          )
                                        : const ImageIcon(
                                            AssetImage(
                                                'assets/images/play_icon.png'),
                                            size: 50,
                                          )),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  padding: const EdgeInsets.all(0),
                                  icon: const Icon(
                                    Icons.skip_next,
                                    size: 30,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const ImageIcon(
                                    AssetImage(
                                        'assets/images/shuffle_icon.png'),
                                    size: 50,
                                  )),
                            ],
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LyricScreen(
                  music: music,
                  stream: player.onPositionChanged,
                  onChangePosition: (Duration duration) {
                    player.seek(duration);
                  },
                  onPlay: () async {
                    if (player.state == PlayerState.playing) {
                      await player.pause();
                    } else {
                      await player.resume();
                    }
                    setState(() {});
                  },
                  isPlay: player.state == PlayerState.playing,
                ),
              ));
        },
        child: const Column(
          children: [
            ImageIcon(AssetImage('assets/images/up_icon.png')),
            Text('Lyrics'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
