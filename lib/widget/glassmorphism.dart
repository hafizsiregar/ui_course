import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/theme.dart';

class GlassMorphism extends StatelessWidget {

  final double blur;
  final double opacity;

  GlassMorphism({
    required this.blur,
    required this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: TextFormField(
                  style: TextStyle(
                    color: kWhiteColor.withOpacity(0.7),
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: kGreyColor,
                    ),
                    hintText: 'Search Course, Educators...',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kGreyColor,
                    ),
                    fillColor: kWhiteColor.withOpacity(opacity),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
      ),
    );
  }
}