import 'package:course_app/themes/theme.dart';
import 'package:course_app/widget/glassmorphism.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

   final bool _isBlur = false;

  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hello Satwik',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'What are you learning today?',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/person.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GlassMorphism(
                  blur: _isBlur ? 20 : 0,
                  opacity: 0.2,
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: kWhiteColor,
                    labelPadding: EdgeInsets.only(left: 20, right: 20),
                    unselectedLabelColor: kGreyColor,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(text: 'My Courses'),
                      Tab(text: 'Trending'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 230,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              height: 185,
                              width: 270,
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset('images/img_2.png',
                                      height: 100,
                                      width: double.infinity,
                                      fit: BoxFit.cover),
                                  SizedBox(height: 10),
                                  Text(
                                    'Virtual Reality',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Satwik Pachino',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: kGreyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.all(15),
                              height: 185,
                              width: 270,
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset('images/img_3.png',
                                      height: 100,
                                      width: double.infinity,
                                      fit: BoxFit.cover),
                                  SizedBox(height: 10),
                                  Text(
                                    'Android Development',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Jhon Victor',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: kGreyColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text('')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Top Educators',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20,),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 190,
                        width: 150,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/person.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Christina Roy',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kWhiteColor,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '12 Courses',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: kGreyColor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Icon(Icons.keyboard_arrow_down_rounded,
                              color: kWhiteColor),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 190,
                        width: 150,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/person.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Bessie Cooper',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kWhiteColor,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '24 Courses',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: kGreyColor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Icon(Icons.keyboard_arrow_down_rounded,
                              color: kWhiteColor),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 190,
                        width: 150,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/person.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Anna Watson',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: kWhiteColor,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '18 Courses',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: kGreyColor,
                              ),
                            ),
                            SizedBox(height: 10),
                            Icon(Icons.keyboard_arrow_down_rounded,
                              color: kWhiteColor),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
