package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class n implements q, m {

    /* renamed from: a  reason: collision with root package name */
    final Map f8216a = new HashMap();

    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        return Double.valueOf(Double.NaN);
    }

    public final List b() {
        return new ArrayList(this.f8216a.keySet());
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        n nVar = new n();
        for (Map.Entry entry : this.f8216a.entrySet()) {
            if (entry.getValue() instanceof m) {
                nVar.f8216a.put((String) entry.getKey(), (q) entry.getValue());
            } else {
                nVar.f8216a.put((String) entry.getKey(), ((q) entry.getValue()).c());
            }
        }
        return nVar;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        return "[object Object]";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            return this.f8216a.equals(((n) obj).f8216a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return k.b(this.f8216a);
    }

    public final int hashCode() {
        return this.f8216a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final boolean m(String str) {
        return this.f8216a.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final void n(String str, q qVar) {
        if (qVar == null) {
            this.f8216a.remove(str);
        } else {
            this.f8216a.put(str, qVar);
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        if (!this.f8216a.isEmpty()) {
            for (String str : this.f8216a.keySet()) {
                sb2.append(String.format("%s: %s,", str, this.f8216a.get(str)));
            }
            sb2.deleteCharAt(sb2.lastIndexOf(","));
        }
        sb2.append("}");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.q
    public q u(String str, t4 t4Var, List list) {
        if ("toString".equals(str)) {
            return new u(toString());
        }
        return k.a(this, new u(str), t4Var, list);
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final q x(String str) {
        return this.f8216a.containsKey(str) ? (q) this.f8216a.get(str) : q.U;
    }
}
