import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/colors_utils.dart';

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget(this.widthContainer, {Key? key}) : super(key: key);
  final double widthContainer;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildBody(),
    );
  }

  _buildBody() {
    return Container(
      color: ColorsUtil.white,
      child: Column(
        children: [_body(), const SizedBox(height: 32), _carrousel()],
      ),
    );
  }

  _carrousel() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 12),
          child: const Text(
            'Meus Apps',
            style: TextStyle(
                fontFamily: 'Coolvetica',
                fontSize: 32,
                color: ColorsUtil.green),
          ),
        ),
        CarouselSlider(
          items: [
            _appBanner(
                'Aprendendo SQL',
                3491,
                '\n• Desenvolvido em Java;\n• Estilos em XML;\n• Armazenamento em SQLite;\n• Geração de PDF;\n• Admob.',
                'asset/images/appsql.png'),
            _appBanner(
                'Aprendendo Flutter',
                142,
                '•Desenvolvido em Flutter;\n• Gerência de Estado usando Mobx;\n• Admob.',
                'asset/images/appflutter.png'),
            _appBanner(
                'Saúde nas Mãos',
                38,
                '•Desenvolvido em Flutter;\n• Armazenamento local;\n• Armazenamento remoto usando Firebase;\n• Gerencia de Estado usando Mobx\n• Admob',
                'asset/images/appnutri.png'),
            _appBanner(
                'ShareList',
                62,
                '•Desenvolvido em Java;\n• Estilos em XML;\n• Armazenamento local;\n• Armazenamento em núvem usando Firebase Realtime;\n• Firebase Authentication',
              'asset/images/appsharelist.png'),
            _appBanner(
                'Sons Divertidos',
                39,
                '•Desenvolvido em FLutter,\n• Lib para executar sons;\n• Admob;\n• Gerencia de estado usando Mobx.',
                'asset/images/appanimais.png'),
          ],
          options: CarouselOptions(
              initialPage: 0,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 2)),
        )
      ],
    );
  }

  Widget _appBanner(
      String title, double numberDownloads, String techs, String imagePath) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(32),
          decoration: const BoxDecoration(color: ColorsUtil.white, boxShadow: [
            BoxShadow(
              offset: Offset(2.0, 2.0),
              color: ColorsUtil.greenAc,
              spreadRadius: 3.0,
              blurRadius: 10,
            )
          ]),
          transform: Matrix4.identity()..rotateZ(6 * 3.1415927 / 180),
          child: Container(
            transform: Matrix4.identity()..rotateZ(-6 * 3.1415927 / 180),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontFamily: 'CaviarDreams',
                          fontSize: 32,
                          color: ColorsUtil.greenTwo),
                    ),
                    Row(
                      children: [
                        Text(
                          '$numberDownloads',
                          style: const TextStyle(
                              fontFamily: 'CaviarDreams',
                              fontSize: 22,
                              color: ColorsUtil.greenTwo),
                        ),
                        const Text(
                          ' downloads',
                          style: TextStyle(
                              fontFamily: 'CaviarDreams',
                              fontSize: 12,
                              color: ColorsUtil.greenTwo),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Tecnologias Usadas',
                      style: TextStyle(
                          fontFamily: 'CaviarDreams',
                          fontSize: 14,
                          color: ColorsUtil.greenTwo),
                    ),
                    Text(
                      techs,
                      style: const TextStyle(
                          fontFamily: 'CaviarDreams',
                          fontSize: 14,
                          color: ColorsUtil.greenTwo),
                    )
                  ],
                ),
                Image.asset(
                  imagePath,
                  height: 300,
                  width: 200,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _body() {
    return SizedBox(
        height: 305,
        width: widthContainer * 0.82,
        child: Stack(
          children: [
            Positioned(
              bottom: -1,
              right: 1,
              child: Container(
                color: ColorsUtil.greenTwo,
                width: widthContainer * 0.8,
                height: 200,
              ),
            ),
            _rowProfile(),
          ],
        ));
  }

  Widget _rowProfile() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: const BoxDecoration(color: ColorsUtil.green,
          // borderRadius: BorderRadius.only(bottomRight: Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              offset: Offset(2.0, 2.0),
              color: ColorsUtil.greenAc,
              spreadRadius: 0.0,
              blurRadius: 10,
            )
          ]),
      width: widthContainer * 0.8,
      height: 285,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: widthContainer * 0.5,
            child: const Text(
                'Bacharel em Sistemas de Informação, pós-graduando em Desenvolvimento Mobile e certificado pelo Google em Play Store Listing, sou apaixonado por desenvolvimento de apps.'
                '\nAtualmente atuando como desenvolvedor flutter.'
                '\nTenho alguns projetos pessoais publicados na Play Store. Alguns apps com mais de 3000 downloads.'
                '\nConvido você, me chame para conversarmos sobre tecnologia, e novidades em geral sobre mobile.'
                '\nVisite meu repositório no GitHub 😉'),
          ),
          const SizedBox(
            width: 32,
          ),
          Column(
            children: [
              _imageProfile(),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _launchUrl('https://github.com/AirtonFreitas');
                    },
                    child: Image.asset('asset/icons/github.png',
                        color: ColorsUtil.greenTwo, width: 20, height: 20),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _launchUrl(
                          'https://api.whatsapp.com/send?phone=5531988680288&text=Ol%C3%A1,%20vi%20seu%20portifólio.');
                    },
                    child: Image.asset('asset/icons/whatsapp.png',
                        color: ColorsUtil.greenTwo, width: 20, height: 20),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _launchUrl('https://www.instagram.com/airtonsqf/');
                    },
                    child: Image.asset('asset/icons/instagram.png',
                        color: ColorsUtil.greenTwo, width: 20, height: 20),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _launchUrl(
                          'https://www.facebook.com/airton.siqueiradefreitas');
                    },
                    child: Image.asset('asset/icons/facebook.png',
                        color: ColorsUtil.greenTwo, width: 20, height: 20),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      _launchUrl(
                          'https://www.linkedin.com/in/airton-siqueira-85260b174/');
                    },
                    child: Image.asset('asset/icons/linkedin.png',
                        color: ColorsUtil.greenTwo, width: 20, height: 20),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _imageProfile() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          border: Border.all(color: ColorsUtil.yellow),
          image: const DecorationImage(
              image: AssetImage('asset/images/profile.png')),
          borderRadius: const BorderRadius.all(Radius.circular(180))),
    );
  }

  Future<void> _launchUrl(String urlReceived) async {
    final Uri url = Uri.parse(urlReceived);

    await launchUrl(url);
  }
}
