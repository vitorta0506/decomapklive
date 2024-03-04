package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    final Map f8432a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final l0 f8433b = new l0();

    public y() {
        b(new w());
        b(new z());
        b(new a0());
        b(new e0());
        b(new j0());
        b(new k0());
        b(new m0());
    }

    public final q a(t4 t4Var, q qVar) {
        x xVar;
        u5.c(t4Var);
        if (qVar instanceof r) {
            r rVar = (r) qVar;
            ArrayList e10 = rVar.e();
            String b10 = rVar.b();
            if (this.f8432a.containsKey(b10)) {
                xVar = (x) this.f8432a.get(b10);
            } else {
                xVar = this.f8433b;
            }
            return xVar.a(b10, t4Var, e10);
        }
        return qVar;
    }

    final void b(x xVar) {
        for (zzbl zzblVar : xVar.f8419a) {
            this.f8432a.put(zzblVar.zzb().toString(), xVar);
        }
    }
}
