package com.xiaomi.push.service;

import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
class i1 extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f37273a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(XMPushService xMPushService, Handler handler) {
        super(handler);
        this.f37273a = xMPushService;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        boolean m1531h;
        super.onChange(z10);
        m1531h = this.f37273a.m1531h();
        tf.c.l("SuperPowerMode:" + m1531h);
        this.f37273a.e();
        if (!m1531h) {
            this.f37273a.a(true);
            return;
        }
        XMPushService xMPushService = this.f37273a;
        xMPushService.a(new XMPushService.g(24, null));
    }
}
