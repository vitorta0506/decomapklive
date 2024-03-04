package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class zabx extends BroadcastReceiver {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    Context f7612a;

    /* renamed from: b  reason: collision with root package name */
    private final v3.r f7613b;

    public zabx(v3.r rVar) {
        this.f7613b = rVar;
    }

    public final void a(Context context) {
        this.f7612a = context;
    }

    public final synchronized void b() {
        Context context = this.f7612a;
        if (context != null) {
            context.unregisterReceiver(this);
        }
        this.f7612a = null;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f7613b.a();
            b();
        }
    }
}
