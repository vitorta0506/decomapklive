package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class r implements q {

    /* renamed from: a  reason: collision with root package name */
    private final String f8282a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList f8283b;

    public r(String str, List list) {
        this.f8282a = str;
        ArrayList arrayList = new ArrayList();
        this.f8283b = arrayList;
        arrayList.addAll(list);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    public final String b() {
        return this.f8282a;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    public final ArrayList e() {
        return this.f8283b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            String str = this.f8282a;
            if (str == null ? rVar.f8282a == null : str.equals(rVar.f8282a)) {
                return this.f8283b.equals(rVar.f8283b);
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return null;
    }

    public final int hashCode() {
        String str = this.f8282a;
        return ((str != null ? str.hashCode() : 0) * 31) + this.f8283b.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }
}
