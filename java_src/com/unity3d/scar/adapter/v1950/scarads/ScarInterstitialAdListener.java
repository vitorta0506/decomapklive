package com.unity3d.scar.adapter.v1950.scarads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.LoadAdError;
import com.unity3d.scar.adapter.common.IScarInterstitialAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
/* loaded from: classes4.dex */
public class ScarInterstitialAdListener {
    private AdListener _adListener = new AdListener() { // from class: com.unity3d.scar.adapter.v1950.scarads.ScarInterstitialAdListener.1
        public void onAdClicked() {
            ScarInterstitialAdListener.this._adListenerWrapper.onAdClicked();
        }

        public void onAdClosed() {
            ScarInterstitialAdListener.this._adListenerWrapper.onAdClosed();
        }

        public void onAdFailedToLoad(LoadAdError loadAdError) {
            ScarInterstitialAdListener.this._adListenerWrapper.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        public void onAdLeftApplication() {
            ScarInterstitialAdListener.this._adListenerWrapper.onAdLeftApplication();
        }

        public void onAdLoaded() {
            ScarInterstitialAdListener.this._adListenerWrapper.onAdLoaded();
            if (ScarInterstitialAdListener.this._loadListener != null) {
                ScarInterstitialAdListener.this._loadListener.onAdLoaded();
            }
        }

        public void onAdOpened() {
            ScarInterstitialAdListener.this._adListenerWrapper.onAdOpened();
        }
    };
    private IScarInterstitialAdListenerWrapper _adListenerWrapper;
    private InterstitialAd _interstitialAd;
    private IScarLoadListener _loadListener;

    public ScarInterstitialAdListener(InterstitialAd interstitialAd, IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper) {
        this._interstitialAd = interstitialAd;
        this._adListenerWrapper = iScarInterstitialAdListenerWrapper;
    }

    public AdListener getAdListener() {
        return this._adListener;
    }

    public void setLoadListener(IScarLoadListener iScarLoadListener) {
        this._loadListener = iScarLoadListener;
    }
}
