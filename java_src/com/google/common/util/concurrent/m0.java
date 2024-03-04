package com.google.common.util.concurrent;

import com.google.common.util.concurrent.u;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
/* loaded from: classes2.dex */
class m0<V> extends u.a<V> implements RunnableFuture<V> {

    /* renamed from: h  reason: collision with root package name */
    private volatile c0<?> f13786h;

    /* loaded from: classes2.dex */
    private final class a extends c0<V> {

        /* renamed from: c  reason: collision with root package name */
        private final Callable<V> f13787c;

        a(Callable<V> callable) {
            this.f13787c = (Callable) com.google.common.base.o.s(callable);
        }

        @Override // com.google.common.util.concurrent.c0
        void b(Throwable th2) {
            m0.this.S(th2);
        }

        @Override // com.google.common.util.concurrent.c0
        void c(V v10) {
            m0.this.R(v10);
        }

        @Override // com.google.common.util.concurrent.c0
        final boolean f() {
            return m0.this.isDone();
        }

        @Override // com.google.common.util.concurrent.c0
        V g() throws Exception {
            return this.f13787c.call();
        }

        @Override // com.google.common.util.concurrent.c0
        String h() {
            return this.f13787c.toString();
        }
    }

    m0(Callable<V> callable) {
        this.f13786h = new a(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> m0<V> V(Runnable runnable, V v10) {
        return new m0<>(Executors.callable(runnable, v10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> m0<V> W(Callable<V> callable) {
        return new m0<>(callable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.a
    public String M() {
        c0<?> c0Var = this.f13786h;
        if (c0Var != null) {
            String valueOf = String.valueOf(c0Var);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 7);
            sb2.append("task=[");
            sb2.append(valueOf);
            sb2.append("]");
            return sb2.toString();
        }
        return super.M();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        c0<?> c0Var = this.f13786h;
        if (c0Var != null) {
            c0Var.run();
        }
        this.f13786h = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.a
    public void t() {
        c0<?> c0Var;
        super.t();
        if (U() && (c0Var = this.f13786h) != null) {
            c0Var.d();
        }
        this.f13786h = null;
    }
}
