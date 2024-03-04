package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes2.dex */
abstract class r0 extends c1 {

    /* renamed from: d  reason: collision with root package name */
    public final int f7782d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Bundle f7783e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ d f7784f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public r0(d dVar, @Nullable int i9, Bundle bundle) {
        super(dVar, Boolean.TRUE);
        this.f7784f = dVar;
        this.f7782d = i9;
        this.f7783e = bundle;
    }

    @Override // com.google.android.gms.common.internal.c1
    protected final /* bridge */ /* synthetic */ void a(Object obj) {
        if (this.f7782d != 0) {
            this.f7784f.f0(1, null);
            Bundle bundle = this.f7783e;
            f(new ConnectionResult(this.f7782d, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        } else if (g()) {
        } else {
            this.f7784f.f0(1, null);
            f(new ConnectionResult(8, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.c1
    public final void b() {
    }

    protected abstract void f(ConnectionResult connectionResult);

    protected abstract boolean g();
}
