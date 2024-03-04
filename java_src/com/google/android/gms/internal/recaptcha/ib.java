package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ib<V> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final cb<V> f8759a;

    /* renamed from: b  reason: collision with root package name */
    final nd<? extends V> f8760b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ib(cb<V> cbVar, nd<? extends V> ndVar) {
        this.f8759a = cbVar;
        this.f8760b = ndVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object o10;
        db dbVar;
        obj = ((cb) this.f8759a).f8563a;
        if (obj != this) {
            return;
        }
        o10 = cb.o(this.f8760b);
        dbVar = cb.f8561f;
        if (dbVar.d(this.f8759a, this, o10)) {
            cb.R(this.f8759a);
        }
    }
}
