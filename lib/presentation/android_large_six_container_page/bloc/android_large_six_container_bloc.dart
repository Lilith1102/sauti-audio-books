import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listtraveltext_item_model.dart';
import 'package:sauti_app/presentation/android_large_six_container_page/models/android_large_six_container_model.dart';
part 'android_large_six_container_event.dart';
part 'android_large_six_container_state.dart';

/// A bloc that manages the state of a AndroidLargeSixContainer according to the event that is dispatched to it.
class AndroidLargeSixContainerBloc
    extends Bloc<AndroidLargeSixContainerEvent, AndroidLargeSixContainerState> {
  AndroidLargeSixContainerBloc(AndroidLargeSixContainerState initialState)
      : super(initialState) {
    on<AndroidLargeSixContainerInitialEvent>(_onInitialize);
  }

  List<ListtraveltextItemModel> fillListtraveltextItemList() {
    return List.generate(1, (index) => ListtraveltextItemModel());
  }

  _onInitialize(
    AndroidLargeSixContainerInitialEvent event,
    Emitter<AndroidLargeSixContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        androidLargeSixContainerModelObj:
            state.androidLargeSixContainerModelObj?.copyWith(
      listtraveltextItemList: fillListtraveltextItemList(),
    )));
  }
}
