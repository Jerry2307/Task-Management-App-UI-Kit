import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OneAvatars extends StatelessWidget {
  const OneAvatars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.sp,
      child: Stack(
        children: [
          Positioned(
            top: 0.sp,
            bottom: 0.sp,
            right: 12.sp,
            child: Image.asset('assets/images/Ellipse 3.png'),
          ),
        ],
      ),
    );
  }
}
