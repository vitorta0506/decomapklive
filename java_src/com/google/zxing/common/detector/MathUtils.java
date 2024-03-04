package com.google.zxing.common.detector;
/* loaded from: classes3.dex */
public final class MathUtils {
    private MathUtils() {
    }

    public static float distance(float f10, float f11, float f12, float f13) {
        float f14 = f10 - f12;
        float f15 = f11 - f13;
        return (float) Math.sqrt((f14 * f14) + (f15 * f15));
    }

    public static int round(float f10) {
        return (int) (f10 + (f10 < 0.0f ? -0.5f : 0.5f));
    }

    public static int sum(int[] iArr) {
        int i9 = 0;
        for (int i10 : iArr) {
            i9 += i10;
        }
        return i9;
    }

    public static float distance(int i9, int i10, int i11, int i12) {
        int i13 = i9 - i11;
        int i14 = i10 - i12;
        return (float) Math.sqrt((i13 * i13) + (i14 * i14));
    }
}
