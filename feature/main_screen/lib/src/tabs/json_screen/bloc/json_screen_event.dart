part of 'json_screen_bloc.dart';

abstract class JsonScreenEvent {
  const JsonScreenEvent();
}

class Initialize extends JsonScreenEvent {
  const Initialize();
}

class Continue extends JsonScreenEvent {
  const Continue();
}
