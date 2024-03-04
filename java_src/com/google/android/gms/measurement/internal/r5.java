package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class r5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f9803a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9804b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r5(m6 m6Var, long j10) {
        this.f9804b = m6Var;
        this.f9803a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9804b.f9432a.F().f9961k.b(this.f9803a);
        this.f9804b.f9432a.b().q().b("Session timeout duration set", Long.valueOf(this.f9803a));
    }
}
