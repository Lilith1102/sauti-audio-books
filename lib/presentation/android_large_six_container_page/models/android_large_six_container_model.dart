// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listtraveltext_item_model.dart';

/// This class defines the variables used in the [android_large_six_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeSixContainerModel extends Equatable {
  AndroidLargeSixContainerModel({this.listtraveltextItemList = const []}) {}

  List<ListtraveltextItemModel> listtraveltextItemList;

  AndroidLargeSixContainerModel copyWith(
      {List<ListtraveltextItemModel>? listtraveltextItemList}) {
    return AndroidLargeSixContainerModel(
      listtraveltextItemList:
          listtraveltextItemList ?? this.listtraveltextItemList,
    );
  }

  @override
  List<Object?> get props => [listtraveltextItemList];
}
