package com.google.android.gms.internal.recaptcha;

import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2.dex */
public final class dd extends fd {
    public static <V> bd<V> a(Iterable<? extends nd<? extends V>> iterable) {
        return new bd<>(false, zzkj.zzm(iterable), null);
    }

    public static <V> bd<V> b(Iterable<? extends nd<? extends V>> iterable) {
        return new bd<>(true, zzkj.zzm(iterable), null);
    }

    public static <V, X extends Throwable> nd<V> c(nd<? extends V> ndVar, Class<X> cls, dc<? super X, ? extends V> dcVar, Executor executor) {
        ab abVar = new ab(ndVar, cls, dcVar);
        ndVar.F(abVar, ud.d(executor, abVar));
        return abVar;
    }

    public static <V> nd<V> d() {
        return new gd();
    }

    public static <V> nd<V> e(Throwable th2) {
        return new hd(th2);
    }

    public static <V> nd<V> f(@NullableDecl V v10) {
        if (v10 == null) {
            return (nd<V>) id.f8763b;
        }
        return new id(v10);
    }

    public static nd<Void> g() {
        return id.f8763b;
    }

    public static <V> nd<V> h(nd<V> ndVar) {
        if (ndVar.isDone()) {
            return ndVar;
        }
        cd cdVar = new cd(ndVar);
        ndVar.F(cdVar, kc.INSTANCE);
        return cdVar;
    }

    public static <O> nd<O> i(cc<O> ccVar, Executor executor) {
        ce ceVar = new ce(ccVar);
        ceVar.run();
        return ceVar;
    }

    public static <I, O> nd<O> j(nd<I> ndVar, p7<? super I, ? extends O> p7Var, Executor executor) {
        int i9 = sb.f9042j;
        Objects.requireNonNull(p7Var);
        rb rbVar = new rb(ndVar, p7Var);
        ndVar.F(rbVar, ud.d(executor, rbVar));
        return rbVar;
    }

    public static <I, O> nd<O> k(nd<I> ndVar, dc<? super I, ? extends O> dcVar, Executor executor) {
        int i9 = sb.f9042j;
        Objects.requireNonNull(executor);
        qb qbVar = new qb(ndVar, dcVar);
        ndVar.F(qbVar, ud.d(executor, qbVar));
        return qbVar;
    }

    public static <V> V l(Future<V> future) throws ExecutionException {
        V v10;
        boolean z10 = false;
        if (future.isDone()) {
            while (true) {
                try {
                    v10 = future.get();
                    break;
                } catch (InterruptedException unused) {
                    z10 = true;
                } catch (Throwable th2) {
                    if (z10) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
            return v10;
        }
        throw new IllegalStateException(g8.b("Future was expected to be done: %s", future));
    }

    public static <V> void m(nd<V> ndVar, yc<? super V> ycVar, Executor executor) {
        Objects.requireNonNull(ycVar);
        ndVar.F(new ad(ndVar, ycVar), executor);
    }
}
