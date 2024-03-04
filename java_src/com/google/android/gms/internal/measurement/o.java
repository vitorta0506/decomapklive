package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class o implements q {
    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        return Double.valueOf(0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        return q.V;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        return "null";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof o;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        return Boolean.FALSE;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return null;
    }

    public final int hashCode() {
        return 1;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        throw new IllegalStateException(String.format("null has no function %s", str));
    }
}
