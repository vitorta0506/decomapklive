package com.google.android.exoplayer2.util;

import android.os.Trace;
import androidx.annotation.RequiresApi;
/* loaded from: classes2.dex */
public final class j0 {
    public static void a(String str) {
        if (l0.f6985a >= 18) {
            b(str);
        }
    }

    @RequiresApi(18)
    private static void b(String str) {
        Trace.beginSection(str);
    }

    public static void c() {
        if (l0.f6985a >= 18) {
            d();
        }
    }

    @RequiresApi(18)
    private static void d() {
        Trace.endSection();
    }
}
