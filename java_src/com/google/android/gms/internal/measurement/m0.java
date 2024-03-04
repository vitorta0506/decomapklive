package com.google.android.gms.internal.measurement;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class m0 extends x {
    /* JADX INFO: Access modifiers changed from: protected */
    public m0() {
        this.f8419a.add(zzbl.ASSIGN);
        this.f8419a.add(zzbl.CONST);
        this.f8419a.add(zzbl.CREATE_ARRAY);
        this.f8419a.add(zzbl.CREATE_OBJECT);
        this.f8419a.add(zzbl.EXPRESSION_LIST);
        this.f8419a.add(zzbl.GET);
        this.f8419a.add(zzbl.GET_INDEX);
        this.f8419a.add(zzbl.GET_PROPERTY);
        this.f8419a.add(zzbl.NULL);
        this.f8419a.add(zzbl.SET_PROPERTY);
        this.f8419a.add(zzbl.TYPEOF);
        this.f8419a.add(zzbl.UNDEFINED);
        this.f8419a.add(zzbl.VAR);
    }

    @Override // com.google.android.gms.internal.measurement.x
    public final q a(String str, t4 t4Var, List list) {
        String str2;
        zzbl zzblVar = zzbl.ADD;
        int ordinal = u5.e(str).ordinal();
        int i9 = 0;
        if (ordinal == 3) {
            u5.h(zzbl.ASSIGN.name(), 2, list);
            q b10 = t4Var.b((q) list.get(0));
            if (b10 instanceof u) {
                if (t4Var.h(b10.d())) {
                    q b11 = t4Var.b((q) list.get(1));
                    t4Var.g(b10.d(), b11);
                    return b11;
                }
                throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", b10.d()));
            }
            throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", b10.getClass().getCanonicalName()));
        } else if (ordinal == 14) {
            u5.i(zzbl.CONST.name(), 2, list);
            if (list.size() % 2 == 0) {
                for (int i10 = 0; i10 < list.size() - 1; i10 += 2) {
                    q b12 = t4Var.b((q) list.get(i10));
                    if (b12 instanceof u) {
                        t4Var.f(b12.d(), t4Var.b((q) list.get(i10 + 1)));
                    } else {
                        throw new IllegalArgumentException(String.format("Expected string for const name. got %s", b12.getClass().getCanonicalName()));
                    }
                }
                return q.U;
            }
            throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
        } else if (ordinal == 24) {
            u5.i(zzbl.EXPRESSION_LIST.name(), 1, list);
            q qVar = q.U;
            while (i9 < list.size()) {
                qVar = t4Var.b((q) list.get(i9));
                if (qVar instanceof h) {
                    throw new IllegalStateException("ControlValue cannot be in an expression list");
                }
                i9++;
            }
            return qVar;
        } else if (ordinal == 33) {
            u5.h(zzbl.GET.name(), 1, list);
            q b13 = t4Var.b((q) list.get(0));
            if (b13 instanceof u) {
                return t4Var.d(b13.d());
            }
            throw new IllegalArgumentException(String.format("Expected string for get var. got %s", b13.getClass().getCanonicalName()));
        } else if (ordinal == 49) {
            u5.h(zzbl.NULL.name(), 0, list);
            return q.V;
        } else if (ordinal == 58) {
            u5.h(zzbl.SET_PROPERTY.name(), 3, list);
            q b14 = t4Var.b((q) list.get(0));
            q b15 = t4Var.b((q) list.get(1));
            q b16 = t4Var.b((q) list.get(2));
            if (b14 != q.U && b14 != q.V) {
                if ((b14 instanceof f) && (b15 instanceof i)) {
                    ((f) b14).L(b15.a().intValue(), b16);
                } else if (b14 instanceof m) {
                    ((m) b14).n(b15.d(), b16);
                }
                return b16;
            }
            throw new IllegalStateException(String.format("Can't set property %s of %s", b15.d(), b14.d()));
        } else if (ordinal == 17) {
            if (list.isEmpty()) {
                return new f();
            }
            f fVar = new f();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                q b17 = t4Var.b((q) it.next());
                if (!(b17 instanceof h)) {
                    fVar.L(i9, b17);
                    i9++;
                } else {
                    throw new IllegalStateException("Failed to evaluate array element");
                }
            }
            return fVar;
        } else if (ordinal == 18) {
            if (list.isEmpty()) {
                return new n();
            }
            if (list.size() % 2 == 0) {
                n nVar = new n();
                while (i9 < list.size() - 1) {
                    q b18 = t4Var.b((q) list.get(i9));
                    q b19 = t4Var.b((q) list.get(i9 + 1));
                    if (!(b18 instanceof h) && !(b19 instanceof h)) {
                        nVar.n(b18.d(), b19);
                        i9 += 2;
                    } else {
                        throw new IllegalStateException("Failed to evaluate map entry");
                    }
                }
                return nVar;
            }
            throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
        } else if (ordinal != 35 && ordinal != 36) {
            switch (ordinal) {
                case 62:
                    u5.h(zzbl.TYPEOF.name(), 1, list);
                    q b20 = t4Var.b((q) list.get(0));
                    if (b20 instanceof v) {
                        str2 = "undefined";
                    } else if (b20 instanceof g) {
                        str2 = TypedValues.Custom.S_BOOLEAN;
                    } else if (b20 instanceof i) {
                        str2 = "number";
                    } else if (b20 instanceof u) {
                        str2 = TypedValues.Custom.S_STRING;
                    } else if (b20 instanceof p) {
                        str2 = "function";
                    } else if ((b20 instanceof r) || (b20 instanceof h)) {
                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", b20));
                    } else {
                        str2 = "object";
                    }
                    return new u(str2);
                case 63:
                    u5.h(zzbl.UNDEFINED.name(), 0, list);
                    return q.U;
                case 64:
                    u5.i(zzbl.VAR.name(), 1, list);
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        q b21 = t4Var.b((q) it2.next());
                        if (b21 instanceof u) {
                            t4Var.e(b21.d(), q.U);
                        } else {
                            throw new IllegalArgumentException(String.format("Expected string for var name. got %s", b21.getClass().getCanonicalName()));
                        }
                    }
                    return q.U;
                default:
                    return super.b(str);
            }
        } else {
            u5.h(zzbl.GET_PROPERTY.name(), 2, list);
            q b22 = t4Var.b((q) list.get(0));
            q b23 = t4Var.b((q) list.get(1));
            if ((b22 instanceof f) && u5.k(b23)) {
                return ((f) b22).B(b23.a().intValue());
            }
            if (b22 instanceof m) {
                return ((m) b22).x(b23.d());
            }
            if (b22 instanceof u) {
                if ("length".equals(b23.d())) {
                    return new i(Double.valueOf(b22.d().length()));
                }
                if (u5.k(b23) && b23.a().doubleValue() < b22.d().length()) {
                    return new u(String.valueOf(b22.d().charAt(b23.a().intValue())));
                }
            }
            return q.U;
        }
    }
}
