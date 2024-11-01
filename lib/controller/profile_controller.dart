import 'package:get/get.dart';

class ProfileController extends GetxController {

  final RxBool showFashionistaOptions = false.obs;
  final RxBool showDesignerOptions = false.obs;
  final RxString selectedGender = ''.obs;
  final RxList<String> selectedCategories = <String>[].obs;



  final List<String> maleCategory= ['Casual', 'Smart Casual','Elegant','Skater','Dark Academia','Geek'
  'Hipster','Softboy','E-boy', 'Biker'
  ].obs;
  final List<String> femaleCategory= ['Artsy', 'Bohemian','Casual','Sexy','Chic','Dark Academia','Kidcore'
      'SoftGirl','Tomboy','Vsco Girl', 'Trendy','Royalcore','Cottagecoore','Non-Binary','Light Academia'
  ].obs;


  ///Functions
  void toggleCategorySelection(String category) {
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      if (selectedCategories.length < 3) {
        selectedCategories.add(category);
      }
    }
  }

}