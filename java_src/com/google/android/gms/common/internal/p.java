package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class p {
    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z10, @NonNull Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void c(boolean z10, @NonNull String str, @NonNull Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void d(@NonNull Handler handler) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            String name = myLooper != null ? myLooper.getThread().getName() : "null current looper";
            String name2 = handler.getLooper().getThread().getName();
            throw new IllegalStateException("Must be called on " + name2 + " thread, but got " + name + ".");
        }
    }

    public static void e(@NonNull String str) {
        if (!e4.s.a()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    public static String f(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    @NonNull
    public static String g(@Nullable String str, @NonNull Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    public static void h() {
        i("Must not be called on the main application thread");
    }

    public static void i(@NonNull String str) {
        if (e4.s.a()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    public static <T> T j(@Nullable T t10) {
        Objects.requireNonNull(t10, "null reference");
        return t10;
    }

    @NonNull
    public static <T> T k(@NonNull T t10, @NonNull Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static int l(int i9) {
        if (i9 != 0) {
            return i9;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    public static long m(long j10) {
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalArgumentException("Given Long is zero");
    }

    public static void n(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void o(boolean z10, @NonNull Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void p(boolean z10, @NonNull String str, @NonNull Object... objArr) {
        if (!z10) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }
}
