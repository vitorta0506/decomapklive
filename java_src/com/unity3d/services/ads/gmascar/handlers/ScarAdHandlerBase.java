package com.unity3d.services.ads.gmascar.handlers;

import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.scar.adapter.common.IScarAdListenerWrapper;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.services.ads.gmascar.utils.GMAEventSender;
import com.unity3d.services.core.misc.EventSubject;
import com.unity3d.services.core.misc.IEventListener;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.WebViewEventCategory;
/* loaded from: classes4.dex */
public abstract class ScarAdHandlerBase implements IScarAdListenerWrapper {
    protected final EventSubject<GMAEvent> _eventSubject;
    protected final GMAEventSender _gmaEventSender = new GMAEventSender();
    protected final ScarAdMetadata _scarAdMetadata;

    public ScarAdHandlerBase(ScarAdMetadata scarAdMetadata, EventSubject<GMAEvent> eventSubject) {
        this._scarAdMetadata = scarAdMetadata;
        this._eventSubject = eventSubject;
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdListenerWrapper
    public void onAdClosed() {
        this._gmaEventSender.send(GMAEvent.AD_CLOSED, new Object[0]);
        this._eventSubject.unsubscribe();
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdListenerWrapper
    public void onAdFailedToLoad(int i9, String str) {
        this._gmaEventSender.send(GMAEvent.LOAD_ERROR, this._scarAdMetadata.getPlacementId(), this._scarAdMetadata.getQueryId(), str, Integer.valueOf(i9));
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdListenerWrapper
    public void onAdLoaded() {
        this._gmaEventSender.send(GMAEvent.AD_LOADED, this._scarAdMetadata.getPlacementId(), this._scarAdMetadata.getQueryId());
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdListenerWrapper
    public void onAdOpened() {
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.GMA, GMAEvent.AD_STARTED, new Object[0]);
        this._eventSubject.subscribe(new IEventListener<GMAEvent>() { // from class: com.unity3d.services.ads.gmascar.handlers.ScarAdHandlerBase.1
            @Override // com.unity3d.services.core.misc.IEventListener
            public void onNextEvent(GMAEvent gMAEvent) {
                ScarAdHandlerBase.this._gmaEventSender.send(gMAEvent, new Object[0]);
            }
        });
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdListenerWrapper
    public void onAdSkipped() {
        this._gmaEventSender.send(GMAEvent.AD_SKIPPED, new Object[0]);
    }
}
