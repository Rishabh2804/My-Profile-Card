// ignore_for_file: avoid_unnecessary_containers

// import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);

    var phoneNumber = '+1 234 567 8901';
    var email = 'rishabhgupta2804@gmail.com';
    var github = 'Rishabh2804';
    var stackOverflow = 'rishabh-gupta';
    var linkedIn = 'rishabh-gupta-2804';
    var twitter = 'ris0_2804';
    var discord = 'Rishabh Gupta#1902';

    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          centerTitle: true,
          title: Text(
            'A little about me!',
            style: GoogleFonts.praise(
              fontSize: 35,
              letterSpacing: 3,
              color: Colors.white,
            ),
          ),
          // actions: <Widget>[
          //   Image.network(
          //     'https://raw.githubusercontent.com/Rishabh2804/Rishabh2804/master/Resources/wave.gif',
          //     height: 35,
          //     width: 35,
          //   ),
          // ],
        ),
        backgroundColor: Color.fromARGB(255, 36, 164, 151),
        body: SingleChildScrollView(
          child: Container(
            // child: Banner(
            //   message: 'Fork this repo',
            //   location: BannerLocation.topStart,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/avatar.png'),
                    backgroundColor: Color.fromARGB(255, 255, 229, 59),
                  ),
                  Container(
                    child: Text(
                      'Rishabh Gupta',
                      style: GoogleFonts.originalSurfer(
                        fontSize: 30,
                        letterSpacing: 4,
                        color: const Color.fromARGB(255, 161, 244, 27),
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 20),
                  ),
                  Container(
                    child: Text(
                      '~: Flutter Developer :~',
                      style: GoogleFonts.whisper(
                        fontSize: 30,
                        letterSpacing: 4,
                        // decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 59, 242, 255),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                    child: Divider(
                      color: Color.fromARGB(255, 164, 242, 248),
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      shadowColor: Colors.teal,
                      color: const Color.fromARGB(255, 202, 249, 249),
                      child: ListTile(
                        onTap: () => launchURL('tel:$phoneNumber'),
                        onLongPress: () => launchURL('sms:$phoneNumber'),
                        leading: const Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 74, 136, 152),
                          size: 25,
                        ),
                        trailing: Text(
                          phoneNumber,
                          style: GoogleFonts.pacifico(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 74, 136, 152),
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    // key: key,
                    width: 400,
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      shadowColor: Colors.teal,
                      color: const Color.fromARGB(255, 202, 249, 249),
                      child: ListTile(
                        onTap: () => launchURL('mailto:$email'),
                        leading: const Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 152, 74, 110),
                          size: 25,
                        ),
                        // hoverColor: const Color.fromARGB(255, 182, 228, 235),
                        trailing: Text(
                          email,
                          style: GoogleFonts.niconne(
                            fontSize: 21,
                            color: const Color.fromARGB(255, 152, 74, 110),
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.github,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 30,
                        ),
                        onPressed: () =>
                            launchURL('https://github.com/$github'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.stackOverflow,
                          color: Color.fromARGB(255, 244, 127, 36),
                          size: 30,
                        ),
                        onPressed: () => launchURL(
                            'https://stackoverflow.com/users/17798976/$stackOverflow?tab=profile'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromARGB(255, 37, 37, 214),
                          size: 30,
                        ),
                        onPressed: () =>
                            launchURL('https://www.linkedin.com/in/$linkedIn'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.twitter,
                          color: Color.fromARGB(255, 29, 155, 250),
                          size: 30,
                        ),
                        onPressed: () =>
                            launchURL('https://www.twitter.com/$twitter'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.discord,
                          color: Color.fromARGB(255, 88, 101, 242),
                          size: 30,
                        ),
                        onPressed: () =>
                            launchURL('https://www.discord.gg/$discord'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  launchURL(String url) async {
    var redirect = Uri.parse(url);
    if (await canLaunchUrl(redirect)) {
      return await launch(url, enableJavaScript: true);
    } else {
      throw 'Could not launch $redirect';
    }
  }
}
