import 'dart:math';
import 'package:flutter/material.dart';

class Controller{
  String name = "Choose Charater";
  String name_2 = "From";
  Random random = Random();
  int result = -1;
  String imageLocation = "images/Hololive_Production.png";



  void onTap() {
    result = random.nextInt(8);

    switch(result)
    {
      case 0:
        {
          name = "Suisei";
          imageLocation = "images/suisei.png";
          break;
        }
      case 1:
        {
          name = "Fubuki";
          imageLocation = "images/fubuki.png";
          break;
        }
      case 2:
        {
          name = "Marin";
          imageLocation = "images/marin.png";
          break;
        }
      case 3:
        {
          name = "Pekora";
          imageLocation = "images/Pekora.png";
          break;
        }
      case 4:
        {
          name = "Aqua";
          imageLocation = "images/Aqua.png";
          break;
        }
      case 5:
        {
          name = "Flare";
          imageLocation = "images/Flare.png";
          break;
        }
      case 6:
        {
          name = "Noel";
          imageLocation = "images/Noel.png";
          break;
        }
      case 7:
        {
          name = "Iroha";
          imageLocation = "images/Iroha.png";
          break;
        }
    }
    print(name);

    if(result == -1)
      name_2 = "\nFrom";
    else
      name_2 = "";

  }
}