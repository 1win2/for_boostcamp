import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            List.generate(10, (index) => UserStory(userName: 'User $index')),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String userName;
  const UserStory({
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.purple,
                          Colors.red,
                          Colors.orange,
                          Colors.yellow,
                        ]),
                    borderRadius: BorderRadius.circular(45)),
              ),
              Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(44.5),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(41.5)),
              ),
            ],
          ),
          Text(
            userName,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class FeedData {
  final String userName;
  final int like;
  final String content;

  FeedData({required this.userName, required this.content, required this.like});
}

final feedDataList = [
  FeedData(userName: 'User1', content: 'Americano 4000', like: 50),
  FeedData(userName: 'User2', content: 'In the morning', like: 12),
  FeedData(userName: 'User3', content: 'Finally', like: 5),
  FeedData(userName: 'User4', content: 'www', like: 11),
  FeedData(userName: 'User5', content: '~_~', like: 1255),
  FeedData(userName: 'User6', content: 'CHRISTMAS', like: 65),
  FeedData(userName: 'User7', content: 'Instargram', like: 991),
  FeedData(userName: 'User8', content: 'obispo', like: 5),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, int index) =>
          FeedItem(feedData: feedDataList[index]),
      itemCount: feedDataList.length,
    );
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;
  const FeedItem({required this.feedData, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    feedData.userName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.indigo.shade50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                    iconSize: 25,
                    visualDensity: VisualDensity.compact,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.chat_bubble),
                    iconSize: 25,
                    visualDensity: VisualDensity.compact,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.paperplane),
                    iconSize: 25,
                    visualDensity: VisualDensity.compact,
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(CupertinoIcons.bookmark))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 14, bottom: 4),
          alignment: Alignment.centerLeft,
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  children: [
                const TextSpan(
                    text: 'Anonymous_User',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: '님 외'),
                TextSpan(
                    text: ' ${feedData.like}명',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: '이 좋아합니다')
              ])),
        ),
        Container(
          padding: EdgeInsets.only(left: 14, bottom: 4),
          alignment: Alignment.centerLeft,
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  children: [
                TextSpan(
                    text: '${feedData.userName}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' ${feedData.content}'),
              ])),
        ),
        Container(
          padding: EdgeInsets.only(left: 14, bottom: 6),
          alignment: Alignment.centerLeft,
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  children: [
                TextSpan(
                    text: '5일 전',
                    style: TextStyle(fontSize: 13, color: Colors.black54)),
              ])),
        )
      ],
    );
  }
}
