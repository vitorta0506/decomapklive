package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class k0 extends x {
    /* JADX INFO: Access modifiers changed from: protected */
    public k0() {
        this.f8419a.add(zzbl.ADD);
        this.f8419a.add(zzbl.DIVIDE);
        this.f8419a.add(zzbl.MODULUS);
        this.f8419a.add(zzbl.MULTIPLY);
        this.f8419a.add(zzbl.NEGATE);
        this.f8419a.add(zzbl.POST_DECREMENT);
        this.f8419a.add(zzbl.POST_INCREMENT);
        this.f8419a.add(zzbl.PRE_DECREMENT);
        this.f8419a.add(zzbl.PRE_INCREMENT);
        this.f8419a.add(zzbl.SUBTRACT);
    }

    @Override // com.google.android.gms.internal.measurement.x
    public final q a(String str, t4 t4Var, List list) {
        zzbl zzblVar = zzbl.ADD;
        int ordinal = u5.e(str).ordinal();
        if (ordinal == 0) {
            u5.h(zzblVar.name(), 2, list);
            q b10 = t4Var.b((q) list.get(0));
            q b11 = t4Var.b((q) list.get(1));
            if (!(b10 instanceof m) && !(b10 instanceof u) && !(b11 instanceof m) && !(b11 instanceof u)) {
                return new i(Double.valueOf(b10.a().doubleValue() + b11.a().doubleValue()));
            }
            return new u(String.valueOf(b10.d()).concat(String.valueOf(b11.d())));
        } else if (ordinal == 21) {
            u5.h(zzbl.DIVIDE.name(), 2, list);
            return new i(Double.valueOf(t4Var.b((q) list.get(0)).a().doubleValue() / t4Var.b((q) list.get(1)).a().doubleValue()));
        } else if (ordinal == 59) {
            u5.h(zzbl.SUBTRACT.name(), 2, list);
            return new i(Double.valueOf(t4Var.b((q) list.get(0)).a().doubleValue() + new i(Double.valueOf(-t4Var.b((q) list.get(1)).a().doubleValue())).a().doubleValue()));
        } else if (ordinal == 52 || ordinal == 53) {
            u5.h(str, 2, list);
            q b12 = t4Var.b((q) list.get(0));
            t4Var.b((q) list.get(1));
            return b12;
        } else if (ordinal != 55 && ordinal != 56) {
            switch (ordinal) {
                case 44:
                    u5.h(zzbl.MODULUS.name(), 2, list);
                    return new i(Double.valueOf(t4Var.b((q) list.get(0)).a().doubleValue() % t4Var.b((q) list.get(1)).a().doubleValue()));
                case 45:
                    u5.h(zzbl.MULTIPLY.name(), 2, list);
                    return new i(Double.valueOf(t4Var.b((q) list.get(0)).a().doubleValue() * t4Var.b((q) list.get(1)).a().doubleValue()));
                case 46:
                    u5.h(zzbl.NEGATE.name(), 1, list);
                    return new i(Double.valueOf(-t4Var.b((q) list.get(0)).a().doubleValue()));
                default:
                    return super.b(str);
            }
        } else {
            u5.h(str, 1, list);
            return t4Var.b((q) list.get(0));
        }
    }
}
