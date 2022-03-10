import 'package:flutter/material.dart';
import 'package:tugas_majoo_chapter_2/context_ext.dart';

class PotraitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = context.media.size.height;
    final screenWidth = context.media.size.width;
    final statusBar = context.media.padding.top;
    final finalHeight = screenHeight - statusBar;
    return Scaffold(
      body: Stack(
        children: [
          _header(finalHeight, context),
          Container(
            padding: EdgeInsets.only(top: screenHeight * 0.30),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildContainer1(screenWidth, finalHeight, context),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  buildContainer2(screenWidth, finalHeight, context),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  buildContainer3(screenWidth, finalHeight, context),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    "Note : Data harian COVID-19 biasanya UPDATE pada pukul sekitar 17.00 WIB",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13 * context.media.textScaleFactor,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _header(double finalHeight, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.media.size.width * 0.04),
      decoration: BoxDecoration(
          color: Color(0xFFACC7FF),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(context.media.size.height * 0.05),
              bottomLeft: Radius.circular(context.media.size.height * 0.05))),
      width: context.media.size.width,
      height: finalHeight * 0.40,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: context.media.size.width * 0.10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Perkembangan",
              style: TextStyle(
                  color: Color(0xFF0E2955),
                  fontSize: 32 * context.media.textScaleFactor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "COVID-19 Indonesia",
              style: TextStyle(
                  color: Color(0xFF0E2955),
                  fontSize: 32 * context.media.textScaleFactor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Last update: 2022-02-25 17:18:55",
              style: TextStyle(
                  color: Color(0xFF0E2955),
                  fontSize: 16 * context.media.textScaleFactor,
                  fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: EdgeInsets.only(top:  context.media.size.height * 0.02),
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.refresh,
                  color: Colors.black,
                  size: context.media.size.width * 0.05,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer1(
      double screenWidth, double finalHeight, BuildContext context) {
    return Container(
      width: screenWidth,
      height: finalHeight * 0.15,
      padding: EdgeInsets.only(
          left: screenWidth * 0.03,
          top: finalHeight * 0.01,
          bottom: finalHeight * 0.01),
      decoration: BoxDecoration(
          color: const Color(0xFFFFDDC4),
          borderRadius: BorderRadius.circular(screenWidth * 0.04)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kasus Aktif",
            style: TextStyle(
                color: Color(0xFFAA6F3A),
                fontSize: 16 * context.media.textScaleFactor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "5,457,775",
            style: TextStyle(
                color: Color(0xFFAA6F3A),
                fontSize: 34 * context.media.textScaleFactor,
                fontWeight: FontWeight.w800),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "49,447",
                style: TextStyle(
                    color: const Color(
                      0xFFAA6F3A,
                    ),
                    fontSize: 15 * context.media.textScaleFactor,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_upward,
                color: const Color(
                  0xFFAA6F3A,
                ),
                size: context.media.size.width * 0.05,
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainer2(
      double screenWidth, double finalHeight, BuildContext context) {
    return Container(
      width: screenWidth,
      height: finalHeight * 0.15,
      padding: EdgeInsets.only(
          left: screenWidth * 0.03,
          top: finalHeight * 0.01,
          bottom: finalHeight * 0.01),
      decoration: BoxDecoration(
          color: const Color(0xFF97F7B8),
          borderRadius: BorderRadius.circular(screenWidth * 0.04)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sembuh",
            style: TextStyle(
                color: Color(0xFF06713D),
                fontSize: 16 * context.media.textScaleFactor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "4,736,234",
            style: TextStyle(
                color: Color(0xFF06713D),
                fontSize: 34 * context.media.textScaleFactor,
                fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "61,361",
                style: TextStyle(
                    color: const Color(
                      0xFF06713D,
                    ),
                    fontSize: 15 * context.media.textScaleFactor,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_upward,
                color: const Color(
                  0xFF06713D,
                ),
                size: context.media.size.width * 0.05,
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainer3(
      double screenWidth, double finalHeight, BuildContext context) {
    return Container(
      height: finalHeight * 0.15,
      padding: EdgeInsets.only(
          left: screenWidth * 0.03,
          top: finalHeight * 0.01,
          bottom: finalHeight * 0.01),
      decoration: BoxDecoration(
          color: const Color(0xFFFFDAD2),
          borderRadius: BorderRadius.circular(screenWidth * 0.04)),
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Meninggal",
            style: TextStyle(
                color: Color(0xFFC22017),
                fontSize: 15 * context.media.textScaleFactor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "147,586",
            style: TextStyle(
                color: Color(0xFFC22017),
                fontSize: 34 * context.media.textScaleFactor,
                fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "244",
                style: TextStyle(
                    color: const Color(
                      0xFFC22017,
                    ),
                    fontSize: 16 * context.media.textScaleFactor,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_upward,
                color: const Color(
                  0xFFC22017,
                ),
                size: context.media.size.width * 0.05,
              ),
            ],
          )
        ],
      ),
    );
  }
}
