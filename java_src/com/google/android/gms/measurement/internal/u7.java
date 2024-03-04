package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class u7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p4.e f9899a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x7 f9900b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u7(x7 x7Var, p4.e eVar) {
        this.f9900b = x7Var;
        this.f9899a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9900b) {
            this.f9900b.f9981a = false;
            if (!this.f9900b.f9983c.z()) {
                this.f9900b.f9983c.f9432a.b().q().a("Connected to remote service");
                this.f9900b.f9983c.x(this.f9899a);
            }
        }
    }
}
