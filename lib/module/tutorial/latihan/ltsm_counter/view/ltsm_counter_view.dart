import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_counter_controller.dart';

class LtsmCounterView extends StatefulWidget {
  const LtsmCounterView({Key? key}) : super(key: key);

  Widget build(context, LtsmCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmCounter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 120,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              ? 1. ambil variabel counter, tampilkan ke dalam text
              ! controller.counter lalu tampilkan di dalam Text("")

              ? 2. buat sebuah button, dan tambahkan event ini di dalam event onPressed()
              ! ketika di klik, panggil fungsi updateCounter()
              ! contoh: controller.updateCounter();
              */

              Text(
                '${controller.counter}',
                style: const TextStyle(
                  fontSize: 50.0,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.updateCounter();
                },
                child: const Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmCounterView> createState() => LtsmCounterController();
}
