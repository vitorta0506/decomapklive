package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class e0 extends x {
    /* JADX INFO: Access modifiers changed from: protected */
    public e0() {
        this.f8419a.add(zzbl.AND);
        this.f8419a.add(zzbl.NOT);
        this.f8419a.add(zzbl.OR);
    }

    @Override // com.google.android.gms.internal.measurement.x
    public final q a(String str, t4 t4Var, List list) {
        zzbl zzblVar = zzbl.ADD;
        int ordinal = u5.e(str).ordinal();
        if (ordinal == 1) {
            u5.h(zzbl.AND.name(), 2, list);
            q b10 = t4Var.b((q) list.get(0));
            return !b10.f().booleanValue() ? b10 : t4Var.b((q) list.get(1));
        } else if (ordinal == 47) {
            u5.h(zzbl.NOT.name(), 1, list);
            return new g(Boolean.valueOf(!t4Var.b((q) list.get(0)).f().booleanValue()));
        } else if (ordinal != 50) {
            return super.b(str);
        } else {
            u5.h(zzbl.OR.name(), 2, list);
            q b11 = t4Var.b((q) list.get(0));
            return b11.f().booleanValue() ? b11 : t4Var.b((q) list.get(1));
        }
    }
}
