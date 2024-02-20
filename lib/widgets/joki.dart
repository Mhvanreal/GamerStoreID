import 'package:flutter/material.dart';
import 'package:project/JOKI/Jasa_Clasik.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/JOKI/Jasa_MCL.dart';
import 'package:project/JOKI/Jasa_Mabar.dart';
import 'package:project/JOKI/Jasa_Montage.dart';
import 'package:project/JOKI/Jasa_rank.dart';

class listJoki extends StatelessWidget {
  List<String> img = [
    // 'JASA MCL', 
    'JASA RANK',
    'JASA CLASIK',
    'JASA MABAR',
    'JASA MCL',
    'JASA MONTAGE',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (78 / 100),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // color: Color(0xff38A3A5),
            ),
            child: InkWell(
              onTap: () {
                navigateToPage(context, img[i]);
              },
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double imageSize = constraints.maxWidth;
                  return Container(
                    width: imageSize,
                    height: imageSize,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/${img[i]}.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}

void navigateToPage(BuildContext context, String imgName) {
  if (imgName == 'JASA MCL') {
    Navigator.push(context, MaterialPageRoute(builder: (context) => JasaMCL()));
    } else if (imgName == 'JASA RANK') { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => JasaRank()));
    } else if (imgName == 'JASA CLASIK') { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => JasaClasik()));
    } else if (imgName == 'JASA MABAR') { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => JasaMabar()));
    } else if (imgName == 'JASA MONTAGE') { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => JasaMontage()));
  } else {
    // Handle other cases if needed
  }
}
