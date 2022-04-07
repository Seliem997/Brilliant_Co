
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

openWhatsapp(context) async{
  var whatsapp ="+201069500944";
  var whatsappURlAndroid = "whatsapp://send?phone="+whatsapp+"&text=السلام عليكم";
  var whatsappURLIos ="https://wa.me/$whatsapp?text=${Uri.parse("Can someone assist me?")}";
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

// ********** launch Map ----------------

openMap() async {
  const url = 'https://www.google.com/maps/search/?api=1&query=30.7979304,31.0049441';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// *********** launch Mail -----------------

Future launchEmail() async{
  const url = 'mailto:info@brilliant-solutions.net?subject=News&body=New%20plugin';

  if (await canLaunch(url)){
    await launch(url);
  }
}