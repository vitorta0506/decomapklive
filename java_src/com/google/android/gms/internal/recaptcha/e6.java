package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public final class e6<T> {

    /* renamed from: a */
    private final b6<T> f8625a;

    /* renamed from: b */
    private final AtomicLong f8626b = new AtomicLong(i(Integer.MIN_VALUE, Integer.MIN_VALUE));

    /* renamed from: c */
    private final AtomicReference<d6<T>> f8627c = new AtomicReference<>(null);

    /* renamed from: d */
    private final AtomicReference<nd<T>> f8628d = new AtomicReference<>(null);

    /* renamed from: e */
    private final Executor f8629e = ud.c(ud.b());

    /* renamed from: f */
    private final zd<T> f8630f;

    public e6(cc<T> ccVar, Executor executor) {
        zd<T> S = zd.S();
        this.f8630f = S;
        b6<T> b6Var = new b6<>(ccVar, executor);
        this.f8625a = b6Var;
        S.F(b6Var, ud.b());
    }

    public static /* synthetic */ boolean g(e6 e6Var) {
        long j10;
        int i9;
        int i10;
        boolean z10;
        do {
            j10 = e6Var.f8626b.get();
            i9 = (int) j10;
            i10 = (int) (j10 >>> 32);
            if (i9 == Integer.MIN_VALUE) {
                StringBuilder sb2 = new StringBuilder(33);
                sb2.append("Refcount is: ");
                sb2.append(j10);
                throw new AssertionError(sb2.toString());
            }
            z10 = i9 == -2147483647;
            if (z10) {
                i10++;
            }
        } while (!e6Var.f8626b.compareAndSet(j10, i(i10, i9 - 1)));
        return z10;
    }

    private static long i(int i9, int i10) {
        return (i10 & 4294967295L) | (i9 << 32);
    }

    /* renamed from: j */
    public final nd<T> c(int i9) {
        d6<T> d6Var;
        cc ccVar;
        Executor executor;
        int i10;
        if (((int) (this.f8626b.get() >>> 32)) > i9) {
            return dd.d();
        }
        d6<T> d6Var2 = new d6<>(i9);
        do {
            d6Var = this.f8627c.get();
            if (d6Var != null) {
                i10 = ((d6) d6Var).f8589h;
                if (i10 > i9) {
                    return dd.d();
                }
            }
        } while (!this.f8627c.compareAndSet(d6Var, d6Var2));
        if (((int) (this.f8626b.get() >>> 32)) > i9) {
            d6Var2.cancel(true);
            this.f8627c.compareAndSet(d6Var2, null);
            return d6Var2;
        }
        ccVar = ((b6) this.f8625a).f8516a;
        executor = ((b6) this.f8625a).f8517b;
        if (ccVar != null && executor != null) {
            d6Var2.n(dd.i(y6.b(ccVar), executor));
        } else {
            d6Var2.n(this.f8630f);
        }
        return d6Var2;
    }

    public final nd<T> b() {
        long j10;
        final int i9;
        nd c10;
        if (!this.f8630f.isDone()) {
            do {
                j10 = this.f8626b.get();
                i9 = (int) (j10 >>> 32);
            } while (!this.f8626b.compareAndSet(j10, i(i9, ((int) j10) + 1)));
            final zd S = zd.S();
            nd<T> andSet = this.f8628d.getAndSet(S);
            if (andSet == null) {
                c10 = dd.i(y6.b(new cc() { // from class: com.google.android.gms.internal.recaptcha.x5
                    @Override // com.google.android.gms.internal.recaptcha.cc
                    public final nd zza() {
                        return e6.this.c(i9);
                    }
                }), ud.b());
            } else {
                c10 = dd.c(andSet, Throwable.class, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.y5
                    @Override // com.google.android.gms.internal.recaptcha.dc
                    public final nd a(Object obj) {
                        return e6.this.d(i9, (Throwable) obj);
                    }
                }), this.f8629e);
            }
            S.n(c10);
            final c6 c6Var = new c6(this, i9, null);
            S.F(new Runnable() { // from class: com.google.android.gms.internal.recaptcha.z5
                @Override // java.lang.Runnable
                public final void run() {
                    e6.this.f(S, c6Var);
                }
            }, ud.b());
            return c6Var;
        }
        return this.f8630f;
    }

    public final /* synthetic */ nd d(int i9, Throwable th2) throws Exception {
        return c(i9);
    }

    public final /* synthetic */ void f(zd zdVar, c6 c6Var) {
        try {
            ((zd<T>) this.f8630f).H(dd.l(zdVar));
            c6Var.n(this.f8630f);
        } catch (Throwable unused) {
            c6Var.n(zdVar);
        }
    }

    public final boolean h() {
        return this.f8630f.isDone();
    }
}
