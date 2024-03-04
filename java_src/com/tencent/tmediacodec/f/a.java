package com.tencent.tmediacodec.f;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.LiteavLog;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f34619a = 5;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f34620b = true;

    public static void a(@NonNull String str, @NonNull String str2) {
        if (a(2)) {
            LiteavLog.v("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void b(@NonNull String str, @NonNull String str2) {
        if (a(3)) {
            LiteavLog.d("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void c(@NonNull String str, @NonNull String str2) {
        if (a(4)) {
            LiteavLog.i("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void d(@NonNull String str, @NonNull String str2) {
        if (a(5)) {
            LiteavLog.w("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void e(@NonNull String str, @NonNull String str2) {
        if (a(6)) {
            LiteavLog.e("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void a(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
        if (a(5)) {
            String concat = "TMediaCodec.".concat(String.valueOf(str));
            LiteavLog.w(concat, str2 + th2);
        }
    }

    public static void b(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
        if (a(6)) {
            String concat = "TMediaCodec.".concat(String.valueOf(str));
            LiteavLog.e(concat, str2 + th2);
        }
    }

    private static boolean a(int i9) {
        return f34620b && i9 >= f34619a;
    }

    public static boolean a() {
        return f34620b;
    }
}
