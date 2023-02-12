import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/colors_utils.dart';

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget(this.widthContainer, {Key? key}) : super(key: key);
  final double widthContainer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _body(),
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
      decoration: BoxDecoration(color: ColorsUtil.green,
          // borderRadius: BorderRadius.only(bottomRight: Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              offset: Offset(2.0, 2.0),
              color: Colors.black,
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
                      _launchUrl(
                          'https://github.com/AirtonFreitas');
                    },
                    child: Image.asset('asset/icons/github.png',
                        color: ColorsUtil.greenTwo, width: 20, height: 20),
                  ),
                  const SizedBox(width: 16),GestureDetector(
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

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);

    await launchUrl(_url);
  }
}
