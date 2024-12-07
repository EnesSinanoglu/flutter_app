import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          Container(
            width: double.infinity,
            child: Column(
              children: [
                // Logo bölümü
                Container(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      'assets/images/steak_4521028.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Positioned(
                  top: 0, // Metni logonun alt kısmına yerleştirmek için
                  child: Container(
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'World Food',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 167, 3),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Yükleniyor yazısı
                CircularProgressIndicator()

                //Inkwell(
                //onTap: () => context.go("/home"),
                //),
                //)

                //DotLottieLoader.fromAsset("assets/motions/loading.lottie",
                //frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                //if (dotlottie != null) {
                //return Lottie.memory(dotlottie.animations.values.single);
                //} else {
                //return Container();
                //}
                //}),

                //SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
