
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
class Rating with _$Rating{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory Rating({
    required num rate,
    required num count,
  })= _Rating;

  factory Rating.fromJson(Map<String,Object?> json) => _$RatingFromJson(json);

}