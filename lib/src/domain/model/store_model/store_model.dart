
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/src/domain/model/rating/rating_model.dart';

part 'store_model.freezed.dart';
part 'store_model.g.dart';

@freezed
class StoreModel with _$StoreModel{
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
 const factory StoreModel({
    required num id,
    required String title,
    required num price,
    required String description,
    required String category,
    required String image,
    required Rating rating,
  }) = _StoreModel;

 factory StoreModel.fromJson(Map<String,Object?> json)=> _$StoreModelFromJson(json);
}

final Map jk = {
  "id": 1,
  "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  "price": 109.95,
  "description":
  "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
  "category": "men's clothing",
  "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
  "rating": {"rate": 3.9, "count": 120}
};


