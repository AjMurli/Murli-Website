import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/link.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

const colorizeColors = [
  Color.fromARGB(255, 2, 16, 103),
  Colors.blue,
  Colors.yellow,
  Colors.red,
];
const colorizeTextStyle =
    TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);

class _ProjectScreenState extends State<ProjectScreen> {
  int _tabIndex = 0;
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return Column(
          children: [
            Container(
              height: 280,
              width: 800,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView(
                  controller: _controller,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p3.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://my-portfolio-responsive-website.netlify.app/'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'My Portfolio',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p4.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://murli-facebook-website.netlify.app'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Facebook Website',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p6.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://murli-online-cars-website.netlify.app'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Car Service',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p5.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://murli-digital-clock.netlify.app/'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Digital Clock',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p1.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse('https://murli-calci.netlify.app/'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Calculator',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),

                    // Container(
                    //   margin: EdgeInsets.only(right: 8),
                    //   // height: 200,
                    //   // width: 290,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       color: Colors.pink,
                    //       image: DecorationImage(
                    //           fit: BoxFit.cover,
                    //           image: AssetImage(
                    //             'assets/images/p3.png',
                    //           ))),
                    //   child: Center(
                    //       child: Link(
                    //     uri: Uri.parse(
                    //         'https:'),
                    //     builder: (context, followLink) => GestureDetector(
                    //         onTap: followLink,
                    //         child: AnimatedTextKit(
                    //           animatedTexts: [
                    //             // TyperAnimatedText('you must know what to do,'),
                    //             ColorizeAnimatedText(
                    //               'YouTube Website',
                    //               textStyle: colorizeTextStyle,
                    //               colors: colorizeColors,
                    //             ),
                    //           ],
                    //           isRepeatingAnimation: true,
                    //         )),
                    //   )),
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 5,
              // effect: SwapEffect(
              // effect: JumpingDotEffect(
              effect: ExpandingDotsEffect(
                dotColor: Color.fromARGB(255, 19, 49, 242),
                activeDotColor: Color.fromARGB(255, 53, 4, 146),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Center(
            //   child: AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
            //     TyperAnimatedText('HTML CSS JAVASCRIPT FLUTTER',
            //         textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
            //   ]),
            // ),
            SizedBox(
              height: 100,
            ),
            Positioned(
                bottom: 10,
                child: Text(
                  "@Murli",
                  style: TextStyle(
                      color: Color.fromARGB(255, 121, 119, 119),
                      fontWeight: FontWeight.bold),
                ))
          ],
        );
      } else {
        return Column(
          children: [
            Container(
              height: 500,
              // width: 1200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView(
                  controller: _controller,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p3.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://my-portfolio-responsive-website.netlify.app/'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'My Portfolio',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p4.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://murli-facebook-website.netlify.app'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Facebook Website',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p6.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://murli-online-cars-website.netlify.app'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Car Service',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p5.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse(
                            'https://murli-digital-clock.netlify.app/'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Digital Clock',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      // height: 200,
                      // width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.pink,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/p1.png',
                              ))),
                      child: Center(
                          child: Link(
                        uri: Uri.parse('https://murli-calci.netlify.app/'),
                        builder: (context, followLink) => GestureDetector(
                            onTap: followLink,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                // TyperAnimatedText('you must know what to do,'),
                                ColorizeAnimatedText(
                                  'Calculator',
                                  textStyle: colorizeTextStyle,
                                  colors: colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            )),
                      )),
                    ),

                    // Container(
                    //   margin: EdgeInsets.only(right: 8),
                    //   // height: 200,
                    //   // width: 290,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(30),
                    //       color: Colors.pink,
                    //       image: DecorationImage(
                    //           fit: BoxFit.cover,
                    //           image: AssetImage(
                    //             'assets/images/p3.png',
                    //           ))),
                    //   child: Center(
                    //       child: Link(
                    //     uri: Uri.parse(
                    //         'https:'),
                    //     builder: (context, followLink) => GestureDetector(
                    //         onTap: followLink,
                    //         child: AnimatedTextKit(
                    //           animatedTexts: [
                    //             // TyperAnimatedText('you must know what to do,'),
                    //             ColorizeAnimatedText(
                    //               'YouTube Website',
                    //               textStyle: colorizeTextStyle,
                    //               colors: colorizeColors,
                    //             ),
                    //           ],
                    //           isRepeatingAnimation: true,
                    //         )),
                    //   )),
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 5,
              // effect: SwapEffect(
              // effect: JumpingDotEffect(
              effect: ExpandingDotsEffect(
                dotColor: Color.fromARGB(255, 19, 49, 242),
                activeDotColor: Color.fromARGB(255, 19, 235, 242),
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
            ),
            Positioned(
                bottom: 10,
                child: Text(
                  "@Murli",
                  style: TextStyle(
                      color: Color.fromARGB(255, 121, 119, 119),
                      fontWeight: FontWeight.bold),
                ))
          ],
        );
      }
    });
  }
}
