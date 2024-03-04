package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i5 f9619a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ n f9620b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(n nVar, i5 i5Var) {
        this.f9620b = nVar;
        this.f9619a = i5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9619a.d();
        if (c.a()) {
            this.f9619a.a().z(this);
            return;
        }
        boolean e10 = this.f9620b.e();
        this.f9620b.f9660c = 0L;
        if (e10) {
            this.f9620b.c();
        }
    }
}
