import 'dart:core';
import 'dart:math';
import 'package:WatchHub/components/toggleIconButton.dart';
import 'package:WatchHub/screens/filterPage.dart';
import 'package:WatchHub/screens/showProductDetails.dart';
import 'package:WatchHub/screens/viewProfile.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../components/navigationbar.dart';
import '../models/watchBrands.dart';
import 'package:intl/intl.dart';

import '../provider/favouriteProvider.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  static List previousSearch = [];
  static List<WatchBrandsModel> watch_brand = [
    WatchBrandsModel(name: 'EXPLORER II',
  image: 'assets/images/explorer.jpg',
  brand: 'rolex brand',
  price: 572602250,
      type: 'analog',
      description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
      rating:Random().nextInt(5)+1
  ),
    WatchBrandsModel(name: 'SKY DWELLER',
      image: 'assets/images/sky-dweller.jpg',
      brand: 'rolex brand',
      price: 6500000,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(    name: 'SUBMARINER DATE',
      image: 'assets/images/submariner_date.jpg',
      brand: 'rolex brand' ,
      price: 126599204,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(     name: 'GMT MASTER',
      image: 'assets/images/gmt-master.jpg',
      brand: 'rolex brand',
      price: 75000,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(      name: 'MILGAUSS',
      image: 'assets/images/milaguss.jpg',
      brand: 'rolex brand',
      price: 11949960,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(  name: 'DATEJUST 41',
      image: 'assets/images/datejust_41.jpg',
      brand: 'rolex brand',
      price: 8342930.25,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(   name: 'SUBMARINER',
      image: 'assets/images/submariner.jpg',
      brand: 'rolex brand',
      price: 9205872.58,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(  name: 'AIR KING',
      image: 'assets/images/air-king.jpg',
      brand: 'rolex brand',
      type: 'analog',
      price: 6744485.00,
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel( name: 'YACHT MASTER',
      image: 'assets/images/yachtmaster.jpg',
      brand: 'rolex brand',
      price: 17259750.00,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'MENS PRO DIVER',
      image: 'assets/images/MENS-PRO-DIVER.jpg',
      brand: 'invicta brand',
      price: 168300,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'ECO DRIVE RADIO',
      image: 'assets/images/ECO-DRIVE-RADIO.jpg',
      brand: 'citizen brand',
      price: 891200,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'ECO DRIVE AXIOM',
      image: 'assets/images/ECO-DRIVE-AXIOM.jpg',
      brand: 'citizen brand',
      price: 231300,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'CLASSIC DIGITAL',
      image: 'assets/images/CLASSIC-DIGITAL.jpg',
      brand: 'casio brand' ,
      price: 30300,
      type: 'digital',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'BASIC DATA BANK',
      image: 'assets/images/METAL-BASIC-DATA-BANK.jpg',
      brand: 'casio brand',
      price: 41800,
      type: 'digital',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'MENS PRO DRIVER',
      image: 'assets/images/INVICTA-MENS-PRO-DRIVER.jpg',
      brand: 'invicta brand',
      price: 177000,
      type: 'analog',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'QUARTZ BLACK',
      image: 'assets/images/ANALOG-AND-DIGITAL-QUARZ-BLACK.jpg',
      brand: 'casio brand',
      price: 177000,
      type: 'analog and digital',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'MENS DATABANK',
      image: 'assets/images/MENS-ANALOG-DIGITAL-DATABANK.jpg',
      brand: 'casio brand',
      price: 46800,
      type: 'analog and digital',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    ),
    WatchBrandsModel(
      name: 'INVICTA S1 RALLY',
      image: 'assets/images/INVICTA-S1-RALLY.jpg',
      brand: 'invicta brand',
      price: 199900,
      type: 'analog and digital',
        description: 'Model case Model case Oyster, 42 mm, Oystersteel Oyster architecture Monobloc middle case, screw-down case back and winding crown Diameter 42 mm Material Oystersteel Bezel Fixed, 24-hour graduated Winding crown Screw-down, Twinlock double waterproofness system Crystal Scratch-resistant sapphire, Cyclops lens over the date Water resistance Waterproof to 100 metres / 330 feet Movement Movement Perpetual, mechanical, self-winding, GMT function Calibre 3285, Manufacture Rolex Precision -2/+2 sec/day, after casing Functions Centre hour, minute and seconds hands. 24-hour display. Second time zone with independent rapid-setting of the hour hand. Instantaneous date. Stop-seconds for precise time setting Oscillator Paramagnetic blue Parachrom hairspring. High-performance Paraflex shock absorbers Winding Bidirectional self-winding via Perpetual rotor Power reserve Approximately 70 hours Bracelet Dial Dial White Details Highly legible Chromalight display with long-lasting blue luminescence Certification Certification Superlative Chronometer (COSC + Rolex certification after casing)',
        rating:Random().nextInt(5)+1
    )

  ];
  List<WatchBrandsModel> watches = List.from(watch_brand);
  double minPrice = 0.0;
  double maxPrice = double.infinity;
  Set<String> selectedBrands = Set<String>();
  Set<String> selectedTypes = Set<String>();


  void filterProducts() {
    print('Selected Types: $selectedTypes');


    print('Before filtering: ${watch_brand.length}');

    setState(() {
      watches = watch_brand.where((category) {
        bool priceMatches = category.price >= minPrice && category.price <= maxPrice;
        bool brandMatches = selectedBrands.isEmpty || selectedBrands.contains(category.brand);
        bool typeMatches = selectedTypes.isEmpty || selectedTypes.contains(category.type.toLowerCase());

        print('Item: ${category.name}, Price Matches: $priceMatches, Brand Matches: $brandMatches, Type Matches: $typeMatches');

        return priceMatches && brandMatches && typeMatches;
      }).toList();
    });

    print('After filtering: ${watches.length}');
  }



  void updateList(String value){
    setState(() {
      watches = watch_brand.where((element) => element.name.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  bool click = false;
  @override
  void initState() {
    super.initState();
    filterProducts(); // Call filterProducts initially
  }
  Widget build(BuildContext context) {
    void resetFilter(){
      watches = List.from(watch_brand);
      // Reset your filter parameters here
      setState(() {
        selectedBrands.clear();
        selectedTypes.clear();
        minPrice = 0;
        maxPrice = double.infinity;
      });
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text('Welcome Back,',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      fontFamily:'Baskervville'
                  ),),
                Text('John',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Baskervville'
                  ),),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top:10,right: 25),
              child: Column(
                children: [
                  SizedBox(height: 4),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => ViewProfile()
                          )
                      );
                    },
                      child: CircleAvatar(backgroundImage: AssetImage('assets/images/logo.jpg'))),
                ],
              ),
            )
          ],

        ),
          body: ListView(
            children: [
              Column(
                mainAxisSize :MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top:40,left:20,right:24),
                    child: TextField(
                      onEditingComplete: (){
                        previousSearch.add(searchController.text);
                      },
                      controller: searchController,
                      style: TextStyle(color: Colors.white),
                      onChanged: (value) => updateList(value),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Search by Watch Name',
                          hintStyle: const TextStyle(
                            color: Colors.white54,
                            fontSize: 14,
                              fontFamily:'Baskervville'
                          ),
                          fillColor: Color(0xff060C0F),
                          contentPadding: const EdgeInsets.all(15),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(13),
                            child: Icon(Icons.search,color: Colors.grey,),
                          ),
                          suffixIcon: SizedBox(
                            width: 100,
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  VerticalDivider(
                                    color: Colors.grey,
                                    indent: 10,
                                    endIndent:10 ,
                                    thickness: 1,
                                   width: 1,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder:(BuildContext context){
                                                return FilterPage(
                                                  filterProducts: () { filterProducts(); },
                                                  minPrice: minPrice, maxPrice: maxPrice,
                                                  selectedBrands: selectedBrands,
                                                  selectedTypes: selectedTypes,
                                                  resetFilter: () { resetFilter(); },);
                                              }
                                          );
                                        },
                                    icon: Icon(Icons.sort_rounded,color: Colors.grey,)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: previousSearch.isEmpty ? null:
                    Container(
                      margin: EdgeInsets.only(left:20,right:20,bottom:5,top:10 ),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                          itemCount: previousSearch.length,
                          itemBuilder: (context,index) => Padding(
                              padding: EdgeInsets.only(top:10,bottom: 15,left: 10,right: 10),
                            child: InkWell(
                              onTap: (){},
                              child: Dismissible(
                                key: GlobalKey(),
                                onDismissed: (DismissDirection dir){
                                  setState(() {

                                  });
                                  previousSearch.removeAt(index);
                                }, child: Row(
                                children: [
                                  Icon(LineAwesomeIcons.history,color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text(previousSearch[index],style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:'Baskervville',
                                    color: Colors.grey
                                  ),),
                                  Spacer(),
                                ],
                              ),
                              ),
                            ),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:25.0),
                    child: Text('Popular Brands',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          fontFamily:'Baskervville'
                      ),),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height:470,
                  child:
                  watches.length == 0  ?
                  Center(
                    child: Text(
                      'Watch not found',
                      style: TextStyle(
                      color: Color(0xff060C0F),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily:'Baskervville'
                    ),
                    ),
                  )
                      :
                  GridView.builder(
                    itemCount:watches.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder:(context) => ShowProductDetails(image: watches[index].image, name: watches[index].name, about: watches[index].description as String, price: watches[index].price, rating: watches[index].rating,)
                              )
                          );
                        },
                        child: Container(
                          height: 55,
                           margin: EdgeInsets.only(right: 4,left: 4,bottom: 6),
                            decoration: BoxDecoration(
                              border:Border.all(color:Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child:Flex(
                             mainAxisSize: MainAxisSize.max,
                              direction: Axis.vertical,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            SizedBox(child: Image.asset(watches[index].image,height:95,width:130)),
                                            Positioned(
                                              top: 0,
                                                left: 97,
                                              child: toggleIconButton(
                                                    onFalseSnackBarContent: 'Added to WishList',
                                                    onFalseSnackBarLabel: 'Remove',
                                                    onTrueSnackBarContent: 'Removed from WishList',
                                                    onTrueSnackBarLabel: 'Add',
                                                    onFalseIcon: LineAwesomeIcons.heart,
                                                    onTrueIcon: LineAwesomeIcons.heart_1,
                                                    onFalseColor: Colors.black,
                                                    onTrueColor: Colors.red,
                                                    iconSize: 20,

                                                  )


                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(watches[index].brand,style: TextStyle(color: Colors.grey,fontFamily:'Baskervville')),
                                    Text(watches[index].name,style: TextStyle(color: Color(0xff060C0F),fontFamily:'Baskervville',fontWeight:FontWeight.bold)),
                                    Text(NumberFormat.simpleCurrency(name: 'NGN',decimalDigits: 2).format(watches[index].price),style: TextStyle(color: Color(0xff060C0F),fontWeight:FontWeight.bold)),
                                    SizedBox(
                                      width: 130,
                                      height: 26,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder:(context) => ShowProductDetails(image: watches[index].image, name: watches[index].name, about: watches[index].description as String, price: watches[index].price, rating: watches[index].rating,)
                                              )
                                          );
                                        },
                                        child: Text('Order Now',style: TextStyle(fontSize: 10,color: Colors.white,fontFamily:'Baskervville'),),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:Color(0xffC0C0C0),
                                            side: BorderSide.none,
                                            shape: StadiumBorder()
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                      );
                    },

                  ),
                  )
      ]
              )
           ]
          ),
        bottomNavigationBar: NavBar(idx: 0,),
        ),
    );
  }
}