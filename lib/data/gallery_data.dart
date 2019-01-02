import 'package:scoped_model/scoped_model.dart';
import '../utils/conatus_enums.dart';

class GalleryData extends Model {
  List<String> _echelon = [];
  List<String> _classes = [];
  List<String> _odyssey = [];
  List<String> _codeofiesta = [];

  Event _selectedEvent;

  set selectedEvent(Event event) => _selectedEvent = event;

  Event get selectedEvent => _selectedEvent;

  /// We are using List.from() which returns the copy of the original list.
  /// Here we are not returning the original list because the state inside the scoped_model
  /// should not be mutable from outside(immutable).
  /// This is similar to redux which is a better state management approach

  List<String> getImageUrls(Event event) {
    switch (event) {
      case Event.echelon:
        return List.from(_echelon);
      case Event.classes:
        return List.from(_classes);
      case Event.odyssey:
        return List.from(_odyssey);
      case Event.codeofiesta:
        return List.from(_codeofiesta);
      default:
        return List.of(null);
    }
  }
}
