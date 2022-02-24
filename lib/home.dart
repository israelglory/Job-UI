// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sized_box_for_whitespace

import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:job_ui_kit/data.dart';
import 'package:job_ui_kit/details.dart';
import 'package:job_ui_kit/jobwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _list = Jobs.generatejobs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ColumnBody(),
      ),
    );
  }
}

class ColumnBody extends StatefulWidget {
  @override
  State<ColumnBody> createState() => _ColumnBodyState();
}

class _ColumnBodyState extends State<ColumnBody> {

  @override
  Widget build(BuildContext context) {
    final _list = Jobs.generatejobs();
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 40.0),
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Icon(
                      Icons.grid_view_sharp,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Find the worlds most',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Amazing job',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:15.0,bottom:15.0,),
            child: Material(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  suffixIcon: Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Color(0xff008080),
                      size: 30.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Search Job',
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Browse By Company',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    'See more',
                    style: TextStyle(
                      color: Color(0xff008080),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 10.0, right: 5.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade300, // red as border color
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        'images/github.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade300, // red as border color
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        'images/behance.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.only(right: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade300, // red as border color
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        'images/dribbble.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade300, // red as border color
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        'images/instagram.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 15.0, top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Browse By Company',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    'See more',
                    style: TextStyle(
                      color: Color(0xff008080),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.separated(
            padding: EdgeInsets.zero,

            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var job = _list[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => JobDetails(
                        jobs: job,
                      ),
                    ),
                  );
                },
                child: Card(
                  color: Color(0xff008080),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: Image.asset(
                                job.image,
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                job.companyName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: const Icon(Icons.bookmark),
                                  color: Colors.grey,
                                  iconSize: 15,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            job.stack,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            job.shortdescription,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 4,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.timer_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 3.0),
                                child: Text(
                                  'Be in the first 20 applicants',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: _list.length,
          ),
        ],
      ),
    );
  }
}
