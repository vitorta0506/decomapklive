package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class w extends x {
    public w() {
        this.f8419a.add(zzbl.BITWISE_AND);
        this.f8419a.add(zzbl.BITWISE_LEFT_SHIFT);
        this.f8419a.add(zzbl.BITWISE_NOT);
        this.f8419a.add(zzbl.BITWISE_OR);
        this.f8419a.add(zzbl.BITWISE_RIGHT_SHIFT);
        this.f8419a.add(zzbl.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.f8419a.add(zzbl.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.x
    public final q a(String str, t4 t4Var, List list) {
        zzbl zzblVar = zzbl.ADD;
        switch (u5.e(str).ordinal()) {
            case 4:
                u5.h(zzbl.BITWISE_AND.name(), 2, list);
                return new i(Double.valueOf(u5.b(t4Var.b((q) list.get(0)).a().doubleValue()) & u5.b(t4Var.b((q) list.get(1)).a().doubleValue())));
            case 5:
                u5.h(zzbl.BITWISE_LEFT_SHIFT.name(), 2, list);
                return new i(Double.valueOf(u5.b(t4Var.b((q) list.get(0)).a().doubleValue()) << ((int) (u5.d(t4Var.b((q) list.get(1)).a().doubleValue()) & 31))));
            case 6:
                u5.h(zzbl.BITWISE_NOT.name(), 1, list);
                return new i(Double.valueOf(~u5.b(t4Var.b((q) list.get(0)).a().doubleValue())));
            case 7:
                u5.h(zzbl.BITWISE_OR.name(), 2, list);
                return new i(Double.valueOf(u5.b(t4Var.b((q) list.get(0)).a().doubleValue()) | u5.b(t4Var.b((q) list.get(1)).a().doubleValue())));
            case 8:
                u5.h(zzbl.BITWISE_RIGHT_SHIFT.name(), 2, list);
                return new i(Double.valueOf(u5.b(t4Var.b((q) list.get(0)).a().doubleValue()) >> ((int) (u5.d(t4Var.b((q) list.get(1)).a().doubleValue()) & 31))));
            case 9:
                u5.h(zzbl.BITWISE_UNSIGNED_RIGHT_SHIFT.name(), 2, list);
                return new i(Double.valueOf(u5.d(t4Var.b((q) list.get(0)).a().doubleValue()) >>> ((int) (u5.d(t4Var.b((q) list.get(1)).a().doubleValue()) & 31))));
            case 10:
                u5.h(zzbl.BITWISE_XOR.name(), 2, list);
                return new i(Double.valueOf(u5.b(t4Var.b((q) list.get(0)).a().doubleValue()) ^ u5.b(t4Var.b((q) list.get(1)).a().doubleValue())));
            default:
                return super.b(str);
        }
    }
}
