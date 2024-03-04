package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9256a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f9257b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ x1 f9258c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(x1 x1Var, String str, long j10) {
        this.f9258c = x1Var;
        this.f9256a = str;
        this.f9257b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        x1.i(this.f9258c, this.f9256a, this.f9257b);
    }
}
