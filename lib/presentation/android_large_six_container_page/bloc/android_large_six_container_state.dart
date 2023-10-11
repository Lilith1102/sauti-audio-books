// ignore_for_file: must_be_immutable

part of 'android_large_six_container_bloc.dart';

/// Represents the state of AndroidLargeSixContainer in the application.
class AndroidLargeSixContainerState extends Equatable {
  AndroidLargeSixContainerState({
    this.searchController,
    this.androidLargeSixContainerModelObj,
  });

  TextEditingController? searchController;

  AndroidLargeSixContainerModel? androidLargeSixContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        androidLargeSixContainerModelObj,
      ];
  AndroidLargeSixContainerState copyWith({
    TextEditingController? searchController,
    AndroidLargeSixContainerModel? androidLargeSixContainerModelObj,
  }) {
    return AndroidLargeSixContainerState(
      searchController: searchController ?? this.searchController,
      androidLargeSixContainerModelObj: androidLargeSixContainerModelObj ??
          this.androidLargeSixContainerModelObj,
    );
  }
}
