import 'package:diet_app/module/payment_module/subscription/controller/subscription_controller.dart';
import 'package:get/get.dart';

class SubscriptionBinding implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => SubscriptionController());
  }

}


// SizedBox(width: 10), // Add spacing between checkbox and text
// Text(controller.items[index].text),

//
// class SubscriptionItem {
//   final String text;
//
//   SubscriptionItem(this.text);
// }



// var items = <SubscriptionItem>[
//   SubscriptionItem('Text for Container 1'),
//   SubscriptionItem('Text for Container 2'),
//   SubscriptionItem('Text for Container 3'),
// ].obs;


// SizedBox(height: 5), // Added SizedBox for spacing
// Text(
// 'Additional Text', // Your additional text
// style: TextStyle(
// fontSize: 12, // Adjusted font size
// fontFamily: ApptextStyle.fontfamily,
// color: index == controller.selectedContainerIndex.value
// ? AppColors.whiteTextColor // Change text color when container is tapped
//     : AppColors.blackTextColor, // Otherwise, use black text color
// fontWeight: FontWeight.w500,
// ),
// ),



//
//
// // subscription_controller.dart
// import 'package:get/get.dart';
//
// import '../../../../common/app_text.dart';
//
// class SubscriptionController extends GetxController {
//   var selectedContainerIndex = RxInt(-1); // Initialize with an invalid index
//   var isChecked = <bool>[false, false, false].obs;
//   var text = <modelclass>[
//     modelclass(Apptexts.applaustextes, 'Different Text 1'),
//     modelclass(Apptexts.applaustextes2, 'Different Text 2'),
//     modelclass(Apptexts.applaustextes3, 'Different Text 3'),
//   ].obs;
//
//   void toggleCheckbox(int index, bool value) {
//     isChecked[index] = value;
//   }
//
//   void handleContainerTap(int index) {
//     // If the tapped container is already selected, toggle the checkbox
//     if (index == selectedContainerIndex.value) {
//       toggleCheckbox(index, !isChecked[index]);
//     } else {
//       // Otherwise, update the selected container index and fill the checkbox
//       selectedContainerIndex.value = index;
//       isChecked.assignAll(List.filled(isChecked.length, false)); // Unfill all checkboxes
//       toggleCheckbox(index, true); // Fill the checkbox at the tapped index
//     }
//   }
//
// }
//
// class modelclass {
//   final String texts;
//   final String differentText;
//   modelclass(this.texts, this.differentText);
// }


//
// SizedBox(height: 3),
