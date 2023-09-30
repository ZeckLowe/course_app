import 'package:course_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Online',
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              Text(
                'Master Class',
                style: GoogleFonts.roboto(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          SizedBox(
              height: 349,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MyHorizontalList(
                      startColor: 0xFF9288E4,
                      endColor: 0xFF534EA7,
                      courseHeadline: 'Recommended',
                      courseTitle: 'UI/UX Designer\nBEGINNER',
                      courseImage: 'assets/images/Saly-10.png',
                    );
                  },
              ),
          ),
          const SizedBox(
            height: 34
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Free online class',
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              Text(
                'From over 80 lectures',
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9C9A9A)
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return Container();
            }
          )
        ],
      )),
    );
  }
}
