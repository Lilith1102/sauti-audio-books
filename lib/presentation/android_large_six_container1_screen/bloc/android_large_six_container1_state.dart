// ignore_for_file: must_be_immutable

part of 'android_large_six_container1_bloc.dart';

/// Represents the state of AndroidLargeSixContainer1 in the application.
class AndroidLargeSixContainer1State extends Equatable {
  AndroidLargeSixContainer1State({this.androidLargeSixContainer1ModelObj});

  AndroidLargeSixContainer1Model? androidLargeSixContainer1ModelObj;

  @override
  List<Object?> get props => [
        androidLargeSixContainer1ModelObj,
      ];
  AndroidLargeSixContainer1State copyWith(
      {AndroidLargeSixContainer1Model? androidLargeSixContainer1ModelObj}) {
    return AndroidLargeSixContainer1State(
      androidLargeSixContainer1ModelObj: androidLargeSixContainer1ModelObj ??
          this.androidLargeSixContainer1ModelObj,
    );
  }
}
