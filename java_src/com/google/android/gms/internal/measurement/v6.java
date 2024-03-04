package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class v6 {
    public static q a(r5 r5Var) {
        if (r5Var == null) {
            return q.U;
        }
        int F = r5Var.F() - 1;
        if (F == 1) {
            if (r5Var.E()) {
                return new u(r5Var.z());
            }
            return q.f8269b0;
        } else if (F == 2) {
            if (r5Var.D()) {
                return new i(Double.valueOf(r5Var.w()));
            }
            return new i(null);
        } else if (F == 3) {
            if (r5Var.C()) {
                return new g(Boolean.valueOf(r5Var.B()));
            }
            return new g(null);
        } else if (F == 4) {
            List<r5> A = r5Var.A();
            ArrayList arrayList = new ArrayList();
            for (r5 r5Var2 : A) {
                arrayList.add(a(r5Var2));
            }
            return new r(r5Var.y(), arrayList);
        } else {
            throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
        }
    }

    public static q b(Object obj) {
        if (obj == null) {
            return q.V;
        }
        if (obj instanceof String) {
            return new u((String) obj);
        }
        if (obj instanceof Double) {
            return new i((Double) obj);
        }
        if (obj instanceof Long) {
            return new i(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new i(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new g((Boolean) obj);
        }
        if (obj instanceof Map) {
            n nVar = new n();
            Map map = (Map) obj;
            for (Object obj2 : map.keySet()) {
                q b10 = b(map.get(obj2));
                if (obj2 != null) {
                    if (!(obj2 instanceof String)) {
                        obj2 = obj2.toString();
                    }
                    nVar.n((String) obj2, b10);
                }
            }
            return nVar;
        } else if (obj instanceof List) {
            f fVar = new f();
            for (Object obj3 : (List) obj) {
                fVar.L(fVar.z(), b(obj3));
            }
            return fVar;
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }
}
