package com.google.android.gms.measurement.internal;
/* loaded from: classes2.dex */
final class s7 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ p4.e f9853a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ x7 f9854b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s7(x7 x7Var, p4.e eVar) {
        this.f9854b = x7Var;
        this.f9853a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9854b) {
            this.f9854b.f9981a = false;
            if (!this.f9854b.f9983c.z()) {
                this.f9854b.f9983c.f9432a.b().v().a("Connected to service");
                this.f9854b.f9983c.x(this.f9853a);
            }
        }
    }
}
