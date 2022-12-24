// ignore_for_file: prefer_const_literals_to_create_immutables, unused_label, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit_tracker/components/enterNewHabit.dart';
import 'package:habit_tracker/components/habitTile.dart';
import 'package:habit_tracker/components/my_fab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //data structure for todays list
  List todaysList = [
    //[habitName, habitCompleted]
    ["Morning Run", false],
    ["Read book", false],
    ["Read book", false],
    ["Read book", false],
  ];

  //checkbox tapped
  void checkBoxTapped(bool? value, int index) {
    setState(() {
      todaysList[index][1] = value;
    });
  }

  // create a new habit
  void createNewHabit() {
    // show alert dialog for user to enter the new habit details
    context:
    context;
    builder:
    (context) {
      return EnterNewHabit();
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: MyFloatingActionButton(
        onPressed: (() => createNewHabit()),
      ),
      body: ListView.builder(
        itemCount: todaysList.length,
        itemBuilder: ((context, index) {
          return HabitTile(
            habitName: todaysList[index][0],
            habitCompleted: todaysList[index][1],
            onChanged: (value) => checkBoxTapped(value, index),
          );
        }),
      ),
    );
  }
}
