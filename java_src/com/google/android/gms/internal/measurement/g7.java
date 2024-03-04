package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* loaded from: classes2.dex */
public final class g7 {
    public static c7 a(c7 c7Var) {
        if ((c7Var instanceof e7) || (c7Var instanceof d7)) {
            return c7Var;
        }
        if (c7Var instanceof Serializable) {
            return new d7(c7Var);
        }
        return new e7(c7Var);
    }

    public static c7 b(Object obj) {
        return new f7(obj);
    }
}
