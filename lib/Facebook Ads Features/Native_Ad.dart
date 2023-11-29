import 'package:facebook_audience_network/ad/ad_native.dart';

FacebookNativeAd nativeBannerAd() {
  return FacebookNativeAd(
    // placementId: "YOUR_PLACEMENT_ID",
    placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2964953543583512",
    adType: NativeAdType.NATIVE_BANNER_AD,
    bannerAdSize: NativeBannerAdSize.HEIGHT_120,
    width: double.infinity,
    listener: (result, value) {
      print("Native Banner Ad: $result --> $value");
    },
  );
}
