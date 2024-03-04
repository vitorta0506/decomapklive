package com.tencent.thumbplayer.g.h;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static int f34103a = 2;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f34104b = true;

    /* renamed from: c  reason: collision with root package name */
    private static a f34105c = new a() { // from class: com.tencent.thumbplayer.g.h.b.1
        @Override // com.tencent.thumbplayer.g.h.a
        public final void d(@NonNull String str, @NonNull String str2) {
            Log.d(str, str2);
        }

        @Override // com.tencent.thumbplayer.g.h.a
        public final void e(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
            Log.e(str, str2, th2);
        }

        @Override // com.tencent.thumbplayer.g.h.a
        public final void i(@NonNull String str, @NonNull String str2) {
            Log.i(str, str2);
        }

        @Override // com.tencent.thumbplayer.g.h.a
        public final void v(@NonNull String str, @NonNull String str2) {
            Log.v(str, str2);
        }

        @Override // com.tencent.thumbplayer.g.h.a
        public final void w(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
            Log.w(str, str2, th2);
        }
    };

    public static void a(@NonNull a aVar) {
        f34105c = aVar;
    }

    public static void a(@NonNull String str, @NonNull String str2) {
        if (a(2)) {
            f34105c.v("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void a(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
        if (a(5)) {
            f34105c.w("TMediaCodec.".concat(String.valueOf(str)), str2, th2);
        }
    }

    public static void a(boolean z10) {
        f34104b = z10;
    }

    public static boolean a() {
        return f34104b;
    }

    public static boolean a(int i9) {
        return f34104b && i9 >= f34103a;
    }

    public static void b(@NonNull String str, @NonNull String str2) {
        if (a(3)) {
            f34105c.d("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void b(@NonNull String str, @NonNull String str2, @Nullable Throwable th2) {
        if (a(6)) {
            f34105c.e("TMediaCodec.".concat(String.valueOf(str)), str2, th2);
        }
    }

    public static void c(@NonNull String str, @NonNull String str2) {
        if (a(4)) {
            f34105c.i("TMediaCodec.".concat(String.valueOf(str)), str2);
        }
    }

    public static void d(@NonNull String str, @NonNull String str2) {
        if (a(5)) {
            f34105c.w("TMediaCodec.".concat(String.valueOf(str)), str2, null);
        }
    }

    public static void e(@NonNull String str, @NonNull String str2) {
        if (a(6)) {
            f34105c.e("TMediaCodec.".concat(String.valueOf(str)), str2, null);
        }
    }
}
