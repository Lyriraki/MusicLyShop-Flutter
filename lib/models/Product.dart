import 'package:flutter/material.dart';

class Product{
  final String image, title, description, brand;
  final int price, id;
  final Color color;

  Product({
    this.image,
    this.title,
    this.description,
    this.price,
    this.brand,
    this.id,
    this.color
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'G&L Tribute JB2 Blueburst',
    description: 'Players fond of the old adage “if it ain’t broke…” haven’t played a JB-2. You see, the G&L JB-2 is all about refinement, blending “holy grail” Alnico single-coil tone with modern Leo Fender improvements.The JB-2’s classic Alnico V pickups have tone reminiscent of the best examples from the early ‘60s, thanks to the work of Paul Gagon, G&L VP Engineering.',
    price: 557,
    brand: 'G&L',
    image: "assets/images/GL-TributeJB2Blueburst.png",
    color: Color.fromRGBO(0, 0, 153, 1),
  ),
  Product(
    id: 2,
    title: 'G&L Tribute MJ4 RW NAT',
    description: 'Evolution is about enhancing and expanding desirable traits while reducing unwanted traits. That was Leo Fender’s† mission for G&L, and that’s exactly what the new MJ-4™ accomplishes The active MJ-4 features G&L’s new Bi-coil Alnico V pickups and MJ-spec preamp/control system for a wide range of single-coil tones from classic jazz to far beyond, all without single-coil hum.',
    price: 665,
    brand: 'G&L',
    image: "assets/images/GL-Tribute-MJ4-RWNAT.png",
    color: Color.fromRGBO(230, 172, 0, 1),
  ),
  Product(
    id: 3,
    title: 'G&L Tribute L2500 Tobacco Sunburst',
    description: 'When Leo Fender launched the G&L L-2000 bass in 1980, it was clear he was ready to make history all over again. Never before had such a wide range of tones come from a single bass, and today the L-2500 packs all the features of the latest L-2000 into a 5-string.',
    price: 721,
    brand: 'G&L',
    image: "assets/images/GL-TributeL2500TobaccoSunburst.png",
    color: Color.fromRGBO(172, 115, 57, 1)
  ),
  Product(
    id: 4,
    title: 'Godin A4 Bass Ultra Fretted RN SA',
    description: 'The A4 Ultra SA semi-acoustic bass features more sonic possibilities than ever before with the addition of a Low Profile Lace Sensor electric pickup and side-mounted volume and tone controls.',
    price: 1340,
    brand: 'Godin',
    image: "assets/images/GODIN-A4-Ultra-Fretted-RN-SA.png",
    color: Color.fromRGBO(236, 215, 198, 1)
  ),
  Product(
    id: 5,
    title: 'G&L Tribute M2000 3Tone Sunburst',
    description: 'Three decades ago, the G&L L-2000 bass served notice that company founder Leo Fender was ready to disrupt the status quo. The bold, brash L-2000 has always been an exhilarating experience for players with the skill to pull it off. Now the new M-2000 and M-2500 harness that power with a sonic palate that will surprise and delight new and die-hard G&L fans alike.',
    price: 678,
    brand: 'G&L',
    image: "assets/images/GL-Tribute-M20003Tone-Sunburst.png",
    color: Color.fromRGBO(115, 77, 38, 1)
  ),
  Product(
    id: 6,
    title: 'Spector Legend 5 Classic Bubinga',
    description: 'The Legend 5 Classic offers the coveted Spector NS body design at a price that is well within the reach of all bassists. The extremely comfortable curved body is crafted from solid maple and sports a genuine figured maple top, a three piece maple neck, a 24 fret rosewood fingerboard, and professional quality die-cast hardware.',
    price: 584,
    brand: 'Spector',
    image: "assets/images/Spector-Legend-5-Classic.png",
    color: Color.fromRGBO(179, 36, 0, 1)
  ),
  Product(
    id: 7,
    title: 'Spector Core 4 Amberburst',
    description: 'A truly unique bass – Our SpectorCore basses are studio and tour ready and feature a chambered body for increased midrange and lighter weight, a single proprietary Bartolini passive humbucker positioned right in the sweet spot, and a Fishman Bass Powerbridge piezo pickup system in the bridge with a Fishman PowerChip allows for exceptional acoustic and upright tones.',
    price: 642,
    brand: 'Spector',
    image: "assets/images/Spector-Core-4Amberburst.png",
    color: Color.fromRGBO(230, 46, 0, 1)
  ),
  Product(
    id: 8,
    title: 'G&L Tribute SB2 Gloss white',
    description: 'When Leo Fender launched the G&L SB-2 bass in 1982, he packed his latest innovations in pickup and bridge design into a straightforward, hard-working bass. If you prefer a less-is-more aesthetic but hunger for something meatier, the SB-2 is just the ticket.',
    price: 548,
    brand: 'G&L',
    image: "assets/images/GL-Tribute-SB2Glosswhite.png",
    color: Color.fromRGBO(230, 230, 255, 1)
  ),
  Product(
    id: 9,
    title: 'G&L Tribute L2000 Natural',
    description: 'When Leo Fender launched the G&L L-2000 bass in 1980, it was clear he was ready to make history all over again. Never before had such a wide range of tones come from a single bass, and throughout its evolution the iconic L-2000 has continued to win the hearts of bassists of every style and musical taste.',
    price: 678,
    brand: 'G&L',
    image: "assets/images/GL-TributeL2000Natural.png",
    color: Color.fromRGBO(255, 217, 179, 1)
  ),
  Product(
    id: 10,
    title: 'Godin A5 Bass Ultra Natural SG',
    description: 'The new A5 Ultra SA semi-acoustic bass features more sonic possibilities than ever with the addition of a Low Profile Lace Sensor electric pickup with side-mounted volume and tone controls.',
    price: 1586,
    brand: 'Godin',
    image: "assets/images/Godin-A5-Ultra-Natural-SG-Fretless-EN-SA.png",
    color: Color.fromRGBO(236, 215, 198, 1)
  )
];