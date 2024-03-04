package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2.dex */
public final class l0 extends x {
    @Override // com.google.android.gms.internal.measurement.x
    public final q a(String str, t4 t4Var, List list) {
        if (str != null && !str.isEmpty() && t4Var.h(str)) {
            q d10 = t4Var.d(str);
            if (d10 instanceof j) {
                return ((j) d10).b(t4Var, list);
            }
            throw new IllegalArgumentException(String.format("Function %s is not defined", str));
        }
        throw new IllegalArgumentException(String.format("Command not found: %s", str));
    }
}
