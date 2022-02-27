
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

openWhatsapp(context) async{
  var whatsapp ="+201069500944";
  var whatsappURlAndroid = "whatsapp://send?phone="+whatsapp+"&text=السلام عليكم";
  var whatsappURLIos ="https://wa.me/$whatsapp?text=${Uri.parse("السلام عليكم")}";
  if(Platform.isIOS){
    // for iOS phone only
    if( await canLaunch(whatsappURLIos)){
      await launch(whatsappURLIos, forceSafariVC: false);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("whatsapp no installed")));

    }

  }else{
    // android , web
    if( await canLaunch(whatsappURlAndroid)){
      await launch(whatsappURlAndroid);
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("whatsapp no installed")));

    }


  }

}