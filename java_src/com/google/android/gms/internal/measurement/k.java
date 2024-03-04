package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final /* synthetic */ class k {
    public static q a(m mVar, q qVar, t4 t4Var, List list) {
        if (mVar.m(qVar.d())) {
            q x10 = mVar.x(qVar.d());
            if (x10 instanceof j) {
                return ((j) x10).b(t4Var, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", qVar.d()));
        } else if ("hasOwnProperty".equals(qVar.d())) {
            u5.h("hasOwnProperty", 1, list);
            return mVar.m(t4Var.b((q) list.get(0)).d()) ? q.Z : q.f8268a0;
        } else {
            throw new IllegalArgumentException(String.format("Object has no function %s", qVar.d()));
        }
    }

    public static Iterator b(Map map) {
        return new l(map.keySet().iterator());
    }
}
