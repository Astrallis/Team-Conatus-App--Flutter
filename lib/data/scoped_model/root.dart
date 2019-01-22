import 'package:scoped_model/scoped_model.dart';
import 'package:conatus_app/data/scoped_model/gallery_data.dart';
import 'package:conatus_app/data/scoped_model/coordinators_data.dart';


class RootModel extends Model with GalleryData, CoordinatorsData {
}