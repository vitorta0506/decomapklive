package com.google.android.exoplayer2.ui;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes2.dex */
final class b {
    public static String a(String str) {
        return "." + str + ",." + str + " *";
    }

    public static String b(@ColorInt int i9) {
        return l0.z("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i9)), Integer.valueOf(Color.green(i9)), Integer.valueOf(Color.blue(i9)), Double.valueOf(Color.alpha(i9) / 255.0d));
    }
}
