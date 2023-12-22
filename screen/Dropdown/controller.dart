import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DropdownController extends GetxController {
  var selectedValue = "Option 1".obs;

  void updateSelectedValue(String newValue) {
    selectedValue.value = newValue;
  }
}
