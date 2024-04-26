
import 'dart:convert';

import 'package:store_app/src/core/api.dart';
import 'package:store_app/src/data/network_service.dart';
import 'package:store_app/src/domain/model/store_model/store_model.dart';

abstract interface class StoreRepository{
  Future<List<StoreModel>> fetchAllCurrencies();
}

class StoreRepositoryImplementation implements StoreRepository{
 final Network network;

 StoreRepositoryImplementation({required this.network});

  @override
  Future<List<StoreModel>> fetchAllCurrencies() async{
    List<StoreModel> storeData = [];
    final String? response = await network.methodGet(api: Apis.getAllData);
    final List data = jsonDecode(response!) as List;
    print("Data2$response");
    storeData = data.map((json) {
      final item = json;
      return StoreModel.fromJson(item as Map<String, Object?>);
    }).toList();
     print("HelloData: $storeData");
    return storeData;
  }

}
