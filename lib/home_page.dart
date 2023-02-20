import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       body: Center(child: Text('Contador: ${controller.value}')),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         },
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Armazenar na Lista',
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        final text = controller.text;
                        setState(() {
                          list.add(text);
                        });

                        controller.clear();
                      },
                      icon: const Icon(Icons.add))
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      print(list);
                      final itens = list[index];
                      return ListTile(title: Text(itens));
                    }))
          ],
        ));
  }
}
