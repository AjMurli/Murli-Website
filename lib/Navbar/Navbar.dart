import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/link.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  const DesktopNavbar({super.key});

  @override
  State<DesktopNavbar> createState() => _DesktopNavbarState();
}

const colorizeColors = [
  Color.fromARGB(255, 7, 29, 196),
  Colors.blue,
  Colors.yellow,
  Colors.red,
];
const colorizeTextStyle =
    TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);

class _DesktopNavbarState extends State<DesktopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(
        //   maxWidth: 1600,
        // ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // Text(
          //   "Murli",
          //   style: TextStyle(
          //       fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          // ),
             AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Murli',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
          ),
          Row(
            children: [
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "About Us",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Link(
                // target: LinkTarget.blank,
                uri: Uri.parse(
                    'https://my-portfolio-responsive-website.netlify.app/'),
                builder: (context, followLink) => GestureDetector(
                  onTap: followLink,
                  child: Text(
                    "Portfolio",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                // child: Text(
                //   "Portfolio",
                //   style: TextStyle(
                //     color: Colors.white,
                //   ),
                // ),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.bold),
                  ),
                ),
                color: Color.fromARGB(255, 23, 7, 113),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(6),
                )),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({super.key});

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: [
          // Text(
          //   "Murli",
          //   style: TextStyle(
          //       fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          // ),
          AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Murli',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                // Text(
                //   "Portfolio",
                //   style: TextStyle(
                //     color: Colors.white,
                //   ),
                // ),
                Link(
                  // target: LinkTarget.blank,
                  uri: Uri.parse(
                      'https://my-portfolio-responsive-website.netlify.app/'),
                  builder: (context, followLink) => GestureDetector(
                    onTap: followLink,
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
