import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CheckboxController extends GetxController {
  var isCheckbox1Checked = false.obs; // Use "obs" to make it observable.
  var isCheckbox2Checked = false.obs;
}