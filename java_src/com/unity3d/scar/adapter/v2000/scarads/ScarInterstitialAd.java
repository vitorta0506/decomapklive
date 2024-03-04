package com.unity3d.scar.adapter.v2000.scarads;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.unity3d.scar.adapter.common.GMAAdsError;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.IScarInterstitialAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2000.signals.QueryInfoMetadata;
/* loaded from: classes4.dex */
public class ScarInterstitialAd extends ScarAdBase<InterstitialAd> {
    public ScarInterstitialAd(Context context, QueryInfoMetadata queryInfoMetadata, ScarAdMetadata scarAdMetadata, IAdsErrorHandler iAdsErrorHandler, IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper) {
        super(context, scarAdMetadata, queryInfoMetadata, iAdsErrorHandler);
        this._scarAdListener = new ScarInterstitialAdListener(iScarInterstitialAdListenerWrapper, this);
    }

    @Override // com.unity3d.scar.adapter.v2000.scarads.ScarAdBase
    protected void loadAdInternal(AdRequest adRequest, IScarLoadListener iScarLoadListener) {
        InterstitialAd.load(this._context, this._scarAdMetadata.getAdUnitId(), adRequest, ((ScarInterstitialAdListener) this._scarAdListener).getAdLoadListener());
    }

    @Override // com.unity3d.scar.adapter.common.scarads.IScarAd
    public void show(Activity activity) {
        T t10 = this._adObj;
        if (t10 != 0) {
            ((InterstitialAd) t10).show(activity);
        } else {
            this._adsErrorHandler.handleError(GMAAdsError.AdNotLoadedError(this._scarAdMetadata));
        }
    }
}
