package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public final class je extends j {

    /* renamed from: c  reason: collision with root package name */
    private final v7 f8158c;

    /* renamed from: d  reason: collision with root package name */
    final Map f8159d;

    public je(v7 v7Var) {
        super("require");
        this.f8159d = new HashMap();
        this.f8158c = v7Var;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        q qVar;
        u5.h("require", 1, list);
        String d10 = t4Var.b((q) list.get(0)).d();
        if (this.f8159d.containsKey(d10)) {
            return (q) this.f8159d.get(d10);
        }
        v7 v7Var = this.f8158c;
        if (v7Var.f8382a.containsKey(d10)) {
            try {
                qVar = (q) ((Callable) v7Var.f8382a.get(d10)).call();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to create API implementation: ".concat(String.valueOf(d10)));
            }
        } else {
            qVar = q.U;
        }
        if (qVar instanceof j) {
            this.f8159d.put(d10, (j) qVar);
        }
        return qVar;
    }
}
