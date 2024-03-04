package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class me {

    /* renamed from: a  reason: collision with root package name */
    final TreeMap f8214a = new TreeMap();

    /* renamed from: b  reason: collision with root package name */
    final TreeMap f8215b = new TreeMap();

    private static final int c(t4 t4Var, p pVar, q qVar) {
        q b10 = pVar.b(t4Var, Collections.singletonList(qVar));
        if (b10 instanceof i) {
            return u5.b(b10.a().doubleValue());
        }
        return -1;
    }

    public final void a(String str, int i9, p pVar, String str2) {
        TreeMap treeMap;
        if ("create".equals(str2)) {
            treeMap = this.f8215b;
        } else if ("edit".equals(str2)) {
            treeMap = this.f8214a;
        } else {
            throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(str2)));
        }
        if (treeMap.containsKey(Integer.valueOf(i9))) {
            i9 = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i9), pVar);
    }

    public final void b(t4 t4Var, c cVar) {
        o9 o9Var = new o9(cVar);
        for (Integer num : this.f8214a.keySet()) {
            b clone = cVar.b().clone();
            int c10 = c(t4Var, (p) this.f8214a.get(num), o9Var);
            if (c10 == 2 || c10 == -1) {
                cVar.f(clone);
            }
        }
        for (Integer num2 : this.f8215b.keySet()) {
            c(t4Var, (p) this.f8215b.get(num2), o9Var);
        }
    }
}
