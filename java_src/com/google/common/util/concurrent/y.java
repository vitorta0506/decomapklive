package com.google.common.util.concurrent;

import com.google.common.util.concurrent.b0;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public final class y extends a0 {

    /* loaded from: classes2.dex */
    private static final class a<V> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Future<V> f13805a;

        /* renamed from: b  reason: collision with root package name */
        final x<? super V> f13806b;

        a(Future<V> future, x<? super V> xVar) {
            this.f13805a = future;
            this.f13806b = xVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable a10;
            Future<V> future = this.f13805a;
            if ((future instanceof y5.a) && (a10 = y5.b.a((y5.a) future)) != null) {
                this.f13806b.onFailure(a10);
                return;
            }
            try {
                this.f13806b.onSuccess(y.b(this.f13805a));
            } catch (Error e10) {
                e = e10;
                this.f13806b.onFailure(e);
            } catch (RuntimeException e11) {
                e = e11;
                this.f13806b.onFailure(e);
            } catch (ExecutionException e12) {
                this.f13806b.onFailure(e12.getCause());
            }
        }

        public String toString() {
            return com.google.common.base.j.c(this).k(this.f13806b).toString();
        }
    }

    public static <V> void a(d0<V> d0Var, x<? super V> xVar, Executor executor) {
        com.google.common.base.o.s(xVar);
        d0Var.addListener(new a(d0Var, xVar), executor);
    }

    public static <V> V b(Future<V> future) throws ExecutionException {
        com.google.common.base.o.D(future.isDone(), "Future was expected to be done: %s", future);
        return (V) n0.a(future);
    }

    public static <V> d0<V> c(Throwable th2) {
        com.google.common.base.o.s(th2);
        return new b0.a(th2);
    }

    public static <V> d0<V> d(V v10) {
        if (v10 == null) {
            return (d0<V>) b0.f13744b;
        }
        return new b0(v10);
    }

    public static <I, O> d0<O> e(d0<I> d0Var, com.google.common.base.h<? super I, ? extends O> hVar, Executor executor) {
        return c.V(d0Var, hVar, executor);
    }
}
