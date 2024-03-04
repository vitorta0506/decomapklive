package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class o9 implements p4.t {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.gms.internal.measurement.k1 f9737a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9738b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o9(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.k1 k1Var) {
        this.f9738b = appMeasurementDynamiteService;
        this.f9737a = k1Var;
    }

    @Override // p4.t
    public final void a(String str, String str2, Bundle bundle, long j10) {
        try {
            this.f9737a.g(str, str2, bundle, j10);
        } catch (RemoteException e10) {
            n4 n4Var = this.f9738b.f9254a;
            if (n4Var != null) {
                n4Var.b().w().b("Event listener threw exception", e10);
            }
        }
    }
}
