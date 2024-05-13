import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:selectworkingtime/core/ColorConstants.dart';

class SelectedWorkingScreen extends StatefulWidget {
  const SelectedWorkingScreen({super.key});

  @override
  State<SelectedWorkingScreen> createState() => _SelectedWorkingScreenState();
}

class _SelectedWorkingScreenState extends State<SelectedWorkingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.secondarycolor,
      appBar: AppBar(
        title: Text(
          "Selected Working Time",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        backgroundColor: ColorConstants.primarycolor,
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: Text(
                      "Day",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[200],
                    child: Text(
                      "Shift",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TableRow(children: [
              TableCell(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text("Sunday"),
                ),
              ),
              TableCell(
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(8),
                  color: Colors.grey[200],
                  child: Text("Afternoon"),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
