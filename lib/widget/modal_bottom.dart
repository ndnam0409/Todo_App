import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ModalBottom extends StatelessWidget {
  ModalBottom({
    super.key,
    required this.addTask
  });

final Function addTask;

TextEditingController controller = TextEditingController();
// Handle when click Add Task Button
void handleOnclick(BuildContext context){
  final name = controller.text;
  if(name.isEmpty){
    return;
  }
  addTask(name);

  Navigator.pop(context);
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,  
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 200,
        width: double.infinity,
        child: Column(
          children: [
              TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), 
                labelText: 'Type your task here',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () =>  handleOnclick(context),
                child: const Text('Add Task'),
                
              ),
            )
          ]
        )
      ),
    );
  }
}

