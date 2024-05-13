import 'package:get/get.dart';
import 'package:selectworkingtime/models/scheduleModel.dart';

class SheduleScreenController extends GetxController {
  List worklist = [];
  RxList<DayModel> mylist = [
    DayModel(
        day: "Sunday",
        morning: ShiftModel(title: "morning"),
        afternoon: ShiftModel(title: "afternoon"),
        night: ShiftModel(title: "night")),
    DayModel(
        day: "Monday",
        morning: ShiftModel(title: "morning"),
        afternoon: ShiftModel(title: "afternoon"),
        night: ShiftModel(title: "night")),
    DayModel(
        day: "Tuesday",
        morning: ShiftModel(title: "morning"),
        afternoon: ShiftModel(title: "afternoon"),
        night: ShiftModel(title: "night")),
    DayModel(
        day: "Wednesday",
        morning: ShiftModel(title: "morning"),
        afternoon: ShiftModel(title: "afternoon"),
        night: ShiftModel(title: "night")),
    DayModel(
        day: "Thursday",
        morning: ShiftModel(title: "morning"),
        afternoon: ShiftModel(title: "afternoon"),
        night: ShiftModel(title: "night")),
    DayModel(
        day: "Friday",
        morning: ShiftModel(title: "morning"),
        afternoon: ShiftModel(title: "afternoon"),
        night: ShiftModel(title: "night")),
    DayModel(
        day: "Saturday",
        morning: ShiftModel(title: "morning"),
        afternoon: ShiftModel(title: "afternoon"),
        night: ShiftModel(title: "night")),
  ].obs;
  onDaySelection(int index) {
    mylist[index].isDaySelected = !mylist[index].isDaySelected;
    if (mylist[index].isDaySelected = true) {
      mylist[index].morning.isSelected = true;
      mylist[index].afternoon.isSelected = true;
      mylist[index].night.isSelected = true;
    } else {
      mylist[index].morning.isSelected = false;
      mylist[index].afternoon.isSelected = false;
      mylist[index].night.isSelected = false;
    }
    mylist.refresh();
  }

  onShiftSelection(int index) {
    if (mylist[index].morning.isSelected ||
        mylist[index].afternoon.isSelected ||
        mylist[index].night.isSelected) {
      mylist[index].isDaySelected = true;
    } else {
      mylist[index].isDaySelected = false;
    }
    mylist.refresh();
  }

  onMorningselection(int index) {
    mylist[index].morning.isSelected = !mylist[index].morning.isSelected;
    onShiftSelection(index);
    mylist.refresh();
  }

  onafternoonselection(int index) {
    mylist[index].afternoon.isSelected = !mylist[index].afternoon.isSelected;
    onShiftSelection(index);

    mylist.refresh();
  }

  onnightselection(int index) {
    mylist[index].night.isSelected = !mylist[index].night.isSelected;
    onShiftSelection(index);

    mylist.refresh();
  }

  onWork() {
    for (var i = 0; i < mylist.length - 1; i++) {
      if (mylist[i].isDaySelected == true) {
        worklist.add(DayModel(
            day: mylist[i].day,
            morning: mylist[i].morning,
            afternoon: mylist[i].afternoon,
            night: mylist[i].night));
      }
    }
  }
}
