package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class f8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.internal.measurement.h1 f9412a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9413b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f9414c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f9415d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9416e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f8(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.h1 h1Var, String str, String str2, boolean z10) {
        this.f9416e = appMeasurementDynamiteService;
        this.f9412a = h1Var;
        this.f9413b = str;
        this.f9414c = str2;
        this.f9415d = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9416e.f9254a.L().V(this.f9412a, this.f9413b, this.f9414c, this.f9415d);
    }
}
