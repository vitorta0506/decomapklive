package com.unity3d.scar.adapter.v2000.scarads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.unity3d.scar.adapter.common.IScarInterstitialAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
/* loaded from: classes4.dex */
public class ScarInterstitialAdListener extends ScarAdListener {
    private final IScarInterstitialAdListenerWrapper _adListenerWrapper;
    private final InterstitialAdLoadCallback _adLoadCallback = new InterstitialAdLoadCallback() { // from class: com.unity3d.scar.adapter.v2000.scarads.ScarInterstitialAdListener.1
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            ScarInterstitialAdListener.this._adListenerWrapper.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        public void onAdLoaded(@NonNull InterstitialAd interstitialAd) {
            super.onAdLoaded(interstitialAd);
            ScarInterstitialAdListener.this._adListenerWrapper.onAdLoaded();
            interstitialAd.setFullScreenContentCallback(ScarInterstitialAdListener.this._fullScreenContentCallback);
            ScarInterstitialAdListener.this._scarInterstitialAd.setGmaAd(interstitialAd);
            IScarLoadListener iScarLoadListener = ScarInterstitialAdListener.this._loadListener;
            if (iScarLoadListener != null) {
                iScarLoadListener.onAdLoaded();
            }
        }
    };
    private final FullScreenContentCallback _fullScreenContentCallback = new FullScreenContentCallback() { // from class: com.unity3d.scar.adapter.v2000.scarads.ScarInterstitialAdListener.2
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            ScarInterstitialAdListener.this._adListenerWrapper.onAdClosed();
        }

        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            ScarInterstitialAdListener.this._adListenerWrapper.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        public void onAdImpression() {
            super.onAdImpression();
            ScarInterstitialAdListener.this._adListenerWrapper.onAdImpression();
        }

        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            ScarInterstitialAdListener.this._adListenerWrapper.onAdOpened();
        }
    };
    private final ScarInterstitialAd _scarInterstitialAd;

    public ScarInterstitialAdListener(IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper, ScarInterstitialAd scarInterstitialAd) {
        this._adListenerWrapper = iScarInterstitialAdListenerWrapper;
        this._scarInterstitialAd = scarInterstitialAd;
    }

    public InterstitialAdLoadCallback getAdLoadListener() {
        return this._adLoadCallback;
    }
}
