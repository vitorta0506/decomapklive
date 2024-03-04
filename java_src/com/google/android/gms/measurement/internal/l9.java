package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class l9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9615a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9616b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9617c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9618d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l9(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.h1 h1Var, String str, String str2) {
        this.f9618d = appMeasurementDynamiteService;
        this.f9615a = h1Var;
        this.f9616b = str;
        this.f9617c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9618d.f9254a.L().T(this.f9615a, this.f9616b, this.f9617c);
    }
}
