import 'package:meta/meta.dart';
import '../utils/conatus_enums.dart';

class Coordinator {
  Year year;
  String name;
  String email;
  String imageUrl;
  String description;
  String facebookUrl;
  String instagramUrl;
  String linkedinUrl;
  String githubUrl;

  Coordinator(
      {@required this.year,
      @required this.name,
      @required this.email,
      @required this.description,
      @required this.imageUrl,
      @required this.facebookUrl,
      @required this.instagramUrl,
      @required this.linkedinUrl,
      @required this.githubUrl});
}



