package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class u5 {
    public static double a(double d10) {
        int i9;
        if (Double.isNaN(d10)) {
            return 0.0d;
        }
        if (Double.isInfinite(d10) || d10 == 0.0d || i9 == 0) {
            return d10;
        }
        return (i9 > 0 ? 1 : -1) * Math.floor(Math.abs(d10));
    }

    public static int b(double d10) {
        int i9;
        if (Double.isNaN(d10) || Double.isInfinite(d10) || d10 == 0.0d) {
            return 0;
        }
        return (int) (((i9 > 0 ? 1 : -1) * Math.floor(Math.abs(d10))) % 4.294967296E9d);
    }

    public static int c(t4 t4Var) {
        int b10 = b(t4Var.d("runtime.counter").a().doubleValue() + 1.0d);
        if (b10 <= 1000000) {
            t4Var.g("runtime.counter", new i(Double.valueOf(b10)));
            return b10;
        }
        throw new IllegalStateException("Instructions allowed exceeded");
    }

    public static long d(double d10) {
        return b(d10) & 4294967295L;
    }

    public static zzbl e(String str) {
        zzbl zzblVar = null;
        if (str != null && !str.isEmpty()) {
            zzblVar = zzbl.zza(Integer.parseInt(str));
        }
        if (zzblVar != null) {
            return zzblVar;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static Object f(q qVar) {
        if (q.V.equals(qVar)) {
            return null;
        }
        if (q.U.equals(qVar)) {
            return "";
        }
        if (qVar instanceof n) {
            return g((n) qVar);
        }
        if (qVar instanceof f) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((f) qVar).iterator();
            while (it.hasNext()) {
                Object f10 = f((q) it.next());
                if (f10 != null) {
                    arrayList.add(f10);
                }
            }
            return arrayList;
        } else if (!qVar.a().isNaN()) {
            return qVar.a();
        } else {
            return qVar.d();
        }
    }

    public static Map g(n nVar) {
        HashMap hashMap = new HashMap();
        for (String str : nVar.b()) {
            Object f10 = f(nVar.x(str));
            if (f10 != null) {
                hashMap.put(str, f10);
            }
        }
        return hashMap;
    }

    public static void h(String str, int i9, List list) {
        if (list.size() != i9) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i9), Integer.valueOf(list.size())));
        }
    }

    public static void i(String str, int i9, List list) {
        if (list.size() < i9) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i9), Integer.valueOf(list.size())));
        }
    }

    public static void j(String str, int i9, List list) {
        if (list.size() > i9) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i9), Integer.valueOf(list.size())));
        }
    }

    public static boolean k(q qVar) {
        if (qVar == null) {
            return false;
        }
        Double a10 = qVar.a();
        return !a10.isNaN() && a10.doubleValue() >= 0.0d && a10.equals(Double.valueOf(Math.floor(a10.doubleValue())));
    }

    public static boolean l(q qVar, q qVar2) {
        if (qVar.getClass().equals(qVar2.getClass())) {
            if ((qVar instanceof v) || (qVar instanceof o)) {
                return true;
            }
            if (qVar instanceof i) {
                if (Double.isNaN(qVar.a().doubleValue()) || Double.isNaN(qVar2.a().doubleValue())) {
                    return false;
                }
                return qVar.a().equals(qVar2.a());
            } else if (qVar instanceof u) {
                return qVar.d().equals(qVar2.d());
            } else {
                if (qVar instanceof g) {
                    return qVar.f().equals(qVar2.f());
                }
                return qVar == qVar2;
            }
        }
        return false;
    }
}
