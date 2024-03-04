package com.huawei.hms.utils;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Objects;
/* loaded from: classes4.dex */
public final class Checker {
    public static void assertHandlerThread(Handler handler) {
        assertHandlerThread(handler, "Must be called on the handler thread");
    }

    public static void assertNonEmpty(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalStateException("Given String is empty or null");
        }
    }

    public static <T> T assertNonNull(T t10) {
        Objects.requireNonNull(t10, "Null reference");
        return t10;
    }

    public static void assertNotUiThread(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static void assertUiThread(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static String checkNonEmpty(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    public static <T> T checkNonNull(T t10) {
        Objects.requireNonNull(t10, "Null reference");
        return t10;
    }

    public static int checkNonZero(int i9) {
        if (i9 != 0) {
            return i9;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    public static long checkNotZero(long j10) {
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalArgumentException("Given Long is zero");
    }

    public static void assertHandlerThread(Handler handler, String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public static <T> T assertNonNull(T t10, String str) {
        Objects.requireNonNull(t10, String.valueOf(str));
        return t10;
    }

    public static <T> T checkNonNull(T t10, String str) {
        Objects.requireNonNull(t10, String.valueOf(str));
        return t10;
    }

    public static int checkNonZero(int i9, String str) {
        if (i9 != 0) {
            return i9;
        }
        throw new IllegalArgumentException(String.valueOf(str));
    }

    public static long checkNotZero(long j10, String str) {
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalArgumentException(String.valueOf(str));
    }

    public static void assertNonEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalStateException(String.valueOf(str2));
        }
    }

    public static String checkNonEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(str2));
        }
        return str;
    }
}
