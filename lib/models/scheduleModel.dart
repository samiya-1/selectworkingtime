class DayModel {
   bool isDaySelected;
   String day;
   ShiftModel morning;
   ShiftModel afternoon;
   ShiftModel night;

  DayModel({
    this.isDaySelected = false,
    required this.day,
    required this.morning,
    required this.afternoon,
    required this.night,
  });
}

class ShiftModel {
  String title;
  bool isSelected;
  ShiftModel({required this.title, this.isSelected = false});
}
