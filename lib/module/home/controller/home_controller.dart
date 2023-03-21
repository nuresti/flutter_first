import 'package:flutter/material.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> {
  //start controller
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter += 10;
    });
  }
  //end controller

  //start view
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
  //end view
}
