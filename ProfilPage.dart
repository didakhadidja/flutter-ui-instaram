import 'package:flutter/material.dart';
import 'package:flutter_instagram/Widgets/Story.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> with TickerProviderStateMixin {
  List<String>Posts=[
    "assets/images/1_1 Image.png",
    "assets/images/4_5 Image (2).png",
    "assets/images/1_1 Image.png",
    "assets/images/4_5 Image (2).png",
    "assets/images/1_1 Image.png",
    "assets/images/4_5 Image (2).png",
    "assets/images/1_1 Image.png",
  ];
  List<String>PostsTag=[
    "assets/images/1_1 Image.png",
    "assets/images/4_5 Image (2).png",
    "assets/images/1_1 Image.png",
    "assets/images/4_5 Image (2).png",
  ];
  List<Widget> _stories=[
    Story(name: "Your",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash 1.png",),
    Story(name: "Rufl",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",),
    Story(name: "Mark",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/bambi-corro-fTPUpUhiBSc-unsplash 1.png",),
    Story(name: "Redex",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/1_1 Image.png",),
    Story(name: "Stane",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash 1.png",),
    Story(name: "Leena",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",),
    Story(name: "Khadi",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/bambi-corro-fTPUpUhiBSc-unsplash 1.png",),
    Story(name: "Yasmi",height: 65,width: 65,couleur: Colors.grey[500].value,image: "assets/images/1_1 Image.png",),
  ];

  /*void initState() {
    super.initState();
   // _tabController = TabController(vsync: this, length: 2);
  }*/

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(vsync: this, length: 2);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/icons/IG logo.png"),
        actions: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/add.svg",width: 30,),
              onPressed: (){}
          ),
          IconButton(
              icon: Icon(Icons.menu,color: Colors.black,size: 35,),
              onPressed: (){}
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10,right: 20,left: 20),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 3,color: Colors.red),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: ExactAssetImage("assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text("0.000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    SizedBox(height: 7,),
                    Text("Posts",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),),
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text("0.000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    SizedBox(height: 7,),
                    Text("Followers",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),),
                  ],
                ),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Text("0.000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    SizedBox(height: 7,),
                    Text("Following",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),),
                  ],
                ),
              ],
            ),
          ),
          /**** bio ****/
          Container(
            margin: EdgeInsets.only(top: 10,right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Reffles",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                SizedBox(height: 3,),
                Text("Love travels and animals \nEnjoy your life Exford University student",
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,),
                ),
              ],
            ),
          ),
          /**** Edit Profil ****/
          Container(
            margin: EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 5),
            height: 35,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5,color: Colors.grey[700]),
            ),
            child: Center(child: Text("Edit Profile",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
          ),
          /**** Story a la une ****/
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 5,left: 0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
                itemBuilder: (context, int index){
                  return _stories[index];
                }
            ),
          ),
          SizedBox(height: 10,),
          /**** Posts ****/
          Container(
            child: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.grey[900],
              controller: _tabController,
              tabs: [
                Tab(
                icon: SvgPicture.asset("assets/icons/Vector.svg",),
                ),
                Tab(
                  icon: SvgPicture.asset("assets/icons/Union.svg"),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: ClampingScrollPhysics(),
              controller: _tabController,
              children: [
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Posts.length,
                    itemBuilder: (context,int index){
                      return Container(
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(Posts[index]),
                            fit: BoxFit.cover,
                          )
                        ),
                      );
                    }
                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    padding: EdgeInsets.only(right: 1,left: 1),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: PostsTag.length,
                    itemBuilder: (context,int index){
                      return Container(
                        height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage(PostsTag[index]),
                              fit: BoxFit.cover,
                            )
                        ),
                      );
                    }
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
