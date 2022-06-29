import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'BottomBar.dart';
import 'package:image_picker/image_picker.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  final double coverHeight=350;
  final double profileHeight =144;




  @override
  Widget build(BuildContext context) {
    final top =coverHeight - profileHeight /2;


    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
          
          
        ],
      )
    );
  }
  Widget buildTop(){
    final top =coverHeight - profileHeight/2;

   return Stack(
     clipBehavior: Clip.none,
        alignment: Alignment.center ,
        children: [
          buildCoverImage(),
          Positioned(top:top,
          child: buildProfileImage(),),
         
        ]
      

   );

  }

 Widget buildCoverImage()=> Container(
   color: Colors.grey,
   child: Image.network('https://media.istockphoto.com/photos/the-main-attraction-of-paris-and-all-of-europe-is-the-eiffel-tower-in-picture-id1185953092?b=1&k=20&m=1185953092&s=170667a&w=0&h=piovAtT7yPx3v8ovL64iQZJrfF8VMedyyOLf2AuRSUU=',
   height: coverHeight,
   width: double.infinity,
   fit: BoxFit.cover,

   )
 );
 Widget buildProfileImage(){
   return Center(
     child: Stack(
       children: [
 CircleAvatar(
     radius:profileHeight/2,
     backgroundImage: AssetImage('assets/images/t3.jpg')
 ),
 Positioned(
     bottom: 20.0,
     right: 110.0,
     
     
     child: InkWell(
       onTap: (){
       },
       child: Icon(Icons.camera_alt,
       color: Colors.green,
       size:40.0 ),
     ),
     ),
       ],),
   );
 }
 

   Widget buildContent()=> Column(
     children: [
       const SizedBox(height: 80,),
       Text(
         'Jesutoni Aderibigbe',
         style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
       ),
       const SizedBox(height:8),
       Text(
         'Trainee',
         style: TextStyle(fontSize: 20, color: Colors.black)
       ),
       const SizedBox(height: 16,),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           buildSocialIcon(FontAwesomeIcons.slack),
           const SizedBox(width:12),
           buildSocialIcon(FontAwesomeIcons.facebook),
           const SizedBox(width:12),
           buildSocialIcon(FontAwesomeIcons.twitter),
           const SizedBox(width:12),
            buildSocialIcon(FontAwesomeIcons.whatsapp),
           const SizedBox(width:12),

           const SizedBox(height:25),

           

         ],
        
       ),
       const SizedBox(height:16),
       Divider(),
       const SizedBox(height: 16,),
       const SizedBox(height: 15,),

       Container(
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text("To edit profile settings, press "),
             Center(child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                 padding: EdgeInsets.all(20),
               ) ,
               child: Icon(Icons.settings),
               onPressed: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=> BottomVavigationBar()));
                 
               },))
           ]),

       )
       
     ],
   );
   

   Widget buildSocialIcon(IconData icon)=> CircleAvatar(
     radius:25,
     child: Material(
       shape: CircleBorder(),
       clipBehavior: Clip.hardEdge,
       color: Colors.transparent,
       child: InkWell(
         onTap: (){},
         child: Center(child: Icon(icon, size: 32))
       )

     )
   );
  
}

