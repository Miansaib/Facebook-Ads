import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:facebookads/Facebook%20Ads%20Features/Banner_Ad.dart';
import 'package:facebookads/Facebook%20Ads%20Features/Native_Ad.dart';
import 'package:facebookads/Facebook%20Ads%20Features/Rewarded_Ads.dart';
import 'package:flutter/material.dart';

import 'Facebook Ads Features/Interstitial_Ad.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FacebookAudienceNetwork.init(
      testingId: "a77955ee-3304-4635-be65-81029b0f5201",
      iOSAdvertiserTrackingEnabled: true,
    );
    loadRewardedVideoAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Ads"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: NativeBannerAdSize.HEIGHT_120.height!.toDouble(),
              width: double.infinity,
              child: nativeBannerAd(),
            ),
            ElevatedButton(
                onPressed: () {
                  interstitialAdLoad();
                },
                child: Text('Display Interstitial Ad')),
            ElevatedButton(
                onPressed: () {
                  showRewardedAd();
                },
                child: Text('Display Rewarded Vedio Ad')),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          width: BannerSize.STANDARD.width.toDouble(),
          height: BannerSize.STANDARD.height.toDouble(),
          child: bannerAdLoad()),
    );
  }
}
