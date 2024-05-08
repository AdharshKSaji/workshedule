import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workshedule/controller/homescreencontroller.dart';
import 'package:workshedule/view/secondpage/secondpage.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Homescreencontroller controller = Get.put(Homescreencontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(
          "Schedule working time",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      backgroundColor: Colors.cyan.shade100,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Day",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "Shift",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Expanded(
            child: Obx(() =>  ListView.builder(
              itemCount: controller.mylist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.cyan.withOpacity(.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Checkbox(
                            value: controller.mylist[index].isselected,
                            onChanged: (value) {
                              controller.onDaySelection(index);
                            },
                          ),
                        
                        Text(
                          controller.mylist[index].day,
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                        ,color: controller.mylist[index].morning.isselected?Colors.blue:
                        Colors.white),
                          child: TextButton(
                              onPressed: () {},
                              child:
                                  Text(controller.mylist[index].morning.title)),
                        ),
                        Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                        ,color: controller.mylist[index].afternoon.isselected?Colors.blue:
                        Colors.white),
                          child: TextButton(
                              onPressed: () {},
                              child:
                                  Text(controller.mylist[index].afternoon.title)),
                        ),
                        Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                        ,color: controller.mylist[index].night.isselected?Colors.blue:
                        Colors.white),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(controller.mylist[index].night.title)),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(secondscreen());
                  },
                  child: Text("Schedule"))
            ],
          )
        ],
      ),
    );
  }
}
