package com.google.android.gms.measurement.internal;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k5 implements p4.f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ n4 f9573a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k5(l5 l5Var, n4 n4Var) {
        this.f9573a = n4Var;
    }

    @Override // p4.f
    public final boolean zza() {
        return this.f9573a.q() && Log.isLoggable(this.f9573a.b().C(), 3);
    }
}
