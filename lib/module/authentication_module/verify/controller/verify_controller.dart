import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  TextEditingController otpController = TextEditingController();
  RxBool isLoading = false.obs;

  void verifyOtp() {
    isLoading(true);

    Future.delayed(Duration(seconds: 2), () {
      isLoading(false);

      Get.offAll(NextScreen());
    });
  }
}

// Placeholder for NextScreen class
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(); // Placeholder container
  }
}



// //
// TextStyle(
// fontSize: 28.sp,
// fontWeight: FontWeight.bold,
// color: AppColors.blackTextColor,
// ),
//
// Container(
// width: 58.w,
// height: 58.h,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: AppColors.whiteTextColor,
//
// ),)