package com.unity3d.scar.adapter.common;
/* loaded from: classes4.dex */
public interface IScarAdListenerWrapper {
    void onAdClosed();

    void onAdFailedToLoad(int i9, String str);

    void onAdLoaded();

    void onAdOpened();

    void onAdSkipped();
}
