package com.xiaomi.push.service.receivers;

import android.content.Context;
/* loaded from: classes5.dex */
class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f37352a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ NetworkStatusReceiver f37353b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(NetworkStatusReceiver networkStatusReceiver, Context context) {
        this.f37353b = networkStatusReceiver;
        this.f37352a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f37353b.a(this.f37352a);
    }
}
