package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes5.dex */
final class s0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f36288a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f36289b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(Context context, Intent intent) {
        this.f36288a = context;
        this.f36289b = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f36288a.startService(this.f36289b);
        } catch (Exception e10) {
            tf.c.l(e10.getMessage());
        }
    }
}
