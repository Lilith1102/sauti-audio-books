import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sauti_app/presentation/android_large_six_container1_screen/models/android_large_six_container1_model.dart';
part 'android_large_six_container1_event.dart';
part 'android_large_six_container1_state.dart';

/// A bloc that manages the state of a AndroidLargeSixContainer1 according to the event that is dispatched to it.
class AndroidLargeSixContainer1Bloc extends Bloc<AndroidLargeSixContainer1Event,
    AndroidLargeSixContainer1State> {
  AndroidLargeSixContainer1Bloc(AndroidLargeSixContainer1State initialState)
      : super(initialState) {
    on<AndroidLargeSixContainer1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeSixContainer1InitialEvent event,
    Emitter<AndroidLargeSixContainer1State> emit,
  ) async {}
}
