import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView(
         padding: EdgeInsets.only(top:40),
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 30),
       children: [
         Container(child: Column(
           children: [
             Image.asset('assets/images/new.jfif'),
             Text("\$500000"),
             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Text("Samsung S8"),
                 Icon(Icons.favorite, color: Colors.red,)
               ],
             )
           ],
         ),
           color:Colors.white,
           height:100,

         ),
         Container(
          child: Column(
            children: [
              Image.asset('assets/images/aac.jfif', height: 130),
              Text("\$200000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung S7"),
                Icon(Icons.favorite, color:Colors.red),
                
                
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),
          Container(
          child: Column(
            children: [
              Image.asset('assets/images/aa2.jfif', height: 130),
              Text("\$350000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung Z10"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),
         Container(
          child: Column(
            children: [
              Image.asset('assets/images/aad.jfif', height: 130),
              Text("\$400000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung A23"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

          Container(
          child: Column(
            children: [
              Image.asset('assets/images/samsung.jfif', height: 130),
              Text("\$360000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung S22 Ultra"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/a90.jpg', height: 130),
              Text("\$220000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung S22 Ultra"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),
         Container(
          child: Column(
            children: [
              Image.asset('assets/images/a88.jfif', height: 130),
              Text("\$320000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung A06"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),
       Container(
          child: Column(
            children: [
              Image.asset('assets/images/A8s.jpg', height: 130),
              Text("\$320000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung A8"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/a71.jpg', height: 130),
              Text("\$320000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung A71"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/a80.jpg', height: 130),
              Text("\$320000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung A80"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/s.jpg', height: 130),
              Text("\$320000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung S"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/J3.jpg', height: 130),
              Text("\$320000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung J3"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/tab6.jpg', height: 130),
              Text("\$11506"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung Tab6"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/TabA.jpg', height: 130),
              Text("\$27650"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung Tab"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),


        Container(
          child: Column(
            children: [
              Image.asset('assets/images/view2.jpg', height: 130),
              Text("\$23450"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung View2"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),
        Container(
          child: Column(
            children: [
              Image.asset('assets/images/J7.jpg', height: 130),
              Text("\$33000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung J7"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/TabA.jpg', height: 130),
              Text("\$2000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung TabA"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),


         Container(
          child: Column(
            children: [
              Image.asset('assets/images/Note3.jpg', height: 130),
              Text("\$15000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung Note3"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),
        

         Container(
          child: Column(
            children: [
              Image.asset('assets/images/TabA.jpg', height: 130),
              Text("\$2000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung TabA"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),


         Container(
          child: Column(
            children: [
              Image.asset('assets/images/coreplus.jpg', height: 130),
              Text("\$15000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung Note3"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

 Container(
          child: Column(
            children: [
              Image.asset('assets/images/TabA.jpg', height: 130),
              Text("\$2000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung TabA"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),


         Container(
          child: Column(
            children: [
              Image.asset('assets/images/coreplus.jpg', height: 130),
              Text("\$15000"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                Text("Samsung Note3"),
                Icon(Icons.favorite, color:Colors.red)
              ])
            ]
          ),



           color:Colors.white,
           height: 100,
         ),

         










         
         


         



       ],
       
       
       
       ),

       

       



      
    );
  }
}