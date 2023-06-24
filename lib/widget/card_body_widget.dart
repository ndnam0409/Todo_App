import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardBody extends StatelessWidget {
  CardBody({
    Key? key, 
    required this.item
  }) : super(key:key) ;
var item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xffDFDFDF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Text(
                  'Tập thể dục buổi sáng',
                  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4B4B4B),
                ),
              ),
              Icon(
                Icons.delete_outline,
                color: Color(0xff4B4B4B),
              ),
            ],
        ),
      )
    );
  }
}