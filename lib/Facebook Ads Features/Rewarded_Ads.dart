import 'package:facebook_audience_network/ad/ad_rewarded.dart';

bool isInterstitialAdLoaded = false;
bool isRewardedAdLoaded = false;

//Always Use this Function in initState to load the ad
void loadRewardedVideoAd() {
  FacebookRewardedVideoAd.loadRewardedVideoAd(
    placementId:
        "VID_HD_16_9_46S_APP_INSTALL#1353297581930539_1353582585235372",
    listener: (result, value) {
      print("Rewarded Ad: $result --> $value");
      if (result == RewardedVideoAdResult.LOADED) isRewardedAdLoaded = true;
      if (result == RewardedVideoAdResult.VIDEO_COMPLETE &&
          result == RewardedVideoAdResult.VIDEO_CLOSED &&
          (value == true || value["invalidated"] == true)) {
        isRewardedAdLoaded = false;
        loadRewardedVideoAd();
      }
    },
  );
}

//Use This Function to Display the loaded Ad
showRewardedAd() {
  if (isRewardedAdLoaded == true) {
    FacebookRewardedVideoAd.showRewardedVideoAd();
  } else {
    print("Rewarded Ad not yet loaded!");
  }
}
