package com.snapchat.kit.sdk;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.Date;
/* loaded from: classes4.dex */
public class SnapKitAppLifecycleObserver implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private he.c f29470a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SnapKitAppLifecycleObserver(he.c cVar) {
        this.f29470a = cVar;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onEnterForeground() {
        this.f29470a.c(new Date());
    }
}
