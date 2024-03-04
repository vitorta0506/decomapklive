package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class j6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9543a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9544b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j6(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.h1 h1Var) {
        this.f9544b = appMeasurementDynamiteService;
        this.f9543a = h1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9544b.f9254a.L().R(this.f9543a);
    }
}
