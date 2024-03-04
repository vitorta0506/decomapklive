package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class m9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9655a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9656b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m9(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.h1 h1Var) {
        this.f9656b = appMeasurementDynamiteService;
        this.f9655a = h1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9656b.f9254a.N().D(this.f9655a, this.f9656b.f9254a.n());
    }
}
