import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/size_config.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  final String aboutPulzion =
      "Pulzion is the annual technical fest organized by PICT ACM Student Chapter. Pulzion has hosted multiple events including coding competition ranging from amateur competitions two day-long as well as mock placements, business management based and quizzing events. It has become one of the most anticipated events taking place at PICT with participants from colleges all over Pune. With high aspirations, backed with sincerity and dedication, the PASC team aims to add value to the college and all the people in it.";

  Future<void> _launchUniversalLinkApp(String url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.inAppWebView,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.all(SizeConfig.getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.getProportionateScreenHeight(18),
                    ),
                    child: SizedBox(
                      height: SizeConfig.getProportionateScreenHeight(90),
                      width: SizeConfig.getProportionateScreenWidth(215),
                      child: Image.asset(
                        "assets/images/pasc_logo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.getProportionateScreenWidth(14),
                          top: SizeConfig.getProportionateScreenHeight(46),
                        ),
                        child: WidgetCircularAnimator(
                          size: width / 2.6,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 21, 68, 102),
                            ),
                            child: Row(
                              children: [
                                Column(children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: width / 30,
                                      left: width / 20,
                                    ),
                                    child: Countup(
                                      begin: 0,
                                      end: 16,
                                      duration: const Duration(seconds: 1),
                                      separator: ',',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width / 13,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: width / 17,
                                      top: width / 36,
                                    ),
                                    child: Text(
                                      "EVENTS",
                                      style: TextStyle(
                                        fontSize: width / 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: width / 15, top: height / 20),
                        child: WidgetCircularAnimator(
                          size: width / 2.6,
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 21, 68, 102),
                            ),
                            child: Row(
                              children: [
                                Column(children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: width / 30,
                                      left: width / 45,
                                    ),
                                    child: Countup(
                                      begin: 0,
                                      end: 600,
                                      duration: const Duration(seconds: 1),
                                      separator: ',',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width / 13,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: width / 36,
                                      left: width / 40,
                                    ),
                                    child: Text(
                                      "VOLUNTEERS",
                                      style: TextStyle(
                                        fontSize: width / 27,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height / 20),
                    child: Text(
                      "ABOUT PULZION",
                      style: TextStyle(
                        fontSize: width / 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height / 20),
                    child: Text(
                      aboutPulzion,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: width / 19,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height / 20),
                    child: Text(
                      "CONTACT US",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: width / 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height / 35, left: width / 30),
                    child: IconButton(
                      onPressed: () {
                        null;
                      },
                      icon: Icon(
                        FontAwesomeIcons.phone,
                        size: width / 12,
                        color: Colors.purpleAccent[100],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height / 30),
                    child: Text(
                      "Ashutosh Shaha - (+91) 9156546280\nSiddhi Wakchaure - (+91) 8329368540",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: width / 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height / 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            await _launchUniversalLinkApp(
                              "https://www.facebook.com/acmpict/",
                            );
                          },
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            size: width / 10,
                            color: Colors.purpleAccent[100],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width / 12),
                          child: IconButton(
                            onPressed: () async {
                              await _launchUniversalLinkApp(
                                'https://www.instagram.com/acm.pict/?hl=en',
                              );
                            },
                            icon: Icon(
                              FontAwesomeIcons.instagram,
                              size: width / 10,
                              color: Colors.purpleAccent[100],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width / 12),
                          child: IconButton(
                            onPressed: () async {
                              await _launchUniversalLinkApp(
                                "https://in.linkedin.com/company/pict-acm-student-chapter",
                              );
                            },
                            icon: Icon(
                              FontAwesomeIcons.linkedin,
                              size: width / 10,
                              color: Colors.purpleAccent[100],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width / 12),
                          child: IconButton(
                            onPressed: () async {
                              await _launchUniversalLinkApp(
                                "https://twitter.com/_pict_acm_?lang=en",
                              );
                            },
                            icon: Icon(
                              FontAwesomeIcons.twitter,
                              size: width / 10,
                              color: Colors.purpleAccent[100],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
