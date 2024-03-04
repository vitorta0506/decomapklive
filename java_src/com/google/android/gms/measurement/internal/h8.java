package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class h8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f9475a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o8 f9476b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h8(o8 o8Var, long j10) {
        this.f9476b = o8Var;
        this.f9475a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o8.q(this.f9476b, this.f9475a);
    }
}
