package com.xiaomi.mipush.sdk;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class t0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f36292a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(Context context) {
        this.f36292a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        MessageHandleService.c(this.f36292a);
    }
}
