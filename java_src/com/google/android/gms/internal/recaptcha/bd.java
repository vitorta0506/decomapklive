package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class bd<V> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f8529a;

    /* renamed from: b  reason: collision with root package name */
    private final zzkj<nd<? extends V>> f8530b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bd(boolean z10, zzkj zzkjVar, zc zcVar) {
        this.f8529a = z10;
        this.f8530b = zzkjVar;
    }

    public final <C> nd<C> a(Callable<C> callable, Executor executor) {
        return new jc(this.f8530b, this.f8529a, executor, callable);
    }

    public final <C> nd<C> b(cc<C> ccVar, Executor executor) {
        return new jc(this.f8530b, this.f8529a, executor, ccVar);
    }
}
