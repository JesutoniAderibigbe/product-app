import 'dart:io';

import 'package:app_new/fresh.dart';
import 'package:app_new/videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'videoplayer.dart';

class Camera extends StatefulWidget {
  const Camera({ Key? key }) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? _imageFile;
  final _picker =ImagePicker();


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ButtonBar(
          children: [
            IconButton(
              icon:const Icon(Icons.photo_camera),
              onPressed: () async => _pickImageFromCamera(),
              tooltip: 'Shoot picture'
              ),
              IconButton(
                icon: const Icon(Icons.photo),
                onPressed: () async => _pickImageFromGallery(),
                tooltip: 'Pick from Gallery',
                ),
          ],
          ),
          if(this._imageFile==null)
          const Placeholder()
          else
          Image.file(this._imageFile!),

          SizedBox(height: 16,),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Upload your products for Sale here!",
                style: TextStyle(
                  fontStyle: FontStyle.italic
                )),
                Icon(Icons.sell),
                
              ],)
          ),
          SizedBox(height: 36,),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                  ),
                  child: Text("Click to see Demo"),
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> VideoPlayer()));
                  }),
                ),
                Icon(Icons.ads_click),
                
              ],)
          )
      ],
      
    );
    
  }
  Future<void> _pickImageFromGallery() async {
    final pickedFile= await _picker .pickImage(source: ImageSource.gallery);
    if (pickedFile !=null){
      setState(()=> this._imageFile = File(pickedFile.path));
    }
  }
  Future<void> _pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if(pickedFile !=null){
      setState(()=> this._imageFile = File(pickedFile.path));
    }
  }
 
  
}