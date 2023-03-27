import 'package:flutter/material.dart';
import 'package:flutter_first/shared/util/data_encryptor.dart';
import 'package:flutter_first/shared/util/validator.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeController();

  Widget build(
    BuildContext context,
    HomeController controller,
  ) {
    var password = "123456";
    var hexPassword = DataEncryptor.encrypt(password);

    String email = "demo@dadang.com";
    String name = "Nuresti Aurelia";

    bool isValid = Validator.isValidEmail(email);
    bool isValidName = Validator.isValidName(name);
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeView"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              "isValidName : $isValidName",
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              controller.total.toString(),
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSaveFile("Hello World"),
              child: const Text("Save"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doGeneratePdf(),
              child: const Text("Generate PDF"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
