package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class d1 extends s0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private d f7712a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7713b;

    public d1(@NonNull d dVar, int i9) {
        this.f7712a = dVar;
        this.f7713b = i9;
    }

    @Override // com.google.android.gms.common.internal.k
    @BinderThread
    public final void A(int i9, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        p.k(this.f7712a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f7712a.K(i9, iBinder, bundle, this.f7713b);
        this.f7712a = null;
    }

    @Override // com.google.android.gms.common.internal.k
    @BinderThread
    public final void e(int i9, @Nullable Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.k
    @BinderThread
    public final void w0(int i9, @NonNull IBinder iBinder, @NonNull zzj zzjVar) {
        d dVar = this.f7712a;
        p.k(dVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        p.j(zzjVar);
        d.Z(dVar, zzjVar);
        A(i9, iBinder, zzjVar.f7805a);
    }
}
