import 'package:first_app/pages/homepage.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/theme.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => homepage(),
        MyRoutes.homeroute: (context) => homepage(),
        MyRoutes.loginroute: (context) => loginpage(),
      },
    );
  }
}
