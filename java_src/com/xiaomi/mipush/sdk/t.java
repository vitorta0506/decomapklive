package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f36290a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f36291b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Context context, Intent intent) {
        this.f36290a = context;
        this.f36291b = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        PushMessageHandler.b(this.f36290a, this.f36291b);
    }
}
