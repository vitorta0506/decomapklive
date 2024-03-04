package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public abstract class w<V> extends v<V> implements d0<V> {

    /* loaded from: classes2.dex */
    public static abstract class a<V> extends w<V> {

        /* renamed from: a  reason: collision with root package name */
        private final d0<V> f13804a;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(d0<V> d0Var) {
            this.f13804a = (d0) com.google.common.base.o.s(d0Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.v
        /* renamed from: y0 */
        public final d0<V> w0() {
            return this.f13804a;
        }
    }

    protected w() {
    }

    @Override // com.google.common.util.concurrent.d0
    public void addListener(Runnable runnable, Executor executor) {
        y0().addListener(runnable, executor);
    }

    protected abstract d0<? extends V> y0();
}
