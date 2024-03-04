package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class qb<I, O> extends sb<I, O, dc<? super I, ? extends O>, nd<? extends O>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public qb(nd<? extends I> ndVar, dc<? super I, ? extends O> dcVar) {
        super(ndVar, dcVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.sb
    final /* bridge */ /* synthetic */ Object S(Object obj, Object obj2) throws Exception {
        dc dcVar = (dc) obj;
        nd<O> a10 = dcVar.a(obj2);
        z7.d(a10, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", dcVar);
        return a10;
    }

    @Override // com.google.android.gms.internal.recaptcha.sb
    final /* bridge */ /* synthetic */ void T(Object obj) {
        n((nd) obj);
    }
}
