package com.twitter.sdk.android.tweetui;

import android.graphics.Color;
/* loaded from: classes4.dex */
final class f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(double d10, int i9, int i10) {
        double d11 = 1.0d - d10;
        return Color.rgb((int) ((Color.red(i10) * d11) + (Color.red(i9) * d10)), (int) ((Color.green(i10) * d11) + (Color.green(i9) * d10)), (int) ((d11 * Color.blue(i10)) + (d10 * Color.blue(i9))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(int i9) {
        return ((((double) Color.red(i9)) * 0.21d) + (((double) Color.green(i9)) * 0.72d)) + (((double) Color.blue(i9)) * 0.07d) > 128.0d;
    }
}
