package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.push.cz;
import com.xiaomi.push.dt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class x0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ dt f37397a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(dt dtVar) {
        this.f37397a = dtVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Context context2;
        byte[] d10 = com.xiaomi.push.h2.d(f.d(this.f37397a.c(), this.f37397a.b(), this.f37397a, cz.Notification));
        context = w0.f37381c;
        if (!(context instanceof XMPushService)) {
            tf.c.l("UNDatas UploadNotificationDatas failed because not xmsf");
            return;
        }
        context2 = w0.f37381c;
        ((XMPushService) context2).a(this.f37397a.c(), d10, true);
    }
}
