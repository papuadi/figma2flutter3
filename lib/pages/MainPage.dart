import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Morning",
              style: GoogleFonts.poppins(
                  color: Color(0xff090A0A),
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img-avatar.png"))),
            ),
          ],
        ),
      );
    }

    Widget MusicHeader() {
      Widget MusicCard(String img, String text) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.only(left: 24),
              width: 88,
              height: 88,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(img))),
            ),
            SizedBox(width: 12),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                text,
                style: GoogleFonts.poppins(
                    color: Color(0xff090A0A),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        );
      }

      return Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MusicCard("assets/img-music11.png", "Good Vibes"),
                MusicCard("assets/img-music12.png", "Top Hits"),
                MusicCard("assets/img-music13.png", "Happy Hits"),
                MusicCard("assets/img-music14.png", "Good Time"),
              ],
            ),
          ),
        ],
      );
    }

    Widget MusicPlay() {
      // ignore: non_constant_identifier_names
      Widget MusicCard(String img, String text, String SubText) {
        return Container(
          width: 142,
          margin: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 142,
                height: 142,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              SizedBox(width: 12),
              Text(
                text,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 8),
              Text(
                SubText,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Color(0xff6C7072),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Text(
              "Just For You",
              style: GoogleFonts.poppins(
                  color: Color(0xff090A0A),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MusicCard("assets/img-music21.png", "Daily Mix",
                    "Jonas Blue, NOTD, David Guetta and more"),
                MusicCard("assets/img-music22.png", "Feelin' Myself",
                    "Ariana Grande, Doja Cat, Megan Thee Stallion..."),
                MusicCard("assets/img-music23.png", "Mood Booster",
                    "BTS, Dua Lipa, Malone, Justin Bieber and more"),
              ],
            ),
          ),
          SizedBox(
            height: 23,
          ),
        ],
      );
    }

    Widget MusicPopular() {
      Widget MusicCard(String img, String text, String Subtext) {
        return Container(
          width: 141,
          margin: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 141,
                height: 141,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(img))),
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: Color(0xff090A0A),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                Subtext,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Color(0xff090A0A),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 24),
            child: Text(
              "Popular Song",
              style: GoogleFonts.poppins(
                  color: Color(0xff090A0A),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MusicCard("assets/img-music31.png", "Good Vibes",
                    "Tame, Impala, Joji, Tyler, The Creator,5"),
                MusicCard("assets/img-music32.png", "Mega Hit Mix",
                    "Ariana Grande, BTS, Dua Lipa, Justin Bieber, Taylo"),
                MusicCard("assets/img-music33.png", "Young & Free",
                    "LANY, Jeremy Zucker, Joji, ILLENIUM, Glass A..."),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            MusicHeader(),
            MusicPlay(),
            MusicPopular(),
          ],
        ),
      ),
    );
  }
}
