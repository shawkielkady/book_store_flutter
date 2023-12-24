import 'package:bedo/Models/book.dart';
import 'package:bedo/consts/app_assets.dart';
import 'package:bedo/consts/app_colors.dart';
import 'package:bedo/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class BookList extends StatelessWidget {
  List<BookModel> books = [
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes),
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes),
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes),
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes),
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes),
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes),
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes),
    BookModel(
        title: 'Busisness',
        count: 35,
        desc: 'this is good book',
        img: AppAssets.busisnes)
  ];
  BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          title: Text(
            'Book List',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.01.sh, horizontal: 0.01.sw),
          child: ListView.builder(
            itemBuilder: (_, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 0.03.sh,
                  ),
                  BookItem(book: books[index])
                ],
              );
            },
            itemCount: books.length,
          ),
        ),
      ),
    );
  }
}
//BookItem(book: books[0])