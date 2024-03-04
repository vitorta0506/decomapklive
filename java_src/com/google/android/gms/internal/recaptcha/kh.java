package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
/* loaded from: classes2.dex */
final class kh<T> implements uh<T> {

    /* renamed from: a  reason: collision with root package name */
    private final gh f8823a;

    /* renamed from: b  reason: collision with root package name */
    private final ki<?, ?> f8824b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8825c;

    /* renamed from: d  reason: collision with root package name */
    private final qf<?> f8826d;

    private kh(ki<?, ?> kiVar, qf<?> qfVar, gh ghVar) {
        this.f8824b = kiVar;
        this.f8825c = qfVar.h(ghVar);
        this.f8826d = qfVar;
        this.f8823a = ghVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> kh<T> i(ki<?, ?> kiVar, qf<?> qfVar, gh ghVar) {
        return new kh<>(kiVar, qfVar, ghVar);
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final T E() {
        return (T) this.f8823a.b().F();
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final int a(T t10) {
        ki<?, ?> kiVar = this.f8824b;
        int b10 = kiVar.b(kiVar.d(t10));
        if (this.f8825c) {
            this.f8826d.a(t10);
            throw null;
        }
        return b10;
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final int b(T t10) {
        int hashCode = this.f8824b.d(t10).hashCode();
        if (this.f8825c) {
            this.f8826d.a(t10);
            throw null;
        }
        return hashCode;
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final void c(T t10) {
        this.f8824b.m(t10);
        this.f8826d.e(t10);
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final void d(T t10, sh shVar, pf pfVar) throws IOException {
        boolean C;
        ki<?, ?> kiVar = this.f8824b;
        qf<?> qfVar = this.f8826d;
        Object c10 = kiVar.c(t10);
        uf<?> b10 = qfVar.b(t10);
        while (shVar.E() != Integer.MAX_VALUE) {
            try {
                int c11 = shVar.c();
                if (c11 != 11) {
                    if ((c11 & 7) == 2) {
                        Object c12 = qfVar.c(pfVar, this.f8823a, c11 >>> 3);
                        if (c12 != null) {
                            qfVar.f(shVar, c12, pfVar, b10);
                        } else {
                            C = kiVar.q(c10, shVar);
                        }
                    } else {
                        C = shVar.C();
                    }
                    if (!C) {
                        return;
                    }
                } else {
                    int i9 = 0;
                    Object obj = null;
                    zzpy zzpyVar = null;
                    while (shVar.E() != Integer.MAX_VALUE) {
                        int c13 = shVar.c();
                        if (c13 == 16) {
                            i9 = shVar.G();
                            obj = qfVar.c(pfVar, this.f8823a, i9);
                        } else if (c13 == 26) {
                            if (obj != null) {
                                qfVar.f(shVar, obj, pfVar, b10);
                            } else {
                                zzpyVar = shVar.H();
                            }
                        } else if (!shVar.C()) {
                            break;
                        }
                    }
                    if (shVar.c() != 12) {
                        throw zzrr.zzb();
                    } else if (zzpyVar != null) {
                        if (obj != null) {
                            qfVar.g(zzpyVar, obj, pfVar, b10);
                        } else {
                            kiVar.k(c10, i9, zzpyVar);
                        }
                    }
                }
            } finally {
                kiVar.n(t10, c10);
            }
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final boolean e(T t10, T t11) {
        if (this.f8824b.d(t10).equals(this.f8824b.d(t11))) {
            if (this.f8825c) {
                this.f8826d.a(t10);
                this.f8826d.a(t11);
                throw null;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final void f(T t10, T t11) {
        wh.f(this.f8824b, t10, t11);
        if (this.f8825c) {
            wh.e(this.f8826d, t10, t11);
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final void g(T t10, bj bjVar) throws IOException {
        this.f8826d.a(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.recaptcha.uh
    public final boolean h(T t10) {
        this.f8826d.a(t10);
        throw null;
    }
}
