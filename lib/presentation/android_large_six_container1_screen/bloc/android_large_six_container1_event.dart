// ignore_for_file: must_be_immutable

part of 'android_large_six_container1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSixContainer1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSixContainer1Event extends Equatable {}

/// Event that is dispatched when the AndroidLargeSixContainer1 widget is first created.
class AndroidLargeSixContainer1InitialEvent
    extends AndroidLargeSixContainer1Event {
  @override
  List<Object?> get props => [];
}
