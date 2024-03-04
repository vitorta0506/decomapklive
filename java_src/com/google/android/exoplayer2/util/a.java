package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class a {
    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int c(int i9, int i10, int i11) {
        if (i9 < i10 || i9 >= i11) {
            throw new IndexOutOfBoundsException();
        }
        return i9;
    }

    public static String d(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        return str;
    }

    public static <T> T e(@Nullable T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    public static void f(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void g(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static <T> T h(@Nullable T t10) {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException();
    }

    public static <T> T i(@Nullable T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
