package com.google.common.util.concurrent;

import com.google.common.util.concurrent.u;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
abstract class c<I, O, F, T> extends u.a<O> implements Runnable {

    /* renamed from: h  reason: collision with root package name */
    d0<? extends I> f13747h;

    /* renamed from: i  reason: collision with root package name */
    F f13748i;

    /* loaded from: classes2.dex */
    private static final class a<I, O> extends c<I, O, com.google.common.base.h<? super I, ? extends O>, O> {
        a(d0<? extends I> d0Var, com.google.common.base.h<? super I, ? extends O> hVar) {
            super(d0Var, hVar);
        }

        @Override // com.google.common.util.concurrent.c
        void X(O o10) {
            R(o10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.c
        /* renamed from: Y */
        public O W(com.google.common.base.h<? super I, ? extends O> hVar, I i9) {
            return hVar.apply(i9);
        }
    }

    c(d0<? extends I> d0Var, F f10) {
        this.f13747h = (d0) com.google.common.base.o.s(d0Var);
        this.f13748i = (F) com.google.common.base.o.s(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <I, O> d0<O> V(d0<I> d0Var, com.google.common.base.h<? super I, ? extends O> hVar, Executor executor) {
        com.google.common.base.o.s(hVar);
        a aVar = new a(d0Var, hVar);
        d0Var.addListener(aVar, h0.c(executor, aVar));
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.a
    public String M() {
        String str;
        d0<? extends I> d0Var = this.f13747h;
        F f10 = this.f13748i;
        String M = super.M();
        if (d0Var != null) {
            String valueOf = String.valueOf(d0Var);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 16);
            sb2.append("inputFuture=[");
            sb2.append(valueOf);
            sb2.append("], ");
            str = sb2.toString();
        } else {
            str = "";
        }
        if (f10 == null) {
            if (M != null) {
                String valueOf2 = String.valueOf(str);
                return M.length() != 0 ? valueOf2.concat(M) : new String(valueOf2);
            }
            return null;
        }
        String valueOf3 = String.valueOf(f10);
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 11 + valueOf3.length());
        sb3.append(str);
        sb3.append("function=[");
        sb3.append(valueOf3);
        sb3.append("]");
        return sb3.toString();
    }

    abstract T W(F f10, I i9) throws Exception;

    abstract void X(T t10);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        d0<? extends I> d0Var = this.f13747h;
        F f10 = this.f13748i;
        if ((isCancelled() | (d0Var == null)) || (f10 == null)) {
            return;
        }
        this.f13747h = null;
        if (d0Var.isCancelled()) {
            T(d0Var);
            return;
        }
        try {
            try {
                Object W = W(f10, y.b(d0Var));
                this.f13748i = null;
                X(W);
            } catch (Throwable th2) {
                try {
                    S(th2);
                } finally {
                    this.f13748i = null;
                }
            }
        } catch (Error e10) {
            S(e10);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e11) {
            S(e11);
        } catch (ExecutionException e12) {
            S(e12.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.a
    public final void t() {
        K(this.f13747h);
        this.f13747h = null;
        this.f13748i = null;
    }
}
