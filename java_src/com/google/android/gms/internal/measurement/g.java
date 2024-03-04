package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class g implements q {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f8089a;

    public g(Boolean bool) {
        this.f8089a = bool == null ? false : bool.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        return Double.valueOf(true != this.f8089a ? 0.0d : 1.0d);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        return new g(Boolean.valueOf(this.f8089a));
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        return Boolean.toString(this.f8089a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && this.f8089a == ((g) obj).f8089a;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        return Boolean.valueOf(this.f8089a);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return null;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f8089a).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.f8089a);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        if ("toString".equals(str)) {
            return new u(Boolean.toString(this.f8089a));
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", Boolean.toString(this.f8089a), str));
    }
}
