import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:text_scroll/text_scroll.dart';

class Pod extends StatefulWidget {
  const Pod({Key? key}) : super(key: key);

  @override
  State<Pod> createState() => _PodState();
}

class _PodState extends State<Pod> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset("images/rick.mp3");
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14, left: 14),
            child: Icon(Icons.share),
          )
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 50),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "images/podcast.png",
              height: 300,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextScroll(
                'Episode 06: Language barrier: a big misunderstanding?',
                mode: TextScrollMode.endless,
                fadeBorderSide: FadeBorderSide.both,
                fadedBorder: true,
                velocity: const Velocity(pixelsPerSecond: Offset(20, 0)),
                delayBefore: const Duration(milliseconds: 200),
                pauseBetween: const Duration(milliseconds: 200),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
              Text(
                "Formadziri",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 60),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Image.asset(
                  "images/back15.png",
                  height: 45,
                  color: const Color(0xAA0E1F12),
                ),
                Controls(audioPlayer: _audioPlayer),
                Image.asset(
                  "images/skip15.png",
                  height: 45,
                  color: const Color(0xAA0E1F12),
                ),
                Image.asset(
                  "images/add.png",
                  height: 45,
                  color: const Color(0xAA0E1F12),
                ),
              ]),
              const SizedBox(height: 20),
              LinearPercentIndicator(
                barRadius: const Radius.circular(5),
                percent: 0.1,
                progressColor: const Color(0xAA0E1F12),
              ),
              const SizedBox(height: 5),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "02:29",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "12:35",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ]),
              const SizedBox(height: 60),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous_rounded,
                      size: 60,
                      color: Color(0xAA0E1F12),
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_next_rounded,
                      size: 60,
                      color: Color(0xAA0E1F12),
                    )),
              ]),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ]),
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({Key? key, required this.audioPlayer}) : super(key: key);

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (!(playing ?? false)) {
          return IconButton(
            onPressed: audioPlayer.play,
            icon: const Icon(Icons.play_arrow_rounded,
                size: 80, color: Color(0xAA0E1F12)),
          );
        } else if (processingState != ProcessingState.completed) {
          return IconButton(
            onPressed: audioPlayer.pause,
            icon: const Icon(Icons.pause_rounded,
                size: 80, color: Color(0xAA0E1F12)),
          );
        }
        return const Icon(
          Icons.play_arrow_rounded,
          size: 80,
          color: Color(0xAA0E1F12),
        );
      },
    );
  }
}
