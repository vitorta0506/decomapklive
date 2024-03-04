package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class z extends x {
    public z() {
        this.f8419a.add(zzbl.EQUALS);
        this.f8419a.add(zzbl.GREATER_THAN);
        this.f8419a.add(zzbl.GREATER_THAN_EQUALS);
        this.f8419a.add(zzbl.IDENTITY_EQUALS);
        this.f8419a.add(zzbl.IDENTITY_NOT_EQUALS);
        this.f8419a.add(zzbl.LESS_THAN);
        this.f8419a.add(zzbl.LESS_THAN_EQUALS);
        this.f8419a.add(zzbl.NOT_EQUALS);
    }

    private static boolean c(q qVar, q qVar2) {
        if (qVar.getClass().equals(qVar2.getClass())) {
            if ((qVar instanceof v) || (qVar instanceof o)) {
                return true;
            }
            if (qVar instanceof i) {
                return (Double.isNaN(qVar.a().doubleValue()) || Double.isNaN(qVar2.a().doubleValue()) || qVar.a().doubleValue() != qVar2.a().doubleValue()) ? false : true;
            } else if (qVar instanceof u) {
                return qVar.d().equals(qVar2.d());
            } else {
                if (qVar instanceof g) {
                    return qVar.f().equals(qVar2.f());
                }
                return qVar == qVar2;
            }
        } else if (((qVar instanceof v) || (qVar instanceof o)) && ((qVar2 instanceof v) || (qVar2 instanceof o))) {
            return true;
        } else {
            boolean z10 = qVar instanceof i;
            if (z10 && (qVar2 instanceof u)) {
                return c(qVar, new i(qVar2.a()));
            }
            boolean z11 = qVar instanceof u;
            if (z11 && (qVar2 instanceof i)) {
                return c(new i(qVar.a()), qVar2);
            }
            if (qVar instanceof g) {
                return c(new i(qVar.a()), qVar2);
            }
            if (qVar2 instanceof g) {
                return c(qVar, new i(qVar2.a()));
            }
            if ((!z11 && !z10) || !(qVar2 instanceof m)) {
                if ((qVar instanceof m) && ((qVar2 instanceof u) || (qVar2 instanceof i))) {
                    return c(new u(qVar.d()), qVar2);
                }
                return false;
            }
            return c(qVar, new u(qVar2.d()));
        }
    }

    private static boolean d(q qVar, q qVar2) {
        int i9;
        if (qVar instanceof m) {
            qVar = new u(qVar.d());
        }
        if (qVar2 instanceof m) {
            qVar2 = new u(qVar2.d());
        }
        if ((qVar instanceof u) && (qVar2 instanceof u)) {
            return qVar.d().compareTo(qVar2.d()) < 0;
        }
        double doubleValue = qVar.a().doubleValue();
        double doubleValue2 = qVar2.a().doubleValue();
        return (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2) || (doubleValue == 0.0d && doubleValue2 == 0.0d) || ((i9 == 0 && doubleValue2 == 0.0d) || Double.compare(doubleValue, doubleValue2) >= 0)) ? false : true;
    }

    private static boolean e(q qVar, q qVar2) {
        if (qVar instanceof m) {
            qVar = new u(qVar.d());
        }
        if (qVar2 instanceof m) {
            qVar2 = new u(qVar2.d());
        }
        return (((qVar instanceof u) && (qVar2 instanceof u)) || !(Double.isNaN(qVar.a().doubleValue()) || Double.isNaN(qVar2.a().doubleValue()))) && !d(qVar2, qVar);
    }

    @Override // com.google.android.gms.internal.measurement.x
    public final q a(String str, t4 t4Var, List list) {
        boolean c10;
        boolean c11;
        u5.h(u5.e(str).name(), 2, list);
        q b10 = t4Var.b((q) list.get(0));
        q b11 = t4Var.b((q) list.get(1));
        int ordinal = u5.e(str).ordinal();
        if (ordinal != 23) {
            if (ordinal == 48) {
                c11 = c(b10, b11);
            } else if (ordinal == 42) {
                c10 = d(b10, b11);
            } else if (ordinal != 43) {
                switch (ordinal) {
                    case 37:
                        c10 = d(b11, b10);
                        break;
                    case 38:
                        c10 = e(b11, b10);
                        break;
                    case 39:
                        c10 = u5.l(b10, b11);
                        break;
                    case 40:
                        c11 = u5.l(b10, b11);
                        break;
                    default:
                        return super.b(str);
                }
            } else {
                c10 = e(b10, b11);
            }
            c10 = !c11;
        } else {
            c10 = c(b10, b11);
        }
        return c10 ? q.Z : q.f8268a0;
    }
}
