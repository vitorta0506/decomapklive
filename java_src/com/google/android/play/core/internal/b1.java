package com.google.android.play.core.internal;
/* loaded from: classes2.dex */
public final class b1 {
    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static void b(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
