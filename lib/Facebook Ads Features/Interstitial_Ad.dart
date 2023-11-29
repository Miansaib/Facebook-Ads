// ignore: file_names
import 'package:facebook_audience_network/ad/ad_interstitial.dart';

interstitialAdLoad() {
  FacebookInterstitialAd.loadInterstitialAd(
    placementId: "IMG_16_9_APP_INSTALL#1353297581930539_1353582068568757",
    listener: (result, value) {
      if (result == InterstitialAdResult.LOADED) {
        FacebookInterstitialAd.showInterstitialAd(delay: 2000);
      }
    },
  );
}
