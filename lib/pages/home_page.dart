import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});
  static final String id = "Home_page";

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("facebook",style: TextStyle(color: Colors.blueAccent,fontSize: 30,fontWeight: FontWeight.bold),),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.grey.shade800,),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt),color: Colors.grey.shade800,),
        ],
      ),
      body: ListView(
        children: [
          // post create
          Container(
            height: 120,
            color: Colors.white,
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/user_5.jpeg"),
                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 10,right: 10),
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                border: Border.all(
                                  color: Colors.grey.shade500,
                                  width: 1
                                )
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "What's on your mind",
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                        )
                      ],
                    )
                ),

                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.video_call,color: Colors.red,),
                                SizedBox(width: 5,),
                                Text("Live"),
                              ],
                            )
                        ),
                        Container(
                          width: 1,
                          color: Colors.grey,
                          margin: EdgeInsets.only(bottom: 17,top: 17),
                        ),
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo,color: Colors.green,),
                                SizedBox(width: 5,),
                                Text("Photo"),
                              ],
                            )
                        ),
                        Container(
                          width: 1,
                          color: Colors.grey,
                          margin: EdgeInsets.only(bottom: 17,top: 17),
                        ),
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on,color: Colors.red,),
                                SizedBox(width: 5,),
                                Text("Check in"),
                              ],
                            )
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
          // stories
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10,bottom: 10),
            height: 200,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User Five",
                ),
                makeStory(
                  storyImage: "assets/images/story_4.jpeg",
                  userImage: "assets/images/user_4.jpeg",
                  userName: "User Four",
                ),
                makeStory(
                  storyImage: "assets/images/story_3.jpeg",
                  userImage: "assets/images/user_3.jpeg",
                  userName: "User Three",
                ),
                makeStory(
                  storyImage: "assets/images/story_2.jpeg",
                  userImage: "assets/images/user_2.jpeg",
                  userName: "User Two",
                ),
                makeStory(
                  storyImage: "assets/images/story_1.jpeg",
                  userImage: "assets/images/user_1.jpeg",
                  userName: "User One",
                ),
              ],
            ),
          ),
          // feed
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/user_2.jpeg",
            feedTime: "1 hour ago",
            feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined",
            feedImage: "assets/images/story_2.jpeg",
          ),

          makeFeed(
            userName: "User Three",
            userImage: "assets/images/user_3.jpeg",
            feedTime: "1 hour ago",
            feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined",
            feedImage: "assets/images/story_3.jpeg",
          ),

          makeFeed(
            userName: "User Four",
            userImage: "assets/images/user_4.jpeg",
            feedTime: "1 hour ago",
            feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined",
            feedImage: "assets/images/story_4.jpeg",
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage,userImage,userName}){
    return AspectRatio(
        aspectRatio: 1.3/2.0,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.1),
                ]
              ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Text(userName,style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName,userImage,feedTime,feedText,feedImage}){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          //part 1
          Container(
            padding: EdgeInsets.only(right: 10,left: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade900),),
                            Text(feedTime,style: TextStyle(fontSize: 15,color: Colors.grey),),
                          ],
                        )
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.grey.shade600,size: 30,))
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText,style: TextStyle(fontSize: 15,color: Colors.grey.shade800,height: 1.5,letterSpacing: .7),),
                SizedBox(height: 10,),
              ],
            ),
          ),
          //part 2
          Container(
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(feedImage),
                fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(height: 10,),
          // like buttons
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5,0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5,),
                    Text("2.5K",style: TextStyle(fontSize: 15,color: Colors.grey.shade800),)
                  ],
                ),
                Text('400 coments',style: TextStyle(color: Colors.grey.shade800,fontSize: 14),),
              ],
            ),
          ),

          SizedBox(height: 20,),
          // Comment section
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Center(
        child: Icon(Icons.thumb_up,color: Colors.white,size: 10,),
      ),
    );
  }
  Widget makeLove(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: Center(
        child: Icon(Icons.favorite,color: Colors.white,size: 10,),
      ),
    );
  }


  // part two comment section
  Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.thumb_up,size: 18,color: isActive? Colors.blue: Colors.grey,),
            SizedBox(width: 5,),
            Text("Like",style: TextStyle(color: isActive? Colors.blue: Colors.grey,),),
          ],
        ),
      )
    );
  }

  Widget makeCommentButton(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        child: Center(
          child: Row(
            children: [
              Icon(Icons.chat,size: 18,color: Colors.grey,),
              SizedBox(width: 5,),
              Text("Comment",style: TextStyle(color: Colors.grey,),),
            ],
          ),
        )
    );
  }
  Widget makeShareButton(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        child: Center(
          child: Row(
            children: [
              Icon(Icons.share,size: 18,color: Colors.grey,),
              SizedBox(width: 5,),
              Text("Share",style: TextStyle(color: Colors.grey,),),
            ],
          ),
        )
    );
  }
}
