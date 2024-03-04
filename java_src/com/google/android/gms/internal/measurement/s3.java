package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class s3 {

    /* renamed from: a  reason: collision with root package name */
    final y f8304a;

    /* renamed from: b  reason: collision with root package name */
    final t4 f8305b;

    /* renamed from: c  reason: collision with root package name */
    final t4 f8306c;

    /* renamed from: d  reason: collision with root package name */
    final v7 f8307d;

    public s3() {
        y yVar = new y();
        this.f8304a = yVar;
        t4 t4Var = new t4(null, yVar);
        this.f8306c = t4Var;
        this.f8305b = t4Var.a();
        v7 v7Var = new v7();
        this.f8307d = v7Var;
        t4Var.g("require", new je(v7Var));
        v7Var.a("internal.platform", new Callable() { // from class: com.google.android.gms.internal.measurement.r2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new le();
            }
        });
        t4Var.g("runtime.counter", new i(Double.valueOf(0.0d)));
    }

    public final q a(t4 t4Var, r5... r5VarArr) {
        q qVar = q.U;
        for (r5 r5Var : r5VarArr) {
            qVar = v6.a(r5Var);
            u5.c(this.f8306c);
            if ((qVar instanceof r) || (qVar instanceof p)) {
                qVar = this.f8304a.a(t4Var, qVar);
            }
        }
        return qVar;
    }
}
