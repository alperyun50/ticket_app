import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),

            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotelList[index]["place"]),
              // background: Image.network(
              //   "https://via.placeholder.com/600*400"
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/${hotelList[index]["image"]}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: Text(hotelList[index]["place"]),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "fhfgfgh fhhhh hhhfg gfhg ghfghg ghghgj gdfgh fhgffgdfh hsghg ghgfhgfh ghgfhgfh ghgfhgh ghgfhgh ghghgfhgf ghfgh",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "more images",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    //  return Image.network(
                    //   "https://via.placeholder.com/200*150"
                    // );
                    return Container(
                      margin: EdgeInsets.all(16),
                      color: Colors.red,
                      child: Image.asset('assets/images/pic200150.PNG'),
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
