package com.squareup.wire;
/* loaded from: classes4.dex */
public final class Wire {
    private Wire() {
    }

    public static <T> T get(T t10, T t11) {
        return t10 != null ? t10 : t11;
    }
}
