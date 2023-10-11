// ignore_for_file: must_be_immutable

part of 'android_large_three_bloc.dart';

/// Represents the state of AndroidLargeThree in the application.
class AndroidLargeThreeState extends Equatable {
  AndroidLargeThreeState({
    this.selectedDropDownValue,
    this.androidLargeThreeModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  AndroidLargeThreeModel? androidLargeThreeModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        androidLargeThreeModelObj,
      ];
  AndroidLargeThreeState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    AndroidLargeThreeModel? androidLargeThreeModelObj,
  }) {
    return AndroidLargeThreeState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      androidLargeThreeModelObj:
          androidLargeThreeModelObj ?? this.androidLargeThreeModelObj,
    );
  }
}
