package com.unity3d.services.ads.gmascar.utils;

import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.WebViewEventCategory;
/* loaded from: classes4.dex */
public class GMAEventSender {
    public void send(GMAEvent gMAEvent, Object... objArr) {
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.GMA, gMAEvent, objArr);
    }
}
