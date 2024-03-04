package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class i6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ boolean f9488a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ m6 f9489b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i6(m6 m6Var, boolean z10) {
        this.f9489b = m6Var;
        this.f9488a = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean o10 = this.f9489b.f9432a.o();
        boolean n9 = this.f9489b.f9432a.n();
        this.f9489b.f9432a.k(this.f9488a);
        if (n9 == this.f9488a) {
            this.f9489b.f9432a.b().v().b("Default data collection state already set to", Boolean.valueOf(this.f9488a));
        }
        if (this.f9489b.f9432a.o() == o10 || this.f9489b.f9432a.o() != this.f9489b.f9432a.n()) {
            this.f9489b.f9432a.b().x().c("Default data collection is different than actual status", Boolean.valueOf(this.f9488a), Boolean.valueOf(o10));
        }
        this.f9489b.P();
    }
}
