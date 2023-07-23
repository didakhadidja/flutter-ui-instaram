import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram/Widgets/Publication.dart';
import 'package:flutter_instagram/Widgets/Story.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _stories=[
    Story(name: "Your",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash 1.png",),
    Story(name: "Rufl",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",),
    Story(name: "Mark",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/bambi-corro-fTPUpUhiBSc-unsplash 1.png",),
    Story(name: "Redex",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/1_1 Image.png",),
    Story(name: "Stane",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash 1.png",),
    Story(name: "Leena",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",),
    Story(name: "Khadi",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/bambi-corro-fTPUpUhiBSc-unsplash 1.png",),
    Story(name: "Yasmi",height: 80,width: 80,couleur: Colors.red.value,image: "assets/images/1_1 Image.png",),
  ];

  List<Widget> _posts=[
    Publication(name: "Ruffles", profilImage: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",image: ["assets/images/1_1 Image.png","assets/images/4_5 Image (2).png"],likes: 92,temps: 12,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy,Good luck for everyone, enjoy your day,have nice vaccations",),
    Publication(name: "Mark", profilImage: "assets/images/bambi-corro-fTPUpUhiBSc-unsplash 1.png",image: ["assets/images/4_5 Image (2).png","assets/images/1_1 Image.png"],likes: 26,temps: 47,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy",),
    Publication(name: "Redex", profilImage: "assets/images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash 1.png",image: ["assets/images/1_1 Image.png"],likes: 92,temps: 12,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy",),
    Publication(name: "Stefeny", profilImage: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",image: ["assets/images/1_1 Image.png"],likes: 92,temps: 12,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy",),
    Publication(name: "Ruffles", profilImage: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",image: ["assets/images/1_1 Image.png"],likes: 92,temps: 12,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy",),
    Publication(name: "Mark", profilImage: "assets/images/bambi-corro-fTPUpUhiBSc-unsplash 1.png",image: ["assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png"],likes: 26,temps: 47,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy",),
    Publication(name: "Redex", profilImage: "assets/images/jose-alejandro-cuffia-k1LNP6dnyAE-unsplash 1.png",image: ["assets/images/1_1 Image.png"],likes: 92,temps: 12,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy",),
    Publication(name: "Stefeny", profilImage: "assets/images/daniel-apodaca-wmbbbU0LUG8-unsplash 1.png",image: ["assets/images/1_1 Image.png"],likes: 92,temps: 12,body: "Ruffles Hello, good moorning, I wish you a wonderfull day full of energy",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/images/IG logo.png"),
        actions: [
          IconButton(
              icon: SvgPicture.asset("assets/icons/add.svg",width: 35,),
              onPressed: (){}
          ),
          IconButton(
              icon: SvgPicture.asset("assets/icons/heart.svg",width: 35,),
              onPressed: (){}
          ),
          IconButton(
              icon: SvgPicture.asset("assets/icons/messenger.svg",width: 35,),
              onPressed: (){}
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /**** Les story ****/
            Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: _stories.length,
                    itemBuilder: (context,index){
                      return _stories[index];
                    }
                ),
              ),
            /**** Les puplications ****/
            Flexible(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _posts.length,
                  itemBuilder: (context,index){
                    return _posts[index];
                  }
              ),
            ),
          ],
        ),
      ),


    );
  }
}
