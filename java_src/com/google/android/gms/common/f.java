package com.google.android.gms.common;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class f extends k4.h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f7645a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a f7646b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(a aVar, Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.f7646b = aVar;
        this.f7645a = context.getApplicationContext();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i9 = message.what;
        if (i9 != 1) {
            Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + i9);
            return;
        }
        int g10 = this.f7646b.g(this.f7645a);
        if (this.f7646b.j(g10)) {
            this.f7646b.o(this.f7645a, g10);
        }
    }
}
