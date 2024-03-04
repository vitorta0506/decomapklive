package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class j implements q, m {

    /* renamed from: a  reason: collision with root package name */
    protected final String f8138a;

    /* renamed from: b  reason: collision with root package name */
    protected final Map f8139b = new HashMap();

    public j(String str) {
        this.f8138a = str;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        return Double.valueOf(Double.NaN);
    }

    public abstract q b(t4 t4Var, List list);

    @Override // com.google.android.gms.internal.measurement.q
    public q c() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        return this.f8138a;
    }

    public final String e() {
        return this.f8138a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            String str = this.f8138a;
            if (str != null) {
                return str.equals(jVar.f8138a);
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return k.b(this.f8139b);
    }

    public final int hashCode() {
        String str = this.f8138a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final boolean m(String str) {
        return this.f8139b.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final void n(String str, q qVar) {
        if (qVar == null) {
            this.f8139b.remove(str);
        } else {
            this.f8139b.put(str, qVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        if ("toString".equals(str)) {
            return new u(this.f8138a);
        }
        return k.a(this, new u(str), t4Var, list);
    }

    @Override // com.google.android.gms.internal.measurement.m
    public final q x(String str) {
        return this.f8139b.containsKey(str) ? (q) this.f8139b.get(str) : q.U;
    }
}
