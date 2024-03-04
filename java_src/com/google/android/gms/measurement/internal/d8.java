package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class d8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d9 f9350a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Runnable f9351b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d8(e8 e8Var, d9 d9Var, Runnable runnable) {
        this.f9350a = d9Var;
        this.f9351b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9350a.e();
        this.f9350a.l0(this.f9351b);
        this.f9350a.C();
    }
}
