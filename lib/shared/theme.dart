import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 10.0;

Color kPrimaryColor = Color(0xff003B72);
Color kAccentColor = Color(0xffFDD327);
Color kBlackColor = Color(0xff1F1449);
Color kWhiteColor = Color(0xffFFFFFF);
Color kGreyColor = Color(0xff9698A9);
Color kBackgroundColor = Color(0xffF6F8FA);
Color kTransparentColor = Colors.transparent;

TextStyle blackTextStyle = GoogleFonts.manrope(color: kBlackColor);

TextStyle whiteTextStyle = GoogleFonts.manrope(color: kWhiteColor);

TextStyle greyTextStyle = GoogleFonts.manrope(color: kGreyColor);

TextStyle primaryTextStyle = GoogleFonts.manrope(color: kPrimaryColor);

TextStyle accentTextStyle = GoogleFonts.manrope(color: kAccentColor);

TextStyle titleAppBarTextStyle = GoogleFonts.vollkornSc(
    color: kWhiteColor, fontSize: 18, fontWeight: regular);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
