package com.unity3d.scar.adapter.v2000.scarads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
/* loaded from: classes4.dex */
public class ScarRewardedAdListener extends ScarAdListener {
    private final IScarRewardedAdListenerWrapper _adListenerWrapper;
    private final ScarRewardedAd _scarRewardedAd;
    private final RewardedAdLoadCallback _adLoadCallback = new RewardedAdLoadCallback() { // from class: com.unity3d.scar.adapter.v2000.scarads.ScarRewardedAdListener.1
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            super.onAdFailedToLoad(loadAdError);
            ScarRewardedAdListener.this._adListenerWrapper.onAdFailedToLoad(loadAdError.getCode(), loadAdError.toString());
        }

        public void onAdLoaded(@NonNull RewardedAd rewardedAd) {
            super.onAdLoaded(rewardedAd);
            ScarRewardedAdListener.this._adListenerWrapper.onAdLoaded();
            rewardedAd.setFullScreenContentCallback(ScarRewardedAdListener.this._fullScreenContentCallback);
            ScarRewardedAdListener.this._scarRewardedAd.setGmaAd(rewardedAd);
            IScarLoadListener iScarLoadListener = ScarRewardedAdListener.this._loadListener;
            if (iScarLoadListener != null) {
                iScarLoadListener.onAdLoaded();
            }
        }
    };
    private final OnUserEarnedRewardListener _onUserEarnedRewardListener = new OnUserEarnedRewardListener() { // from class: com.unity3d.scar.adapter.v2000.scarads.ScarRewardedAdListener.2
        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
            ScarRewardedAdListener.this._adListenerWrapper.onUserEarnedReward();
        }
    };
    private final FullScreenContentCallback _fullScreenContentCallback = new FullScreenContentCallback() { // from class: com.unity3d.scar.adapter.v2000.scarads.ScarRewardedAdListener.3
        public void onAdDismissedFullScreenContent() {
            super.onAdDismissedFullScreenContent();
            ScarRewardedAdListener.this._adListenerWrapper.onAdClosed();
        }

        public void onAdFailedToShowFullScreenContent(@NonNull AdError adError) {
            super.onAdFailedToShowFullScreenContent(adError);
            ScarRewardedAdListener.this._adListenerWrapper.onAdFailedToShow(adError.getCode(), adError.toString());
        }

        public void onAdImpression() {
            super.onAdImpression();
            ScarRewardedAdListener.this._adListenerWrapper.onAdImpression();
        }

        public void onAdShowedFullScreenContent() {
            super.onAdShowedFullScreenContent();
            ScarRewardedAdListener.this._adListenerWrapper.onAdOpened();
        }
    };

    public ScarRewardedAdListener(IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper, ScarRewardedAd scarRewardedAd) {
        this._adListenerWrapper = iScarRewardedAdListenerWrapper;
        this._scarRewardedAd = scarRewardedAd;
    }

    public RewardedAdLoadCallback getAdLoadListener() {
        return this._adLoadCallback;
    }

    public OnUserEarnedRewardListener getOnUserEarnedRewardListener() {
        return this._onUserEarnedRewardListener;
    }
}
