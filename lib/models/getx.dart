import 'package:get/get.dart';

class ObverseItem extends GetxController {
  var selectIndex = 0;
  get getSelectIndex => selectIndex;
  void changeIndex(value) {
    selectIndex = value;
    update();
  }

  var amount = 0;
  void changeAmount(value) {
    amount = value;
    update();
  }

  bool favotite = false;
  void changeFavorite() {
    favotite = !favotite;
    update();
  }
}
