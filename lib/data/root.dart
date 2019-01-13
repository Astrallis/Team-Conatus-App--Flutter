import 'package:scoped_model/scoped_model.dart';
import './gallery_data.dart';
import './coordinators_data.dart';


class RootModel extends Model with GalleryData, CoordinatorsData {
}