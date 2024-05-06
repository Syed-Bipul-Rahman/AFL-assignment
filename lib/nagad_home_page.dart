import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NagadHomeScreen extends StatefulWidget {
  const NagadHomeScreen({super.key});

  @override
  State<NagadHomeScreen> createState() => _NagadHomeScreenState();
}

class _NagadHomeScreenState extends State<NagadHomeScreen> {
  var moneytext = "ব্যালেন্স জানতে ট্যাপ করুন";

  void _updateMoneyText() {
    setState(() {
      moneytext = "৳১০.০০";
    });

    // After 3 seconds, reset the moneyText
    Timer(const Duration(seconds: 2), () {
      setState(() {
        moneytext = "ব্যালেন্স জানতে ট্যাপ করুন";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/banner_top.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "নগদ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    "ডাক বিভাগের ডিজিটাল লেনদেন",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Text(
                  "Syed Bipul Rahman",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: _updateMoneyText,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 50, right: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: Image.asset("images/nagad_logo.png",
                                height: 20)),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: Text(
                              textAlign: TextAlign.center,
                              moneytext,
                              style: const TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 25,
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Text(
                  "সার্ভিস সমূহ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("সেন্ড মানি"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("ক্যাশ আউট"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("মোবাইল রিচার্জ"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("অ্যাড মানি "),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 25,
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Text(
                  "পেমেন্ট",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("মার্চেন্ট পে"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("বিল পে"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("ডোনেশন"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("আয়কর"),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 25,
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Text(
                  "অন্যান্য",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("নগদ খবর"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("যোগাযোগ করুন"),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/nagad_logo.png", height: 50),
                    const Text("লিমিট ও চার্জ"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
