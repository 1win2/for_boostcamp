import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemListViewer extends StatelessWidget {
  ItemListViewer(this.title, this.itemList,
      {this.isJustList = true, super.key});
  bool isJustList;
  List itemList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return isJustList
        ? JustList(title: title, itemList: itemList)
        : RecipeList(title: title, itemList: itemList);
  }
}

class JustList extends StatelessWidget {
  const JustList({
    super.key,
    required this.title,
    required this.itemList,
  });

  final String title;
  final List itemList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title.text.size(20).make(),
        const SizedBox(height: 7),
        Container(
          height: 100,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 50,
                child: Column(
                  children: [
                    Image.asset(
                      itemList[index].imagepath,
                      width: 65,
                    ),
                    Text(itemList[index].name),
                  ],
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: itemList.length,
          ),
        )
      ],
    ).pSymmetric(v: 10, h: 30);
  }
}

class RecipeList extends StatefulWidget {
  const RecipeList({
    super.key,
    required this.title,
    required this.itemList,
  });

  final String title;
  final List itemList;

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title.text.size(20).make(),
        const SizedBox(height: 7),
        Container(
          height: 140,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.asset(
                    widget.itemList[index].imagepath,
                    width: 120,
                    height: 112.1,
                  ).pOnly(right: 15),
                  Container(
                      alignment: Alignment.center,
                      width: 130,
                      height: 121,
                      child: Container(
                          width: 90,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.itemList[index].name,
                            textAlign: TextAlign.center,
                          ))),
                ],
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: widget.itemList.length,
          ),
        ),
      ],
    ).pSymmetric(v: 10, h: 30);
  }
}
