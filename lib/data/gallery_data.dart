import 'package:scoped_model/scoped_model.dart';
import '../utils/conatus_enums.dart';

class GalleryData extends Model {
  static const List<String> _echelon = [];
  static const List<String> _classes = [];
  static const List<String> _odyssey = [];
  static const List<String> _codeofiesta = [];
  static const urlMapping = {
    Event.echelon: _echelon,
    Event.classes: _classes,
    Event.odyssey: _odyssey,
    Event.codeofiesta: _codeofiesta
  };

  Event _selectedEvent;

  set selectedEvent(Event event) => _selectedEvent = event;

  Event get selectedEvent => _selectedEvent;

  /// We are using List.from() which returns the copy of the original list.
  /// Here we are not returning the original list because the state inside the scoped_model
  /// should not be mutable from outside(immutable).
  /// This is similar to redux which is a better state management approach

  List<String> getImageUrls(Event event) {
    return List.from(
        urlMapping[event]); // Looks much more cleaner than switch case
  }
}
