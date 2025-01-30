import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 158, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // Logo ve isim bölümü
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Logo bölümü
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/images/steak_4521028.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    // Uygulama ismi metni
                    Positioned(
                      top: -40, // Metni logonun üst kısmına yerleştirmek için
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: const Text(
                          'World Food',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Burada animasyon üzerine tıklanabilir alan ekliyoruz
                InkWell(
                  onTap: () => context.go("/home"),
                  child: DotLottieLoader.fromAsset(
                    "assets/motions/loading.lottie",
                    frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                      if (dotlottie != null) {
                        return Lottie.memory(
                            dotlottie.animations.values.single);
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),

                const SizedBox(
                    height: 100), // Yükleme animasyonu ile alt boşluk
              ],
            ),
          ),
        ],
      ),
    );
  }
}
