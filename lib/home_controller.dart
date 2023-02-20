import 'package:flutter/material.dart';

class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({super.key, required Widget child})
      : super(child: child, notifier: ValueNotifier(0));

  int get value => notifier!.value;

  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  increment() {
    notifier!.value++;
  }
}
