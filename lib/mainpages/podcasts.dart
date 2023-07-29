import 'package:flutter/material.dart';
import 'package:formadziri/comp/pod_items.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:formadziri/mainpages/pod.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({Key? key}) : super(key: key);

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          title: Text(
           // AppLocalizations.of(context).podcasts,
"podcasts",
              style:
                  const TextStyle(fontWeight: FontWeight.w900, fontSize: 24)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 14),
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: "Search Podcasts",
                    hintStyle: TextStyle(color: Color(0xFF6D8A6B)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xffCFE5CD),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xffCFE5CD),
                        width: 2,
                      ),
                    ),
                    fillColor: Color(0xffCFE5CD),
                    filled: true,
                  ),
                  cursorColor: Color.fromARGB(255, 109, 138, 107),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Pod(); //
                      },
                    ),
                  );
                },
                child: const PodItem(
                    date: "31 Aug",
                    title:
                        "Episode 06: Language barrier: a big misunderstanding?",
                    desc:
                        "Overcome language learning barriers by targeting professional vocabulary, explored in this episode.",
                    time: "21 min "),
              ),
              const Divider(),
              const PodItem(
                  date: "27 Aug",
                  title:
                      "Episode 05: 3 Parenting tips for raising resilient, self reliant kids",
                  desc:
                      "Discover three valuable parenting tips for raising resilient and self-reliant children in this episode.",
                  time: "19 min "),
              const Divider(),
              const PodItem(
                  date: "24 Aug",
                  title: "Episode 04: How AI can empower any business",
                  desc:
                      "AI is revolutionizing the business world in countless ways, from automating tedious tasks to providing personalized customer experiences. This episode explores the many benefits of incorporating AI into your business and offers insights into how you can get started.",
                  time: "23 min "),
              const Divider(),
              const PodItem(
                  date: "28 Aug",
                  title: "Episode 03: How to unite people through art",
                  desc:
                      "Unleash the transformative power of art to unite communities and promote social change, discussed in this episode.",
                  time: "16 min "),
              const Divider(),
              const PodItem(
                  date: "14 Aug",
                  title:
                      "Episode 02: The real reason you feel so busy (and what to do about it)",
                  desc:
                      "Feeling busy all the time is a common complaint in today's fast-paced world. In this episode, we unpack the real reasons behind this feeling and offer practical tips for managing your time and increasing your productivity.",
                  time: "29 min "),
              const Divider(),
              const PodItem(
                  date: "10 Aug",
                  title: "Episode 01: Learning to be part of your community",
                  desc:
                      "Discover the importance of community involvement and how to become an active participant in your neighborhood in this episode.",
                  time: "12 min "),
              const Divider(),
            ],
          ),
        ));
  }
}
