package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class b1 {

    /* renamed from: a  reason: collision with root package name */
    final s3 f7950a;

    /* renamed from: b  reason: collision with root package name */
    t4 f7951b;

    /* renamed from: c  reason: collision with root package name */
    final c f7952c;

    /* renamed from: d  reason: collision with root package name */
    private final me f7953d;

    public b1() {
        s3 s3Var = new s3();
        this.f7950a = s3Var;
        this.f7951b = s3Var.f8305b.a();
        this.f7952c = new c();
        this.f7953d = new me();
        s3Var.f8307d.a("internal.registerCallback", new Callable() { // from class: com.google.android.gms.internal.measurement.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return b1.this.b();
            }
        });
        s3Var.f8307d.a("internal.eventLogger", new Callable() { // from class: com.google.android.gms.internal.measurement.b0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new t8(b1.this.f7952c);
            }
        });
    }

    public final c a() {
        return this.f7952c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ j b() throws Exception {
        return new ie(this.f7953d);
    }

    public final void c(m5 m5Var) throws zzd {
        j jVar;
        try {
            this.f7951b = this.f7950a.f8305b.a();
            if (!(this.f7950a.a(this.f7951b, (r5[]) m5Var.y().toArray(new r5[0])) instanceof h)) {
                for (k5 k5Var : m5Var.w().z()) {
                    List y10 = k5Var.y();
                    String x10 = k5Var.x();
                    Iterator it = y10.iterator();
                    while (it.hasNext()) {
                        q a10 = this.f7950a.a(this.f7951b, (r5) it.next());
                        if (a10 instanceof n) {
                            t4 t4Var = this.f7951b;
                            if (t4Var.h(x10)) {
                                q d10 = t4Var.d(x10);
                                if (d10 instanceof j) {
                                    jVar = (j) d10;
                                } else {
                                    throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(x10)));
                                }
                            } else {
                                jVar = null;
                            }
                            if (jVar != null) {
                                jVar.b(this.f7951b, Collections.singletonList(a10));
                            } else {
                                throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(x10)));
                            }
                        } else {
                            throw new IllegalArgumentException("Invalid rule definition");
                        }
                    }
                }
                return;
            }
            throw new IllegalStateException("Program loading failed");
        } catch (Throwable th2) {
            throw new zzd(th2);
        }
    }

    public final void d(String str, Callable callable) {
        this.f7950a.f8307d.a(str, callable);
    }

    public final boolean e(b bVar) throws zzd {
        try {
            this.f7952c.d(bVar);
            this.f7950a.f8306c.g("runtime.counter", new i(Double.valueOf(0.0d)));
            this.f7953d.b(this.f7951b.a(), this.f7952c);
            if (g()) {
                return true;
            }
            return f();
        } catch (Throwable th2) {
            throw new zzd(th2);
        }
    }

    public final boolean f() {
        return !this.f7952c.c().isEmpty();
    }

    public final boolean g() {
        c cVar = this.f7952c;
        return !cVar.b().equals(cVar.a());
    }
}
