

import 'package:store_app/src/data/network_service.dart';
import 'package:store_app/src/domain/repository/store_repository.dart';

late final StoreRepository storeRepository;

void serviceLocator(){
  storeRepository = StoreRepositoryImplementation(network: DioNetwork());
}