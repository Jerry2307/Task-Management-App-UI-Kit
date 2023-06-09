import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeAvatars extends StatelessWidget {
  const ThreeAvatars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 72.sp,
        child: Stack(
          children: [
            Image.asset('assets/images/Ellipse 2.png'),
            Positioned(
              left: 14.sp,
              child: Image.asset('assets/images/Ellipse 3.png'),
            ),
            Positioned(
              left: 28.sp,
              child: Image.asset('assets/images/Ellipse 4.png'),
            ),
          ],
        ));
  }
}
