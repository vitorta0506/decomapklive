package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class w0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f9929a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x1 f9930b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(x1 x1Var, long j10) {
        this.f9930b = x1Var;
        this.f9929a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9930b.q(this.f9929a);
    }
}
