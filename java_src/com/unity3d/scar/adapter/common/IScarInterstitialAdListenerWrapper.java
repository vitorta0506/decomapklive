package com.unity3d.scar.adapter.common;
/* loaded from: classes4.dex */
public interface IScarInterstitialAdListenerWrapper extends IScarAdListenerWrapper {
    void onAdClicked();

    void onAdFailedToShow(int i9, String str);

    void onAdImpression();

    void onAdLeftApplication();
}
