import 'dart:io';

import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  final List<File> images;
  const GalleryScreen({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: images
            .map((image) => Image.file(image, fit: BoxFit.cover))
            .toList(),
      ),
    );



    //**************************************************** */
    //           direct by name of name

    //  final bytes = Io.File('bezkoder.png').readAsBytesSync();
   //    String img64 = base64Encode(bytes);
  // ****************************************************//


  //**************************************************** */
    //              Form gallery

   //    var imageFilePath = await picker.getImage(source: ImageSource.gallery);
   //    final bytes = ImageFilePath.readAsBytesSync();
  //    String _img64 = base64Encode(bytes);
//***************************************************** */



//********************************************** */
// To Decode the image  comming from api //

//  final decodedBytes = base64Decode(img64);
//************************************************ */



//*************************************************************** *//

//             To send encoded image to the api 

//     var r = await Requests.post(
//         'my_URL',
//         headers: {'content-type': 'multipart/form-data'},
//         body: {
//           'image':'$_img64',
//         }
//       );

//********************************************************************** *//


  }
}
