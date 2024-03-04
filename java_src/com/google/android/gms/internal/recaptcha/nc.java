package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class nc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ce f8921a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zd f8922b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ nd f8923c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ nd f8924d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ pc f8925e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nc(rc rcVar, ce ceVar, zd zdVar, nd ndVar, nd ndVar2, pc pcVar) {
        this.f8921a = ceVar;
        this.f8922b = zdVar;
        this.f8923c = ndVar;
        this.f8924d = ndVar2;
        this.f8925e = pcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f8921a.isDone()) {
            this.f8922b.n(this.f8923c);
        } else if (this.f8924d.isCancelled() && this.f8925e.compareAndSet(oc.NOT_RUN, oc.CANCELLED)) {
            this.f8921a.cancel(false);
        }
    }
}
