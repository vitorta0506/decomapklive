package com.google.android.gms.internal.recaptcha;

import java.lang.Throwable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ab<V, X extends Throwable> extends bb<V, X, dc<? super X, ? extends V>, nd<? extends V>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(nd<? extends V> ndVar, Class<X> cls, dc<? super X, ? extends V> dcVar) {
        super(ndVar, cls, dcVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.bb
    final /* bridge */ /* synthetic */ Object S(Object obj, Throwable th2) throws Exception {
        nd a10 = obj.a(th2);
        z7.d(a10, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", obj);
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.recaptcha.bb
    final /* bridge */ /* synthetic */ void T(Object obj) {
        n(obj);
    }
}
