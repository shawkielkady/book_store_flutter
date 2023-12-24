import 'package:bedo/Models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItem extends StatelessWidget {
  final BookModel book;
  const BookItem({required this.book,super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 0.02.sh,horizontal: 0.06.sw),
        height: 0.15.sh,
        width: 0.9.sw,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book.title.toString(),style: TextStyle(fontWeight:FontWeight.w500,fontSize: 25.sp,color: Colors.black54),),
                Text('${book.count} Books',style: TextStyle(fontWeight:FontWeight.w300,fontSize: 13.sp,color: Colors.black45)),
                Text('${book.desc}',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 10.sp,color: Colors.black38)),
              ],
            ),
            SizedBox(width: 0.25.sw,),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Container(
                height: 0.11.sh,
                // width: 0.3.sw,
                child: Image.asset(book.img.toString()),)
            ],)
          ],
        ),
      ),
    );
  }
}
