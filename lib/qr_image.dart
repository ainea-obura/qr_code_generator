// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:screenshot/screenshot.dart';
// import 'package:share_plus/share_plus.dart';

// class QRImage extends StatelessWidget {
//   const QRImage(this.controller, this.descriptionController, {Key? key})
//       : super(key: key);

//   final TextEditingController controller;
//   final TextEditingController descriptionController;
//   final GlobalKey<ScreenshotState> _screenshotKey = GlobalKey<ScreenshotState>();

  
//   Future<void> _captureAndSharePng(BuildContext context) async {
//     try {
//       Uint8List? imageUint8List = await _screenshotKey.currentState?.capture();
//       if (imageUint8List != null) {
//         await Share.shareFiles(
//           ['data:image/png;base64,${Uint8List.fromList(imageUint8List).base64}'],
//           text: 'Check out this QR code and description!',
//           subject: 'QR Image',
//           mimeTypes: ['image/png'],
//         );
//       }
//     } catch (e) {
//       print("Error: $e");
//       // Handle error if any
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter + QR code'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.share),
//             onPressed: () => _captureAndSharePng(context),
//           ),
//         ],
//       ),
//       body: Screenshot(
//         key: _screenshotKey,
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               QrImageView(
//                 data: controller.text,
//                 size: 280,
//                 // Other properties for QR code customization
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 descriptionController.text,
//                 style: const TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


 import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRImage extends StatelessWidget {
  const QRImage(this.controller, this.descriptionController, {super.key});

  final TextEditingController controller;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + QR code'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImageView(
                data: controller.text,
                size: 280,
                // You can include embeddedImageStyle Property if you 
                //wanna embed an image from your Asset folder
                embeddedImageStyle: const QrEmbeddedImageStyle(
                  size: Size(
                    100,
                    100,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            Text(
              descriptionController.text,
              style: const TextStyle(fontSize: 18),
            ),
            ],
          ),
        ),
     );
   }
}




//  import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class QRImage extends StatelessWidget {
//   const QRImage(this.controller, {super.key});

//   final TextEditingController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter + QR code'),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: QrImageView(
//             data: controller.text,
//             size: 280,
//             // You can include embeddedImageStyle Property if you 
//             //wanna embed an image from your Asset folder
//             embeddedImageStyle: const QrEmbeddedImageStyle(
//               size: Size(
//                 100,
//                 100,
//               ),
//             ),
//           ),
//         ),
//      );
//    }
// }


