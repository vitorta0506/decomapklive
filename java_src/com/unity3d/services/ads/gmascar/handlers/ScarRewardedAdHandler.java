package com.unity3d.services.ads.gmascar.handlers;

import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.services.core.misc.EventSubject;
/* loaded from: classes4.dex */
public class ScarRewardedAdHandler extends ScarAdHandlerBase implements IScarRewardedAdListenerWrapper {
    private boolean _hasEarnedReward;

    public ScarRewardedAdHandler(ScarAdMetadata scarAdMetadata, EventSubject<GMAEvent> eventSubject) {
        super(scarAdMetadata, eventSubject);
        this._hasEarnedReward = false;
    }

    @Override // com.unity3d.services.ads.gmascar.handlers.ScarAdHandlerBase, com.unity3d.scar.adapter.common.IScarAdListenerWrapper
    public void onAdClosed() {
        if (!this._hasEarnedReward) {
            super.onAdSkipped();
        }
        super.onAdClosed();
    }

    @Override // com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper
    public void onAdFailedToShow(int i9, String str) {
        this._gmaEventSender.send(GMAEvent.REWARDED_SHOW_ERROR, this._scarAdMetadata.getPlacementId(), this._scarAdMetadata.getQueryId(), str, Integer.valueOf(i9));
    }

    @Override // com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper
    public void onAdImpression() {
        this._gmaEventSender.send(GMAEvent.REWARDED_IMPRESSION_RECORDED, new Object[0]);
    }

    @Override // com.unity3d.scar.adapter.common.IScarRewardedAdListenerWrapper
    public void onUserEarnedReward() {
        this._hasEarnedReward = true;
        this._gmaEventSender.send(GMAEvent.AD_EARNED_REWARD, new Object[0]);
    }
}
