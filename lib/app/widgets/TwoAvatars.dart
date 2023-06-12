import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TwoAvatars extends StatelessWidget {
  const TwoAvatars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.sp,
      child: Padding(
        padding: EdgeInsets.only(left: 10.sp),
        child: Stack(
          children: [
            Image.asset('assets/images/Ellipse 2.png'),
            Positioned(
              left: 12.sp,
              child: Image.asset('assets/images/Ellipse 3.png'),
            ),
          ],
        ),
      ),
    );
  }
}
