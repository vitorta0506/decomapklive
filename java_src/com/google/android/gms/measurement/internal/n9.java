package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n9 implements p4.s {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.k1 f9709a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9710b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n9(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.k1 k1Var) {
        this.f9710b = appMeasurementDynamiteService;
        this.f9709a = k1Var;
    }

    @Override // p4.s
    public final void a(String str, String str2, Bundle bundle, long j10) {
        try {
            this.f9709a.g(str, str2, bundle, j10);
        } catch (RemoteException e10) {
            n4 n4Var = this.f9710b.f9254a;
            if (n4Var != null) {
                n4Var.b().w().b("Event interceptor threw exception", e10);
            }
        }
    }
}
