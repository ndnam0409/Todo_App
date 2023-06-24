import 'package:flutter/material.dart';
import 'package:todo_app/modal/items.dart';
import 'widget/card_body_widget.dart';
import 'widget/modal_bottom.dart';

void main(List<String> args){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key:key);

  final List<DataItems> items =  [
    DataItems(id: '1', name: 'Tập thể dục buổi sáng'),
    DataItems(id: '2', name: 'Ăn sáng'),
    DataItems(id: '3', name: 'Uống cafe'),
    DataItems(id: '4', name: 'Bơi lội'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade300,
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
          children: items.map((item) => CardBody(item : item)).toList(),
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
              return const ModalBottom();
            });
          }, 
          backgroundColor: Colors.cyan.shade300,
          child: const Icon(
            Icons.add,
            size: 30,
            ),
          ),
    );
  }
}

