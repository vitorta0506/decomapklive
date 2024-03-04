package ug;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class a0<V> extends h<V> implements RunnableFuture<V> {

    /* renamed from: o  reason: collision with root package name */
    private static final Runnable f58420o = new b("COMPLETED");

    /* renamed from: p  reason: collision with root package name */
    private static final Runnable f58421p = new b("CANCELLED");

    /* renamed from: q  reason: collision with root package name */
    private static final Runnable f58422q = new b("FAILED");

    /* renamed from: n  reason: collision with root package name */
    private Object f58423n;

    /* loaded from: classes5.dex */
    private static final class a<T> implements Callable<T> {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f58424a;

        /* renamed from: b  reason: collision with root package name */
        final T f58425b;

        a(Runnable runnable, T t10) {
            this.f58424a = runnable;
            this.f58425b = t10;
        }

        @Override // java.util.concurrent.Callable
        public T call() {
            this.f58424a.run();
            return this.f58425b;
        }

        public String toString() {
            return "Callable(task: " + this.f58424a + ", result: " + this.f58425b + ')';
        }
    }

    /* loaded from: classes5.dex */
    private static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final String f58426a;

        b(String str) {
            this.f58426a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return this.f58426a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [ug.a0$a] */
    public a0(j jVar, Runnable runnable, V v10) {
        super(jVar);
        this.f58423n = v10 != null ? new a(runnable, v10) : runnable;
    }

    private boolean l0(boolean z10, Runnable runnable) {
        if (z10) {
            this.f58423n = runnable;
        }
        return z10;
    }

    @Override // ug.h, ug.x
    public final boolean B(V v10) {
        return false;
    }

    @Override // ug.h, ug.q, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        return l0(super.cancel(z10), f58421p);
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ug.h
    public StringBuilder j0() {
        StringBuilder j02 = super.j0();
        j02.setCharAt(j02.length() - 1, ',');
        j02.append(" task: ");
        j02.append(this.f58423n);
        j02.append(')');
        return j02;
    }

    @Override // ug.h, ug.x
    public final x<V> m0(V v10) {
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public V n0() throws Throwable {
        Object obj = this.f58423n;
        if (obj instanceof Callable) {
            return (V) ((Callable) obj).call();
        }
        ((Runnable) obj).run();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final x<V> r0(Throwable th2) {
        super.d0(th2);
        l0(true, f58422q);
        return this;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            if (u0()) {
                t0(n0());
            }
        } catch (Throwable th2) {
            r0(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final x<V> t0(V v10) {
        super.m0(v10);
        l0(true, f58420o);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean u0() {
        return super.g();
    }

    @Override // ug.h, ug.x
    public final boolean z(Throwable th2) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(j jVar, Runnable runnable) {
        super(jVar);
        this.f58423n = runnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(j jVar, Callable<V> callable) {
        super(jVar);
        this.f58423n = callable;
    }
}
