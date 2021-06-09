import 'package:hive/hive.dart';

part 'aman.g.dart';

@HiveType(typeId: 0)
class Aman {
  @HiveField(0)
  int rollno;
  @HiveField(1)
  String name;

  Aman(this.rollno, this.name);
}
