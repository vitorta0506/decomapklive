package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class w6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r6 f9941a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f9942b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ y6 f9943c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w6(y6 y6Var, r6 r6Var, long j10) {
        this.f9943c = y6Var;
        this.f9941a = r6Var;
        this.f9942b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9943c.p(this.f9941a, false, this.f9942b);
        y6 y6Var = this.f9943c;
        y6Var.f10006e = null;
        y6Var.f9432a.L().u(null);
    }
}
