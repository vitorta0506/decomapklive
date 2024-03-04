package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class d0 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static q a(String str, f fVar, t4 t4Var, List list) {
        String str2;
        char c10;
        String str3;
        double min;
        j jVar;
        switch (str.hashCode()) {
            case -1776922004:
                str2 = "toString";
                if (str.equals(str2)) {
                    c10 = 18;
                    break;
                }
                c10 = 65535;
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str2 = "toString";
                    c10 = 0;
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    str2 = "toString";
                    c10 = 2;
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -934873754:
                if (str.equals("reduce")) {
                    c10 = '\n';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -895859076:
                if (str.equals("splice")) {
                    c10 = 17;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    c10 = 3;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c10 = 6;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -277637751:
                if (str.equals("unshift")) {
                    c10 = 19;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 107868:
                if (str.equals("map")) {
                    c10 = 7;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 111185:
                if (str.equals("pop")) {
                    c10 = '\b';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3267882:
                if (str.equals("join")) {
                    c10 = 5;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3452698:
                if (str.equals("push")) {
                    c10 = '\t';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3536116:
                if (str.equals("some")) {
                    c10 = 15;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3536286:
                if (str.equals("sort")) {
                    c10 = 16;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 96891675:
                if (str.equals("every")) {
                    str2 = "toString";
                    c10 = 1;
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 109407362:
                if (str.equals("shift")) {
                    c10 = '\r';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c10 = 14;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    c10 = 11;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    c10 = '\f';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    c10 = 4;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            default:
                str2 = "toString";
                c10 = 65535;
                break;
        }
        double d10 = 0.0d;
        switch (c10) {
            case 0:
                q c11 = fVar.c();
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        q b10 = t4Var.b((q) it.next());
                        if (!(b10 instanceof h)) {
                            f fVar2 = (f) c11;
                            int z10 = fVar2.z();
                            if (b10 instanceof f) {
                                f fVar3 = (f) b10;
                                Iterator G = fVar3.G();
                                while (G.hasNext()) {
                                    Integer num = (Integer) G.next();
                                    fVar2.L(num.intValue() + z10, fVar3.B(num.intValue()));
                                }
                            } else {
                                fVar2.L(z10, b10);
                            }
                        } else {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                    }
                }
                return c11;
            case 1:
                u5.h("every", 1, list);
                q b11 = t4Var.b((q) list.get(0));
                if (b11 instanceof p) {
                    if (fVar.z() != 0 && b(fVar, t4Var, (p) b11, Boolean.FALSE, Boolean.TRUE).z() != fVar.z()) {
                        return q.f8268a0;
                    }
                    return q.Z;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 2:
                u5.h("filter", 1, list);
                q b12 = t4Var.b((q) list.get(0));
                if (b12 instanceof p) {
                    if (fVar.y() == 0) {
                        return new f();
                    }
                    q c12 = fVar.c();
                    f b13 = b(fVar, t4Var, (p) b12, null, Boolean.TRUE);
                    f fVar4 = new f();
                    Iterator G2 = b13.G();
                    while (G2.hasNext()) {
                        fVar4.L(fVar4.z(), ((f) c12).B(((Integer) G2.next()).intValue()));
                    }
                    return fVar4;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 3:
                u5.h("forEach", 1, list);
                q b14 = t4Var.b((q) list.get(0));
                if (b14 instanceof p) {
                    if (fVar.y() == 0) {
                        return q.U;
                    }
                    b(fVar, t4Var, (p) b14, null, null);
                    return q.U;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 4:
                u5.j("indexOf", 2, list);
                q qVar = q.U;
                if (!list.isEmpty()) {
                    qVar = t4Var.b((q) list.get(0));
                }
                if (list.size() > 1) {
                    double a10 = u5.a(t4Var.b((q) list.get(1)).a().doubleValue());
                    if (a10 >= fVar.z()) {
                        return new i(Double.valueOf(-1.0d));
                    }
                    d10 = a10 < 0.0d ? fVar.z() + a10 : a10;
                }
                Iterator G3 = fVar.G();
                while (G3.hasNext()) {
                    int intValue = ((Integer) G3.next()).intValue();
                    double d11 = intValue;
                    if (d11 >= d10 && u5.l(fVar.B(intValue), qVar)) {
                        return new i(Double.valueOf(d11));
                    }
                }
                return new i(Double.valueOf(-1.0d));
            case 5:
                u5.j("join", 1, list);
                if (fVar.z() == 0) {
                    return q.f8269b0;
                }
                if (list.isEmpty()) {
                    str3 = ",";
                } else {
                    q b15 = t4Var.b((q) list.get(0));
                    str3 = ((b15 instanceof o) || (b15 instanceof v)) ? "" : b15.d();
                }
                return new u(fVar.F(str3));
            case 6:
                u5.j("lastIndexOf", 2, list);
                q qVar2 = q.U;
                if (!list.isEmpty()) {
                    qVar2 = t4Var.b((q) list.get(0));
                }
                double z11 = fVar.z() - 1;
                if (list.size() > 1) {
                    q b16 = t4Var.b((q) list.get(1));
                    z11 = Double.isNaN(b16.a().doubleValue()) ? fVar.z() - 1 : u5.a(b16.a().doubleValue());
                    if (z11 < 0.0d) {
                        z11 += fVar.z();
                    }
                }
                if (z11 < 0.0d) {
                    return new i(Double.valueOf(-1.0d));
                }
                for (int min2 = (int) Math.min(fVar.z(), z11); min2 >= 0; min2--) {
                    if (fVar.M(min2) && u5.l(fVar.B(min2), qVar2)) {
                        return new i(Double.valueOf(min2));
                    }
                }
                return new i(Double.valueOf(-1.0d));
            case 7:
                u5.h("map", 1, list);
                q b17 = t4Var.b((q) list.get(0));
                if (b17 instanceof p) {
                    if (fVar.z() == 0) {
                        return new f();
                    }
                    return b(fVar, t4Var, (p) b17, null, null);
                }
                throw new IllegalArgumentException("Callback should be a method");
            case '\b':
                u5.h("pop", 0, list);
                int z12 = fVar.z();
                if (z12 == 0) {
                    return q.U;
                }
                int i9 = z12 - 1;
                q B = fVar.B(i9);
                fVar.K(i9);
                return B;
            case '\t':
                if (!list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        fVar.L(fVar.z(), t4Var.b((q) it2.next()));
                    }
                }
                return new i(Double.valueOf(fVar.z()));
            case '\n':
                return c(fVar, t4Var, list, true);
            case 11:
                return c(fVar, t4Var, list, false);
            case '\f':
                u5.h("reverse", 0, list);
                int z13 = fVar.z();
                if (z13 != 0) {
                    for (int i10 = 0; i10 < z13 / 2; i10++) {
                        if (fVar.M(i10)) {
                            q B2 = fVar.B(i10);
                            fVar.L(i10, null);
                            int i11 = (z13 - 1) - i10;
                            if (fVar.M(i11)) {
                                fVar.L(i10, fVar.B(i11));
                            }
                            fVar.L(i11, B2);
                        }
                    }
                }
                return fVar;
            case '\r':
                u5.h("shift", 0, list);
                if (fVar.z() == 0) {
                    return q.U;
                }
                q B3 = fVar.B(0);
                fVar.K(0);
                return B3;
            case 14:
                u5.j("slice", 2, list);
                if (list.isEmpty()) {
                    return fVar.c();
                }
                double z14 = fVar.z();
                double a11 = u5.a(t4Var.b((q) list.get(0)).a().doubleValue());
                if (a11 < 0.0d) {
                    min = Math.max(a11 + z14, 0.0d);
                } else {
                    min = Math.min(a11, z14);
                }
                if (list.size() == 2) {
                    double a12 = u5.a(t4Var.b((q) list.get(1)).a().doubleValue());
                    if (a12 < 0.0d) {
                        z14 = Math.max(z14 + a12, 0.0d);
                    } else {
                        z14 = Math.min(z14, a12);
                    }
                }
                f fVar5 = new f();
                for (int i12 = (int) min; i12 < z14; i12++) {
                    fVar5.L(fVar5.z(), fVar.B(i12));
                }
                return fVar5;
            case 15:
                u5.h("some", 1, list);
                q b18 = t4Var.b((q) list.get(0));
                if (b18 instanceof j) {
                    if (fVar.z() == 0) {
                        return q.f8268a0;
                    }
                    j jVar2 = (j) b18;
                    Iterator G4 = fVar.G();
                    while (G4.hasNext()) {
                        int intValue2 = ((Integer) G4.next()).intValue();
                        if (fVar.M(intValue2) && jVar2.b(t4Var, Arrays.asList(fVar.B(intValue2), new i(Double.valueOf(intValue2)), fVar)).f().booleanValue()) {
                            return q.Z;
                        }
                    }
                    return q.f8268a0;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 16:
                u5.j("sort", 1, list);
                if (fVar.z() >= 2) {
                    List<q> H = fVar.H();
                    if (list.isEmpty()) {
                        jVar = null;
                    } else {
                        q b19 = t4Var.b((q) list.get(0));
                        if (b19 instanceof j) {
                            jVar = (j) b19;
                        } else {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                    }
                    Collections.sort(H, new c0(jVar, t4Var));
                    fVar.I();
                    int i13 = 0;
                    for (q qVar3 : H) {
                        fVar.L(i13, qVar3);
                        i13++;
                    }
                }
                return fVar;
            case 17:
                if (list.isEmpty()) {
                    return new f();
                }
                int a13 = (int) u5.a(t4Var.b((q) list.get(0)).a().doubleValue());
                if (a13 < 0) {
                    a13 = Math.max(0, a13 + fVar.z());
                } else if (a13 > fVar.z()) {
                    a13 = fVar.z();
                }
                int z15 = fVar.z();
                f fVar6 = new f();
                if (list.size() > 1) {
                    int max = Math.max(0, (int) u5.a(t4Var.b((q) list.get(1)).a().doubleValue()));
                    if (max > 0) {
                        for (int i14 = a13; i14 < Math.min(z15, a13 + max); i14++) {
                            fVar6.L(fVar6.z(), fVar.B(a13));
                            fVar.K(a13);
                        }
                    }
                    if (list.size() > 2) {
                        for (int i15 = 2; i15 < list.size(); i15++) {
                            q b20 = t4Var.b((q) list.get(i15));
                            if (!(b20 instanceof h)) {
                                fVar.J((a13 + i15) - 2, b20);
                            } else {
                                throw new IllegalArgumentException("Failed to parse elements to add");
                            }
                        }
                    }
                } else {
                    while (a13 < z15) {
                        fVar6.L(fVar6.z(), fVar.B(a13));
                        fVar.L(a13, null);
                        a13++;
                    }
                }
                return fVar6;
            case 18:
                u5.h(str2, 0, list);
                return new u(fVar.F(","));
            case 19:
                if (!list.isEmpty()) {
                    f fVar7 = new f();
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        q b21 = t4Var.b((q) it3.next());
                        if (!(b21 instanceof h)) {
                            fVar7.L(fVar7.z(), b21);
                        } else {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                    }
                    int z16 = fVar7.z();
                    Iterator G5 = fVar.G();
                    while (G5.hasNext()) {
                        Integer num2 = (Integer) G5.next();
                        fVar7.L(num2.intValue() + z16, fVar.B(num2.intValue()));
                    }
                    fVar.I();
                    Iterator G6 = fVar7.G();
                    while (G6.hasNext()) {
                        Integer num3 = (Integer) G6.next();
                        fVar.L(num3.intValue(), fVar7.B(num3.intValue()));
                    }
                }
                return new i(Double.valueOf(fVar.z()));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    private static f b(f fVar, t4 t4Var, j jVar, Boolean bool, Boolean bool2) {
        f fVar2 = new f();
        Iterator G = fVar.G();
        while (G.hasNext()) {
            int intValue = ((Integer) G.next()).intValue();
            if (fVar.M(intValue)) {
                q b10 = jVar.b(t4Var, Arrays.asList(fVar.B(intValue), new i(Double.valueOf(intValue)), fVar));
                if (b10.f().equals(bool)) {
                    return fVar2;
                }
                if (bool2 == null || b10.f().equals(bool2)) {
                    fVar2.L(intValue, b10);
                }
            }
        }
        return fVar2;
    }

    private static q c(f fVar, t4 t4Var, List list, boolean z10) {
        q qVar;
        u5.i("reduce", 1, list);
        u5.j("reduce", 2, list);
        q b10 = t4Var.b((q) list.get(0));
        if (b10 instanceof j) {
            if (list.size() == 2) {
                qVar = t4Var.b((q) list.get(1));
                if (qVar instanceof h) {
                    throw new IllegalArgumentException("Failed to parse initial value");
                }
            } else if (fVar.z() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            } else {
                qVar = null;
            }
            j jVar = (j) b10;
            int z11 = fVar.z();
            int i9 = z10 ? 0 : z11 - 1;
            int i10 = z10 ? z11 - 1 : 0;
            int i11 = true == z10 ? 1 : -1;
            if (qVar == null) {
                qVar = fVar.B(i9);
                i9 += i11;
            }
            while ((i10 - i9) * i11 >= 0) {
                if (fVar.M(i9)) {
                    qVar = jVar.b(t4Var, Arrays.asList(qVar, fVar.B(i9), new i(Double.valueOf(i9)), fVar));
                    if (qVar instanceof h) {
                        throw new IllegalStateException("Reduce operation failed");
                    }
                    i9 += i11;
                } else {
                    i9 += i11;
                }
            }
            return qVar;
        }
        throw new IllegalArgumentException("Callback should be a method");
    }
}
