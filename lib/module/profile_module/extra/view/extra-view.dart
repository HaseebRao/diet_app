import 'package:diet_app/module/profile_module/extra/controller/extra_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Apperance/widget/apperance_widget.dart';
import '../custom/extra_custom.dart';

class ExtraView extends GetView<RadioListController>{
  @override
  Widget build(BuildContext context) {
  return
  Scaffold(
    body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 21.0),
      child: Column(
        children: [
       SizedBox(
           height: 40.h,
           child: RadioListView()),
        ],
      ),
    ),
  );
  }

}