import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selectworkingtime/controller/schedulescreencontroller.dart';
import 'package:selectworkingtime/core/ColorConstants.dart';
import 'package:selectworkingtime/view/selectedworkingscreen/selectedworkingscreen.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  SheduleScreenController controller = Get.put(SheduleScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Schedule working time",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        backgroundColor: ColorConstants.primarycolor,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(color: ColorConstants.primarywhite),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Day",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
                Text(
                  "Shift",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            Expanded(
                child: Obx(
              () => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.mylist.length,
                itemBuilder: (context, index) => SingleChildScrollView(
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(color: ColorConstants.ternarycolor),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Checkbox(
                              value: controller.mylist[index].isDaySelected,
                              onChanged: (value) {
                                controller.onDaySelection(index);
                              }),
                          Text(
                            controller.mylist[index].day.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              // controller.onSingledaySelection(
                              controller.onMorningselection(index);
                              //     DayModel(day: controller.mylist[index].day,
                              // morning: morning, afternoon: afternoon, night: night), index),
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                  color: controller
                                          .mylist[index].morning.isSelected
                                      ? ColorConstants.primarycolor
                                      : ColorConstants.primarywhite,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                controller.mylist[index].morning.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 17),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              controller.onafternoonselection(index);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                  color: controller
                                          .mylist[index].afternoon.isSelected
                                      ? ColorConstants.primarycolor
                                      : ColorConstants.primarywhite,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                controller.mylist[index].afternoon.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 17),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              controller.onnightselection(index);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                  color:
                                      controller.mylist[index].night.isSelected
                                          ? ColorConstants.primarycolor
                                          : ColorConstants.primarywhite,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                controller.mylist[index].night.title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 17),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    thickness: 0,
                    color: ColorConstants.white,
                  );
                },
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        child: FloatingActionButton(
          backgroundColor: ColorConstants.secondarycolor,
          onPressed: () {
            Get.to(() => SelectedWorkingScreen());
          },
          child: Text("Schedule"),
        ),
      ),
    );
  }
}
