import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardBody extends StatelessWidget {
  CardBody({
    Key? key, 
    required this.item,
    required this.handleDelete,
    required this.index
  }) : super(key:key) ;
// ignore: prefer_typing_uninitialized_variables
var item;
// ignore: prefer_typing_uninitialized_variables
var index; 
final Function handleDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: (index % 2 == 0) ? const Color(0xffDFDFDF) : const Color.fromARGB(255, 101, 199, 212),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Text(
                  item.name,
                  style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4B4B4B),
                ),
              ),
              InkWell(
                onTap: () async{
                  if (await confirm(context)){
                    //return print('press OK');
                    handleDelete(item.id);
                  }
                  // ignore: avoid_print
                  return print('press Cancel');
                },
                child: const Icon(
                  Icons.delete_outline,
                  color: Color(0xff4B4B4B),
                ),
              ),
            ],
        ),
      )
    );
  }
}