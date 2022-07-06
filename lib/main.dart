// ignore_for_file: avoid_unnecessary_containers

// import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:toast/toast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
    var linkedIn = 'rishabh-gupta-2804';
    var stackOverflow = 'rishabh-gupta';

    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 38, 144, 133),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
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
                  // margin: const EdgeInsets.only(top: 5),
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    shadowColor: Colors.teal,
                    color: const Color.fromARGB(255, 202, 249, 249),
                    child: ListTile(
                      onTap: () => launchURL('tel:$phoneNumber'),
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
                  width: 400,
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    shadowColor: Colors.teal,
                    color: const Color.fromARGB(255, 202, 249, 249),
                    child: ListTile(
                      onTap: () =>
                          launchURL('https://www.linkedin.com/in/$linkedIn'),
                      leading: const Icon(
                        Boxicons.bxl_linkedin_square,
                        color: Color.fromARGB(255, 0, 0, 255),
                        size: 25,
                      ),
                      trailing: Text(
                        linkedIn,
                        style: GoogleFonts.libreFranklin(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 255),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // key: key,
                  width: 400,
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    shadowColor: Colors.teal,
                    color: const Color.fromARGB(255, 202, 249, 249),
                    child: ListTile(
                      onTap: () => launchURL('https://github.com/$github'),
                      leading: const Icon(
                        Boxicons.bxl_github,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 25,
                      ),
                      trailing: Text(
                        github,
                        style: GoogleFonts.originalSurfer(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0),
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    shadowColor: Colors.teal,
                    color: const Color.fromARGB(255, 202, 249, 249),
                    child: ListTile(
                      onTap: () => launchURL(
                          'https://stackoverflow.com/users/17798976/$stackOverflow?tab=profile'),
                      leading: const Icon(
                        Boxicons.bxl_stack_overflow,
                        color: Color.fromARGB(255, 218, 123, 39),
                        size: 25,
                      ),
                      // hoverColor: const Color.fromARGB(255, 182, 228, 235),
                      trailing: Text(
                        stackOverflow,
                        style: GoogleFonts.comingSoon(
                          fontSize: 20,
                          color: Color.fromARGB(255, 218, 123, 39),
                          // fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showToast(BuildContext context) {}
  launchURL(String url) async {
    var redirect = Uri.parse(url);
    if (await canLaunchUrl(redirect)) {
      return await launch(url, enableJavaScript: true);
    } else {
      throw 'Could not launch $redirect';
    }
  }
}
