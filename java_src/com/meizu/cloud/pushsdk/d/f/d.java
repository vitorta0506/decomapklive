package com.meizu.cloud.pushsdk.d.f;

import java.util.Objects;
/* loaded from: classes4.dex */
public final class d {
    public static <T> T a(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    public static <T> T a(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void a(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }
}
