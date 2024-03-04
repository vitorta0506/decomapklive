package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class e9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ n9 f9397a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AppMeasurementDynamiteService f9398b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e9(AppMeasurementDynamiteService appMeasurementDynamiteService, n9 n9Var) {
        this.f9398b = appMeasurementDynamiteService;
        this.f9397a = n9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9398b.f9254a.I().H(this.f9397a);
    }
}
