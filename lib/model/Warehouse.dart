import 'package:simple_flutter_app/model/GpsLocation.dart';

class Warehouse {
  int id;
  double area;
  String name;
  String address;
  String contactPhone;
  GpsLocation gpsLocation;
  String email;
  String imageUrl;

  Warehouse(
      {required this.id,
      required this.area,
      required this.name,
      required this.address,
      required this.contactPhone,
      required this.gpsLocation,
      required this.email,
      required this.imageUrl});
}


  // {
  //   "Id": 837,
  //   "p0": "Michael B",
  //   "p1": "01/01/2000",
  //   "p2": "0986775890",
  //   "p3": "staff@gmail.com",
  //   "p4": "151 To Hien Thanh",
  //   "p5": "Sale",
  //   "p6": "Male"
  // },