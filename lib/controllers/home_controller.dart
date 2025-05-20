import 'package:avis/repositories/local/farmer_record_repository.dart';
import 'package:avis/services/user_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxMap counts = <String, int>{}.obs;
  final FarmerRecordRepository farmerRecordRepository = FarmerRecordRepository();
  RxString name = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _loadCounts();
   populateData();
  }

  void populateData() async{
    UserService userService = UserService();
    Map<String, dynamic> userData = await userService.getUserData();
    name.value = userData['first_name'];
  }

  void _loadCounts() async {
    var countData = await farmerRecordRepository.getCounts();
    counts.assignAll(countData);
  }

  Future<void> refreshCounts() async{
    var countData = await farmerRecordRepository.getCounts();
    counts.assignAll(countData);
  }
}
