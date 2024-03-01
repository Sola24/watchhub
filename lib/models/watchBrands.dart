import 'dart:math';

class WatchBrandsModel{
  String name;
  String image;
  String brand;
  double price;
  String type;
  String? description;
  double rating;

  WatchBrandsModel({required this.name,required this.image,required this.brand,required this.price,this.description,required this.rating,required  this.type});


  static List<WatchBrandsModel> watches = [];
  static List<WatchBrandsModel> getWatchBrands() {
    watches.add(
        WatchBrandsModel(
            name: 'EXPLORER II',
            image: 'assets/images/explorer.jpg',
            brand: 'rolex',
          price: 572602250,
          type: 'analog',
            description: 'Model caseOyster, 42 mm, Oysterstee',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'SUBMARINER DATE',
          image: 'assets/images/submariner_date.jpg',
          brand: 'rolex',
          price: 126599204,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'SKY DWELLER',
          image: 'assets/images/sky-dweller.jpg',
          brand: 'rolex',
          price: 6500000,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'GMT MASTER',
          image: 'assets/images/gmt-master.jpg',
          brand: 'rolex',
          price: 75000,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'MILGAUSS',
          image: 'assets/images/milaguss.jpg',
          brand: 'rolex',
          price: 11949960,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'DATEJUST 41',
          image: 'assets/images/datejust_41.jpg',
          brand: 'rolex',
          price: 8342930.25,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'SUBMARINER',
          image: 'assets/images/submariner.jpg',
          brand: 'rolex',
          price: 9205872.58,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'AIR KING',
          image: 'assets/images/air-king.jpg',
          brand: 'rolex',
          price: 6744485.00,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'YACHT MASTER',
          image: 'assets/images/yachtmaster.jpg',
          brand: 'rolex',
          price: 17259750.00,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'MENS PRO DIVER',
          image: 'assets/images/MENS-PRO-DIVER.jpg',
          brand: 'invicta',
          price: 168300,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );  watches.add(
        WatchBrandsModel(
          name: 'ECO DRIVE RADIO',
          image: 'assets/images/ECO-DRIVE-RADIO.jpg',
          brand: 'citizen',
          price: 891200,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    ); watches.add(
        WatchBrandsModel(
          name: 'ECO DRIVE AXIOM',
          image: 'assets/images/ECO-DRIVE-AXIOM.jpg',
          brand: 'citizen',
          price: 231300,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    ); watches.add(
        WatchBrandsModel(
          name: 'CLASSIC DIGITAL',
          image: 'assets/images/CLASSIC-DIGITAL.jpg',
          brand: 'casio',
          price: 30300,
          type: 'digital',
            rating:Random().nextInt(5)+1
        )
    );watches.add(
        WatchBrandsModel(
          name: 'METAL BASIC DATA BANK',
          image: 'assets/images/METAL-BASIC-DATA-BANK.jpg',
          brand: 'casio',
          price: 41800,
          type: 'digital',
            rating:Random().nextInt(5)+1
        )
    );watches.add(
        WatchBrandsModel(
          name: 'INVICTA MENS PRO DRIVER',
          image: 'assets/images/INVICTA-MENS-PRO-DRIVER.jpg',
          brand: 'invicta',
          price: 177000,
          type: 'analog',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'ANALOG AND DIGITAL QUARTZ BLACK',
          image: 'assets/images/ANALOG-AND-DIGITAL-QUARZ-BLACK.jpg',
          brand: 'casio',
          price: 177000,
          type: 'analog and digital',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'MENS ANALOG DIGITAL DATABANK',
          image: 'assets/images/MENS-ANALOG-DIGITAL-DATABANK.jpg',
          brand: 'casio',
          price: 46800,
          type: 'analog and digital',
            rating:Random().nextInt(5)+1
        )
    );
    watches.add(
        WatchBrandsModel(
          name: 'INVICTA S1 RALLY',
          image: 'assets/images/INVICTA-S1-RALLY.jpg',
          brand: 'invicta',
          price: 199900,
          type: 'analog and digital',
            rating:Random().nextInt(5)+1
        )
    );
  return watches;
  }

}
