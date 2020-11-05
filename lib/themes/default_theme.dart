import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData defaultTheme() => ThemeData(
      primaryColor: Colors.blue[500],
      accentColor: Colors.white,
      textTheme: TextTheme(
          headline1: GoogleFonts.inter(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          headline2: GoogleFonts.inter(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
    );
