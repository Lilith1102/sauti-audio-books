import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_three_page/models/android_large_three_model.dart';
part 'android_large_three_event.dart';
part 'android_large_three_state.dart';

/// A bloc that manages the state of a AndroidLargeThree according to the event that is dispatched to it.
class AndroidLargeThreeBloc
    extends Bloc<AndroidLargeThreeEvent, AndroidLargeThreeState> {
  AndroidLargeThreeBloc(AndroidLargeThreeState initialState)
      : super(initialState) {
    on<AndroidLargeThreeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    AndroidLargeThreeInitialEvent event,
    Emitter<AndroidLargeThreeState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeThreeModelObj: state.androidLargeThreeModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AndroidLargeThreeState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }
}
