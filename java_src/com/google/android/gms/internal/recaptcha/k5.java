package com.google.android.gms.internal.recaptcha;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class k5<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f8806a;

    /* renamed from: b  reason: collision with root package name */
    private final nd<String> f8807b;

    /* renamed from: c  reason: collision with root package name */
    private final o5<T> f8808c;

    /* renamed from: d  reason: collision with root package name */
    private final rc f8809d;

    /* renamed from: e  reason: collision with root package name */
    private final e6<Void> f8810e;

    /* renamed from: h  reason: collision with root package name */
    private final m6 f8813h;

    /* renamed from: j  reason: collision with root package name */
    private final t5 f8815j;

    /* renamed from: f  reason: collision with root package name */
    private final e6<?> f8811f = new e6<>(new h5(this, null), ud.b());

    /* renamed from: g  reason: collision with root package name */
    private final Object f8812g = new Object();

    /* renamed from: i  reason: collision with root package name */
    private List<dc<a4<T>, ?>> f8814i = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public k5(o5 o5Var, o5<T> o5Var2, t5 t5Var, nd<String> ndVar, boolean z10, boolean z11) {
        this.f8808c = o5Var;
        this.f8815j = o5Var2;
        this.f8807b = t5Var;
        this.f8806a = o5Var.e();
        final z4 z4Var = (z4) o5Var;
        this.f8810e = new e6<>(new cc() { // from class: com.google.android.gms.internal.recaptcha.q4
            @Override // com.google.android.gms.internal.recaptcha.cc
            public final nd zza() {
                return z4.this.f();
            }
        }, ud.b());
        if (z10) {
            this.f8813h = m6.d();
        } else {
            this.f8813h = m6.c();
        }
        n(new dc() { // from class: com.google.android.gms.internal.recaptcha.b5
            @Override // com.google.android.gms.internal.recaptcha.dc
            public final nd a(Object obj) {
                return k5.this.f((a4) obj);
            }
        });
        if (ndVar != null) {
            this.f8809d = rc.c();
        } else {
            this.f8809d = null;
        }
    }

    public final nd<T> d() {
        nd<T> ndVar;
        this.f8813h.a();
        if (this.f8811f.h()) {
            ndVar = this.f8808c.a(null);
        } else {
            m6 m6Var = this.f8813h;
            String valueOf = String.valueOf(this.f8806a);
            q6 b10 = m6Var.b(valueOf.length() != 0 ? "Get ".concat(valueOf) : new String("Get "), 1);
            try {
                nd<T> k10 = dd.k(this.f8811f.b(), y6.c(new dc(null) { // from class: com.google.android.gms.internal.recaptcha.c5
                    @Override // com.google.android.gms.internal.recaptcha.dc
                    public final nd a(Object obj) {
                        return k5.this.e(null, obj);
                    }
                }), ud.b());
                b10.b(k10);
                b10.close();
                ndVar = k10;
            } catch (Throwable th2) {
                try {
                    b10.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        dd.h(this.f8807b);
        return dd.h(ndVar);
    }

    public final /* synthetic */ nd e(m5 m5Var, Object obj) throws Exception {
        return this.f8808c.a(null);
    }

    public final /* synthetic */ nd f(a4 a4Var) throws Exception {
        return this.f8810e.b();
    }

    public final /* synthetic */ nd g(dc dcVar, Executor executor, Object obj) throws Exception {
        return this.f8808c.b(dcVar, executor, null);
    }

    public final /* synthetic */ nd h(dc dcVar, Executor executor, Object obj) throws Exception {
        return this.f8808c.b(dcVar, executor, null);
    }

    public final nd<Void> i(final dc<? super T, T> dcVar, final Executor executor) {
        nd<Void> d10;
        m6 m6Var = this.f8813h;
        String valueOf = String.valueOf(this.f8806a);
        q6 b10 = m6Var.b(valueOf.length() != 0 ? "Update ".concat(valueOf) : new String("Update "), 1);
        try {
            final nd<?> b11 = this.f8811f.b();
            rc rcVar = this.f8809d;
            if (rcVar == null) {
                d10 = dd.k(b11, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.d5
                    @Override // com.google.android.gms.internal.recaptcha.dc
                    public final nd a(Object obj) {
                        return k5.this.g(dcVar, executor, obj);
                    }
                }), ud.b());
            } else {
                d10 = rcVar.d(y6.b(new cc() { // from class: com.google.android.gms.internal.recaptcha.a5
                    @Override // com.google.android.gms.internal.recaptcha.cc
                    public final nd zza() {
                        final k5 k5Var = k5.this;
                        nd ndVar = b11;
                        final dc dcVar2 = dcVar;
                        final Executor executor2 = executor;
                        return dd.k(ndVar, y6.c(new dc() { // from class: com.google.android.gms.internal.recaptcha.e5
                            @Override // com.google.android.gms.internal.recaptcha.dc
                            public final nd a(Object obj) {
                                return k5.this.h(dcVar2, executor2, obj);
                            }
                        }), ud.b());
                    }
                }), ud.b());
            }
            dd.h(this.f8807b);
            b10.b(d10);
            b10.close();
            return d10;
        } catch (Throwable th2) {
            try {
                b10.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void n(dc<a4<T>, ?> dcVar) {
        synchronized (this.f8812g) {
            this.f8814i.add(dcVar);
        }
    }
}
