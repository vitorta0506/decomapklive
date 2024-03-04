package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class rc {

    /* renamed from: a */
    private final AtomicReference<nd<Void>> f9020a = new AtomicReference<>(id.f8763b);

    /* renamed from: b */
    private qc f9021b = new qc(null);

    private rc() {
    }

    public static rc c() {
        return new rc();
    }

    public final <T> nd<T> d(cc<T> ccVar, Executor executor) {
        Objects.requireNonNull(executor);
        pc pcVar = new pc(executor, this, null);
        mc mcVar = new mc(this, pcVar, ccVar);
        zd S = zd.S();
        nd<Void> andSet = this.f9020a.getAndSet(S);
        ce ceVar = new ce(mcVar);
        andSet.F(ceVar, pcVar);
        nd<T> h10 = dd.h(ceVar);
        nc ncVar = new nc(this, ceVar, S, andSet, h10, pcVar);
        kc kcVar = kc.INSTANCE;
        h10.F(ncVar, kcVar);
        ceVar.F(ncVar, kcVar);
        return h10;
    }
}
