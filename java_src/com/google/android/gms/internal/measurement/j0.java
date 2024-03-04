package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class j0 extends x {
    /* JADX INFO: Access modifiers changed from: protected */
    public j0() {
        this.f8419a.add(zzbl.FOR_IN);
        this.f8419a.add(zzbl.FOR_IN_CONST);
        this.f8419a.add(zzbl.FOR_IN_LET);
        this.f8419a.add(zzbl.FOR_LET);
        this.f8419a.add(zzbl.FOR_OF);
        this.f8419a.add(zzbl.FOR_OF_CONST);
        this.f8419a.add(zzbl.FOR_OF_LET);
        this.f8419a.add(zzbl.WHILE);
    }

    private static q c(h0 h0Var, Iterator it, q qVar) {
        if (it != null) {
            while (it.hasNext()) {
                q c10 = h0Var.a((q) it.next()).c((f) qVar);
                if (c10 instanceof h) {
                    h hVar = (h) c10;
                    if ("break".equals(hVar.e())) {
                        return q.U;
                    }
                    if ("return".equals(hVar.e())) {
                        return hVar;
                    }
                }
            }
        }
        return q.U;
    }

    private static q d(h0 h0Var, q qVar, q qVar2) {
        return c(h0Var, qVar.g(), qVar2);
    }

    private static q e(h0 h0Var, q qVar, q qVar2) {
        if (qVar instanceof Iterable) {
            return c(h0Var, ((Iterable) qVar).iterator(), qVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    @Override // com.google.android.gms.internal.measurement.x
    public final q a(String str, t4 t4Var, List list) {
        zzbl zzblVar = zzbl.ADD;
        int ordinal = u5.e(str).ordinal();
        if (ordinal != 65) {
            switch (ordinal) {
                case 26:
                    u5.h(zzbl.FOR_IN.name(), 3, list);
                    if (list.get(0) instanceof u) {
                        String d10 = ((q) list.get(0)).d();
                        return d(new i0(t4Var, d10), t4Var.b((q) list.get(1)), t4Var.b((q) list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_IN must be a string");
                case 27:
                    u5.h(zzbl.FOR_IN_CONST.name(), 3, list);
                    if (list.get(0) instanceof u) {
                        String d11 = ((q) list.get(0)).d();
                        return d(new f0(t4Var, d11), t4Var.b((q) list.get(1)), t4Var.b((q) list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_IN_CONST must be a string");
                case 28:
                    u5.h(zzbl.FOR_IN_LET.name(), 3, list);
                    if (list.get(0) instanceof u) {
                        String d12 = ((q) list.get(0)).d();
                        return d(new g0(t4Var, d12), t4Var.b((q) list.get(1)), t4Var.b((q) list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_IN_LET must be a string");
                case 29:
                    u5.h(zzbl.FOR_LET.name(), 4, list);
                    q b10 = t4Var.b((q) list.get(0));
                    if (b10 instanceof f) {
                        f fVar = (f) b10;
                        q qVar = (q) list.get(1);
                        q qVar2 = (q) list.get(2);
                        q b11 = t4Var.b((q) list.get(3));
                        t4 a10 = t4Var.a();
                        for (int i9 = 0; i9 < fVar.z(); i9++) {
                            String d13 = fVar.B(i9).d();
                            a10.g(d13, t4Var.d(d13));
                        }
                        while (t4Var.b(qVar).f().booleanValue()) {
                            q c10 = t4Var.c((f) b11);
                            if (c10 instanceof h) {
                                h hVar = (h) c10;
                                if ("break".equals(hVar.e())) {
                                    return q.U;
                                }
                                if ("return".equals(hVar.e())) {
                                    return hVar;
                                }
                            }
                            t4 a11 = t4Var.a();
                            for (int i10 = 0; i10 < fVar.z(); i10++) {
                                String d14 = fVar.B(i10).d();
                                a11.g(d14, a10.d(d14));
                            }
                            a11.b(qVar2);
                            a10 = a11;
                        }
                        return q.U;
                    }
                    throw new IllegalArgumentException("Initializer variables in FOR_LET must be an ArrayList");
                case 30:
                    u5.h(zzbl.FOR_OF.name(), 3, list);
                    if (list.get(0) instanceof u) {
                        String d15 = ((q) list.get(0)).d();
                        return e(new i0(t4Var, d15), t4Var.b((q) list.get(1)), t4Var.b((q) list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_OF must be a string");
                case 31:
                    u5.h(zzbl.FOR_OF_CONST.name(), 3, list);
                    if (list.get(0) instanceof u) {
                        String d16 = ((q) list.get(0)).d();
                        return e(new f0(t4Var, d16), t4Var.b((q) list.get(1)), t4Var.b((q) list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_OF_CONST must be a string");
                case 32:
                    u5.h(zzbl.FOR_OF_LET.name(), 3, list);
                    if (list.get(0) instanceof u) {
                        String d17 = ((q) list.get(0)).d();
                        return e(new g0(t4Var, d17), t4Var.b((q) list.get(1)), t4Var.b((q) list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_OF_LET must be a string");
                default:
                    return super.b(str);
            }
        }
        u5.h(zzbl.WHILE.name(), 4, list);
        q qVar3 = (q) list.get(0);
        q qVar4 = (q) list.get(1);
        q b12 = t4Var.b((q) list.get(3));
        if (t4Var.b((q) list.get(2)).f().booleanValue()) {
            q c11 = t4Var.c((f) b12);
            if (c11 instanceof h) {
                h hVar2 = (h) c11;
                if ("break".equals(hVar2.e())) {
                    return q.U;
                }
                if ("return".equals(hVar2.e())) {
                    return hVar2;
                }
            }
        }
        while (t4Var.b(qVar3).f().booleanValue()) {
            q c12 = t4Var.c((f) b12);
            if (c12 instanceof h) {
                h hVar3 = (h) c12;
                if ("break".equals(hVar3.e())) {
                    return q.U;
                }
                if ("return".equals(hVar3.e())) {
                    return hVar3;
                }
            }
            t4Var.b(qVar4);
        }
        return q.U;
    }
}
