import 'package:flutter/material.dart';



class FilterPage extends StatefulWidget {
   FilterPage({super.key, required this.filterProducts,required this.selectedBrands,required this.selectedTypes, required this.minPrice, required this.maxPrice, required this.resetFilter});
  final Function() filterProducts;
   final Function() resetFilter;
   double minPrice;
   double maxPrice;
   Set<String> selectedBrands;
   Set<String> selectedTypes;


  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User filter preferences
          Align(
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0,top: 25),
              child: Text('Price',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Baskervville'
              ),),
            ),
            alignment: Alignment.topLeft,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Min Price TextField
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0,top: 10,right: 30.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Min Price'),
                    onChanged: (value) {
                      setState(() {
                        widget.minPrice = double.tryParse(value) ?? 0.0;
                      });
                    },
                  ),
                ),
              ),
              // Max Price TextField
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:15,top: 10,right: 30.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Max Price'),
                    onChanged: (value) {
                      setState(() {
                        widget.maxPrice = double.tryParse(value) ?? double.infinity;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0,top: 25),
              child: Text('Brand',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Baskervville'
              ),),
            ),
            alignment: Alignment.topLeft,
          ),
          Container(
            padding: const EdgeInsets.only(left: 35.0,top: 5),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 3.0,
              children: [
                FilterChip(
                  shape:  StadiumBorder(),
                  selectedColor:  Color(0xffC0C0C0),
                  label: Text('rolex',style: TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    fontFamily:'Baskervville'

    ),),
                  selected: widget.selectedBrands.contains('rolex brand'),
                  onSelected: (selected) {
                    setState(() {
                      widget.selectedBrands.contains('rolex brand') ? widget.selectedBrands.remove('rolex brand') : widget.selectedBrands.add('rolex brand');
                    });
                  },
                ),
                FilterChip(
                  shape:  StadiumBorder(),
                  selectedColor:  Color(0xffC0C0C0),
                  label: Text('invicta',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Baskervville'

                  ),),
                  selected: widget.selectedBrands.contains('invicta brand'),
                  onSelected: (selected) {
                    setState(() {
                      widget.selectedBrands.contains('invicta brand') ? widget.selectedBrands.remove('invicta brand') : widget.selectedBrands.add('invicta brand');
                    });
                  },
                ),
                FilterChip(
                  shape:  StadiumBorder(),
                  selectedColor:  Color(0xffC0C0C0),
                  label: Text('citizen',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Baskervville'

                  ),),
                  selected: widget.selectedBrands.contains('citizen brand'),
                  onSelected: (selected) {
                    setState(() {
                      widget.selectedBrands.contains('citizen brand') ? widget.selectedBrands.remove('citizen brand') : widget.selectedBrands.add('citizen brand');
                    });
                  },
                ),
                FilterChip(
                  shape:  StadiumBorder(),
                  selectedColor:  Color(0xffC0C0C0),
                label: Text('casio',style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    fontFamily:'Baskervville'

                ),),
                selected: widget.selectedBrands.contains('casio brand'),
                onSelected: (selected) {
                setState(() {
                  widget.selectedBrands.contains('casio brand') ? widget.selectedBrands.remove('casio brand') : widget.selectedBrands.add('casio brand');
                });
                },
                ),

              ],
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(left: 35.0,top: 25),
              child: Text('Type',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Baskervville'
              ),),
            ),
            alignment: Alignment.topLeft,
          ),
          Container(
            padding: const EdgeInsets.only(left: 35.0,top: 5),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 3.0,
              children: [
                FilterChip(
                  shape:  StadiumBorder(),
                  selectedColor:  Color(0xffC0C0C0),
                  label: Text('analog',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Baskervville'

                  ),),
                  selected: widget.selectedTypes.contains('analog'),
                  onSelected: (selected) {
                    setState(() {
                      widget.selectedTypes.contains('analog') ? widget.selectedTypes.remove('analog') : widget.selectedTypes.add('analog');
                    });
                  },
                ),
                FilterChip(
                  shape:  StadiumBorder(),
                  selectedColor:  Color(0xffC0C0C0),
                  label: Text('digital',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Baskervville'

                  ),),
                  selected: widget.selectedTypes.contains('digital'),
                  onSelected: (selected) {
                    setState(() {
                      widget.selectedTypes.contains('digital') ? widget.selectedTypes.remove('digital') : widget.selectedTypes.add('digital');
                    });
                  },
                ),
                FilterChip(
                  shape:  StadiumBorder(),
                  selectedColor:  Color(0xffC0C0C0),
                  label: Text('analog and digital',style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily:'Baskervville'

                  ),),
                  selected: widget.selectedTypes.contains('analog and digital'),
                  onSelected: (selected) {
                    setState(() {
                      widget.selectedTypes.contains('analog and digital') ? widget.selectedTypes.remove('analog and digital') : widget.selectedTypes.add('analog and digital');
                    });
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0,left: 35.0,right:40,bottom: 10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffC0C0C0),
                        side: BorderSide.none,
                        shape: StadiumBorder()
                    ),
                    child: Text('Reset Filters', style: TextStyle(color: Colors.red)),
                    onPressed: () {

                       widget.resetFilter();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),

              // Filter button
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0,right: 30.0,bottom: 10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffC0C0C0),
                        side: BorderSide.none,
                        shape: StadiumBorder()
                    ),
                    child: Text('Apply Filter',style: TextStyle(color: Colors.black),),
                    onPressed:(){
    // Check if both brand, type, and price filters are selected
    if (widget.selectedBrands.isNotEmpty && widget.selectedTypes.isNotEmpty && widget.minPrice != null && widget.maxPrice != null) {
    widget.filterProducts();
    Navigator.pop(context);
    } else {
    // Show the error dialog if criteria are not complete
       showDialog(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Text('Filtering Error'),
    content: Text('Please select all filtering criteria before applying filters.'),
    actions: <Widget>[
    TextButton(
    onPressed: () {
    Navigator.of(context).pop();
    },
    child: Text('OK'),
    ),
    ],
    );
    },
    );
    }
    },

                  ),
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
  // Filtering logic

}



