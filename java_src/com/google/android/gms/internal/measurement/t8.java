package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class t8 extends j {

    /* renamed from: c  reason: collision with root package name */
    private final c f8351c;

    public t8(c cVar) {
        super("internal.eventLogger");
        this.f8351c = cVar;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        Map hashMap;
        u5.h(this.f8138a, 3, list);
        String d10 = t4Var.b((q) list.get(0)).d();
        long a10 = (long) u5.a(t4Var.b((q) list.get(1)).a().doubleValue());
        q b10 = t4Var.b((q) list.get(2));
        if (b10 instanceof n) {
            hashMap = u5.g((n) b10);
        } else {
            hashMap = new HashMap();
        }
        this.f8351c.e(d10, a10, hashMap);
        return q.U;
    }
}
