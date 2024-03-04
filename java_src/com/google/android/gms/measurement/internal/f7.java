package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class f7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9408a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzaw f9409b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9410c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9411d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f7(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.h1 h1Var, zzaw zzawVar, String str) {
        this.f9411d = appMeasurementDynamiteService;
        this.f9408a = h1Var;
        this.f9409b = zzawVar;
        this.f9410c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9411d.f9254a.L().p(this.f9408a, this.f9409b, this.f9410c);
    }
}
