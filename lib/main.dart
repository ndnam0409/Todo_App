import 'package:flutter/material.dart';
import 'package:todo_app/modal/items.dart';
import 'widget/card_body_widget.dart';
import 'widget/modal_bottom.dart';

void main(List<String> args){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key:key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items =  [
    
  ];

  void handleAddTask(String name){
    final newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
  }

  void handleDeleteTask(String id){
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 199, 212),
        centerTitle: true,
        title: const Text( 
          'ToDo List', 
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      body: SingleChildScrollView(
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items.map((item) => CardBody(
              index: items.indexOf(item),
              item : item, 
              handleDelete: handleDeleteTask,
            )).toList(),
        )
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { 
            showModalBottomSheet(
              backgroundColor: Colors.grey.shade100,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),
              isScrollControlled: true,
              context: context, 
              builder: (BuildContext context){
              return ModalBottom(addTask: handleAddTask);
            });
          }, 
          backgroundColor: const Color.fromARGB(255, 101, 199, 212),
          child: const Icon(
            Icons.add,
            size: 30,
            ),
          ),
    );
  }
}

