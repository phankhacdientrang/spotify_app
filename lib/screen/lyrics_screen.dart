import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:spotify_project/model/lyrics_model.dart';
import 'package:spotify_project/model/muisic_model.dart';

class LyricScreen extends StatefulWidget {
  final Music music;
  final Stream stream;
  final void Function(Duration duration) onChangePosition;
  final VoidCallback onPlay;
  final bool isPlay;
  List<LyricsModel> lyrics = [];
  LyricScreen(
      {super.key,
      required this.music,
      required this.stream,
      required this.onChangePosition,
      required this.onPlay,
      required this.isPlay});

  @override
  State<StatefulWidget> createState() {
    return _LyricScreenState();
  }
}

class _LyricScreenState extends State<LyricScreen> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();
  String lyric = '''Come on, Harry, we wanna say "good night" to you!\n
  ♪\n
  Holding me back\n
  Gravity's holding me back\n
  I want you to hold out the palm of your hand\n
  Why don't we leave it at that?\n
  Nothing to say\n
  When everything gets in the way\n
  Seems you cannot be replaced\n
  And I'm the one who will stay\n
  Oh-oh-oh\n
  In this world\n
  It's just us\n
  You know it's not the same as it was\n
  In this world\n
  It's just us\n
  You know it's not the same as it was\n
  As it was\n
  As it was\n
  You know it's not the same\n
  Answer the phone\n
  Harry, you're no good alone\n
  Why are you sitting at home on the floor?\n
  What kind of pills are you on?\n
  Ringing the bell\n
  And nobody's coming to help\n
  Your daddy lives by himself\n
  He just wants to know that you're well\n
  Oh-oh-oh\n
  In this world\n
  It's just us\n
  You know it's not the same as it was\n
  In this world\n
  It's just us\n
  You know it's not the same as it was\n
  As it was\n
  As it was\n
  You know it's not the same\n
  Go home, get ahead, light-speed internet\n
  I don't wanna talk about the way that it was\n
  Leave America, two kids follow her\n
  I don't wanna talk about who's doing it first\n
  Hey!\n
  As it was\n
  You know it's not the same as it was\n
  As it was\n
  As it was''';
  late bool isPlay = widget.isPlay;
  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.headline1!;
    widget.lyrics = lyric
        .split('\n')
        .map(
          (e) => LyricsModel(word: e, timestamp: DateTime.now()),
        )
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.music.songImage!),
                    fit: BoxFit.cover)),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  color: Colors.green.withOpacity(0.5),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const ImageIcon(
                                  AssetImage('assets/images/left_icon.png')),
                            ),
                          ),
                          Text(
                            widget.music.songName!,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert))
                        ],
                      ),
                      if (widget.lyrics != null)
                        Expanded(
                          child: ScrollablePositionedList.builder(
                            itemCount: widget.lyrics.length,
                            itemBuilder: (context, index) => Text(
                              widget.lyrics[index].word,
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            itemScrollController: itemScrollController,
                            scrollOffsetController: scrollOffsetController,
                            itemPositionsListener: itemPositionsListener,
                            scrollOffsetListener: scrollOffsetListener,
                          ),
                        )
                      else
                        const SizedBox(),
                      Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(widget.music.songImage!),
                                    radius: 30,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.music.songName ?? 'Loading',
                                        style: titleStyle,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Billie Eilish',
                                        style: titleStyle.copyWith(
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
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
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          StreamBuilder(
                              stream: widget.stream,
                              builder: (context, snapshot) {
                                return ProgressBar(
                                  progress:
                                      snapshot.data ?? const Duration(seconds: 0),
                                  total: widget.music.duration ??
                                      const Duration(minutes: 4),
                                  thumbColor: Colors.white,
                                  progressBarColor: Colors.white,
                                  onSeek: (duration) {
                                    widget.onChangePosition(duration);
                                  },
                                );
                              }),
                          const SizedBox(
                            height: 10,
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
                                    shape: BoxShape.circle,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                                child: IconButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      widget.onPlay();
                                      setState(() {
                                        isPlay = !isPlay;
                                      });
                                    },
                                    icon: (isPlay )
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
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
