package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f9921a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y6 f9922b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v6(y6 y6Var, long j10) {
        this.f9922b = y6Var;
        this.f9921a = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9922b.f9432a.y().n(this.f9921a);
        this.f9922b.f10006e = null;
    }
}
