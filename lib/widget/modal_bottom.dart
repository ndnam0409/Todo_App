import 'package:flutter/material.dart';


class ModalBottom extends StatelessWidget {
  const ModalBottom({
    super.key,
  });

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
            const TextField(
              decoration: InputDecoration(
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
                onPressed: () {}, 
                child: const Text('Add Task'),
                
              ),
            )
          ]
        )
      ),
    );
  }
}

