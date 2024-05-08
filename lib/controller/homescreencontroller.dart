import 'package:get/get.dart';
import 'package:workshedule/model/schedulemodel.dart';

class Homescreencontroller extends GetxController {
  RxList<daymodel> mylist = [
    daymodel(
        day: "monday",
        morning: shiftmodel(title: "morning"),
        afternoon: shiftmodel(title: "afternoon"),
        night: shiftmodel(title: "night")),
    daymodel(
        day: "tuesday",
        morning: shiftmodel(title: "morning"),
        afternoon: shiftmodel(title: "afternoon"),
        night: shiftmodel(title: "night")),
    daymodel(
        day: "wednesday",
        morning: shiftmodel(title: "morning"),
        afternoon: shiftmodel(title: "afternoon"),
        night: shiftmodel(title: "night")),
    daymodel(
        day: "thursday",
        morning: shiftmodel(title: "morning"),
        afternoon: shiftmodel(title: "afternoon"),
        night: shiftmodel(title: "night")),
    daymodel(
        day: "friday",
        morning: shiftmodel(title: "morning"),
        afternoon: shiftmodel(title: "afternoon"),
        night: shiftmodel(title: "night")),
    daymodel(
        day: "saturday",
        morning: shiftmodel(title: "morning"),
        afternoon: shiftmodel(title: "afternoon"),
        night: shiftmodel(title: "night")),
    daymodel(
        day: "sunday",
        morning: shiftmodel(title: "morning"),
        afternoon: shiftmodel(title: "afternoon"),
        night: shiftmodel(title: "night")),
  ].obs;
  onDaySelection(int index){
    mylist[index].isselected=!mylist[index].isselected;
    if(mylist[index].isselected==true){
      mylist[index].morning.isselected=true;
      mylist[index].afternoon.isselected=true;
      mylist[index].night.isselected=true;
    }
    else{
      mylist[index].morning.isselected=false;
      mylist[index].afternoon.isselected=false;
      mylist[index].night.isselected=false;
    }
    mylist.refresh();

    

  }
}