import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../shared/util/CurrencyConverter.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => HomeController();

  Widget build(
    BuildContext context,
    HomeController controller,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeView"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  //Representasi data dalam bentuk Map
                  // User user = User(
                  //     id: item["id"],
                  //     email: item["email"],
                  //     firstName: item["first_name"],
                  //     avatar: item["avatar"]);
                  // User user = User.fromJson(item);
                  // Product products = Product();
                  //CTRL+ALT+SHIFT+B
                  String price = CurrencyConverter.format(item['price']);
                  String createdAt =
                      DateFormat("d MMM y").format(item['created_at']);
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          // item["avatar"],
                          // user.avatar,
                          item["product_name"],
                        ),
                      ),
                      title: Text(item["product_name"]),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(price), Text(createdAt)],
                      ),
                    ),
                  );
                },
              ),
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
