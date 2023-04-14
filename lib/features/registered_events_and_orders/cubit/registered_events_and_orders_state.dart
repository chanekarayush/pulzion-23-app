part of 'registered_events_and_orders_cubit.dart';

abstract class RegisteredEventsAndOrdersState {}

class RegisteredEventsAndOrdersLoaded extends RegisteredEventsAndOrdersState {
  List<RegisteredEvent> registeredEvents;
  RegisteredEventsAndOrdersLoaded(this.registeredEvents);
}

class RegisteredEventsAndOrdersError extends RegisteredEventsAndOrdersState {
  final String errorMessage;

  RegisteredEventsAndOrdersError(this.errorMessage);
}

class RegisteredEventsAndOrdersLoading extends RegisteredEventsAndOrdersState {}