package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class v implements q {
    @Override // com.google.android.gms.internal.measurement.q
    public final Double a() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q c() {
        return q.U;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final String d() {
        return "undefined";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof v;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Boolean f() {
        return Boolean.FALSE;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final Iterator g() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.q
    public final q u(String str, t4 t4Var, List list) {
        throw new IllegalStateException(String.format("Undefined has no function %s", str));
    }
}
