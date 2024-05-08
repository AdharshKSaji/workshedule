class shiftmodel {
  bool isselected;
  String title;
  shiftmodel({this.isselected = false, required this.title});
}

class daymodel {
   bool isselected;
  final String day;
  final shiftmodel morning;
  final shiftmodel afternoon;
  final shiftmodel night;
  daymodel({
    this.isselected = false,
    required this.day,
    required this.morning,
    required this.afternoon,
    required this.night,
  });
}
