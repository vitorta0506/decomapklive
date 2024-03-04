package com.xiaomi.push.service;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
/* loaded from: classes5.dex */
class f1 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f37241a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(XMPushService xMPushService) {
        this.f37241a = xMPushService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (message != null) {
            try {
                int i9 = message.what;
                if (i9 == 17) {
                    Object obj = message.obj;
                    if (obj != null) {
                        this.f37241a.onStart((Intent) obj, 1);
                    }
                } else if (i9 == 18) {
                    Message obtain = Message.obtain((Handler) null, 0);
                    obtain.what = 18;
                    Bundle bundle = new Bundle();
                    bundle.putString("xmsf_region", b.a(this.f37241a.getApplicationContext()).b());
                    obtain.setData(bundle);
                    message.replyTo.send(obtain);
                }
            } catch (Throwable unused) {
            }
        }
    }
}
