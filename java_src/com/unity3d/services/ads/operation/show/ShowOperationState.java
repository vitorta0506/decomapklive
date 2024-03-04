package com.unity3d.services.ads.operation.show;

import android.app.Activity;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.services.ads.operation.OperationState;
import com.unity3d.services.core.configuration.Configuration;
/* loaded from: classes4.dex */
public class ShowOperationState extends OperationState {
    public Activity activity;
    public IUnityAdsShowListener listener;
    public UnityAdsShowOptions showOptions;

    public ShowOperationState(String str, IUnityAdsShowListener iUnityAdsShowListener, Activity activity, UnityAdsShowOptions unityAdsShowOptions, Configuration configuration) {
        super(str, configuration);
        this.listener = iUnityAdsShowListener;
        this.activity = activity;
        this.showOptions = unityAdsShowOptions;
    }

    public void onUnityAdsShowClick() {
        IUnityAdsShowListener iUnityAdsShowListener = this.listener;
        if (iUnityAdsShowListener != null) {
            iUnityAdsShowListener.onUnityAdsShowClick(this.placementId);
        }
    }

    public void onUnityAdsShowComplete(UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
        IUnityAdsShowListener iUnityAdsShowListener = this.listener;
        if (iUnityAdsShowListener != null) {
            iUnityAdsShowListener.onUnityAdsShowComplete(this.placementId, unityAdsShowCompletionState);
        }
    }

    public void onUnityAdsShowFailure(UnityAds.UnityAdsShowError unityAdsShowError, String str) {
        IUnityAdsShowListener iUnityAdsShowListener = this.listener;
        if (iUnityAdsShowListener != null) {
            iUnityAdsShowListener.onUnityAdsShowFailure(this.placementId, unityAdsShowError, str);
        }
    }

    public void onUnityAdsShowStart(String str) {
        IUnityAdsShowListener iUnityAdsShowListener = this.listener;
        if (iUnityAdsShowListener != null) {
            iUnityAdsShowListener.onUnityAdsShowStart(str);
        }
    }
}
