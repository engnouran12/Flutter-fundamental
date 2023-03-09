import 'package:flutter/material.dart';

// 'https://avatars.githubusercontent.com/u/34492145?v=4 ',

class Messanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20, // same padin of body
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQFwnAGIfbGn9g/profile-displayphoto-shrink_800_800/0/1653644561102?e=1667433600&v=beta&t=XyYCGh0JoGD3gJ8aR0GejJ844Lomh6v3funWpuB94ZU'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 15,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          //scroll all body
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //part search&edit
              Container(
                //color: Colors.grey[300],
                padding: EdgeInsets.all(
                    5), // pad consept of container from container
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200], // import as nullsafty
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //story
              Container(
                height: 150,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildstoryitem();
                  },
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 500,
                ),
              ),

              SizedBox(
                height: 10,
              ),
              //chats
              ListView.separated(
                itemBuilder: ((context, index) => buildchatitem()),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 60,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 20,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 1 build item
//2 build list
//3add item to list
Widget buildchatitem() {
  return Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4D03AQFwnAGIfbGn9g/profile-displayphoto-shrink_800_800/0/1653644561102?e=1667433600&v=beta&t=XyYCGh0JoGD3gJ8aR0GejJ844Lomh6v3funWpuB94ZU'),
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(
            bottom: 3,
            end: 3,
          )),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 7,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nouran kadri abdallah aboyusefnnnnnnnnnnnnjfhghgjgdfkgmkgtihfkhmfkhmkfhmtkhjythtkhmtfkhmtkhmkhhmtk',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hi nour,how are you here is my sjere hi collmmmmmmmmmm',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('2:00pm'),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildstoryitem() {
  return Container(
    width: 60,
    child: Column(
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQFwnAGIfbGn9g/profile-displayphoto-shrink_800_800/0/1653644561102?e=1667433600&v=beta&t=XyYCGh0JoGD3gJ8aR0GejJ844Lomh6v3funWpuB94ZU'),
            ),
            Padding(
                padding: EdgeInsetsDirectional.only(
              bottom: 3,
              end: 3,
            )),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 7,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Nouran kadri abdallah aboyusef',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
