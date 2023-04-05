// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/material.dart';
//
// import 'content_screen.dart';
//
// class ReelsVideo extends StatelessWidget {
//   final List<String> videos = [
//     'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
//     'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
//     'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
//     'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
//     'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
//     'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
//     'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Container(
//               height: 300,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(0),
//                 color: Colors.red,
//               ),
//               child: Swiper(
//                 itemCount: videos.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ContentScreen(
//                     src: videos[index],
//                   );
//                 },
//               )

// child: Stack(
//   children: [
//     Swiper(
//       itemBuilder: (BuildContext context, int index) {
//         return ContentScreen(
//           src: videos[index],
//         );
//       },
//       itemCount: videos.length,
//       scrollDirection: Axis.horizontal,
//     ),
//   ],
// ),
//               ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class GridWidget extends StatefulWidget {
//   const GridWidget({Key? key}) : super(key: key);
//
//   @override
//   State<GridWidget> createState() => _GridWidgetState();
// }
//
// class _GridWidgetState extends State<GridWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 FormField<String>(builder:(FormFieldState<String> state){
//                   return InputDecorator(
//                       decoration: InputDecoration(
//                         hintText:'Category',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5),
//                         )
//                       ),
//                     child: DropdownButtonHideUnderline(
//                       child: DropdownButton<String>(
//                               items:,
//                       ),
//                     ),
//                   );
//                 })
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//

// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// void main() => runApp(const VideoPlayerApp());
//
// class VideoPlayerApp extends StatelessWidget {
//   const VideoPlayerApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Video Player Demo',
//       home: VideoPlayerScreen(),
//     );
//   }
// }
//
// class VideoPlayerScreen extends StatefulWidget {
//   const VideoPlayerScreen({super.key});
//
//   @override
//   State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
// }
//
// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   late VideoPlayerController _controller;
//   bool _onTouch = false;
//   late Timer _timer;
//   late Future<void> _initializeVideoPlayerFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     // Create and store the VideoPlayerController. The VideoPlayerController
//     // offers several different constructors to play videos from assets, files,
//     // or the internet.
//     _controller = VideoPlayerController.network(
//       'http://techslides.com/demos/sample-videos/small.mp4',
//     );
//
//     // Initialize the controller and store the Future for later use.
//     _initializeVideoPlayerFuture = _controller.initialize();
//     // Use the controller to loop the video.
//     _controller.setLooping(true);
//     _controller.play();
//   }
//
//   @override
//   void dispose() {
//     // Ensure disposing of the VideoPlayerController to free up resources.
//     _controller.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Butterfly Video'),
//       ),
//       // Use a FutureBuilder to display a loading spinner while waiting for the
//       // VideoPlayerController to finish initializing.
//       body: SizedBox(
//         height: 300,
//         child: Stack(
//           children: [
//             PageView.builder(itemBuilder: (context, index) {
//               return Container(
//                 height: 500,
//                 child: FutureBuilder(
//                   future: _initializeVideoPlayerFuture,
//                   builder: (context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.done) {
//                       // If the VideoPlayerController has finished initialization, use
//                       // the data it provides to limit the aspect ratio of the video.
//                       return AspectRatio(
//                         aspectRatio: _controller.value.aspectRatio,
//                         // Use the VideoPlayer widget to display the video.
//                         child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(16),
//                               child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(20),
//                                   child: GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             if(_controller.value.isPlaying) {
//                                               _controller.pause();
//                                               print('video pause...');
//                                             } else {
//                                               _controller.play();
//                                               print('video playing...');
//                                             }
//                                           });
//
//                                         },
//                                       child: VideoPlayer(_controller))
//                               )
//                             )),
//                       );
//                     } else {
//                       // If the VideoPlayerController is still initializing, show a
//                       // loading spinner.
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//                   },
//                 ),
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
