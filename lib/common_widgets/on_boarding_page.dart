import 'package:flutter/material.dart';
import 'package:fitness_app/common/color_extension.dart';

class OnBoardingPage extends StatelessWidget {
  final Map pObj;

  const OnBoardingPage({super.key, required this.pObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SizedBox(
      child: Container(
        width: media.width,
        height: media.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              pObj["image"].toString(),
              width: media.width,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                pObj["title"].toString(),
                style: TextStyle(
                  color: TextColor.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                pObj["subtitle"].toString(),
                style: TextStyle(
                  color: TextColor.gray,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
