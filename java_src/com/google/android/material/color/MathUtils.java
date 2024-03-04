package com.google.android.material.color;
/* loaded from: classes2.dex */
final class MathUtils {
    private MathUtils() {
    }

    static float clamp(float f10, float f11, float f12) {
        return Math.min(Math.max(f12, f10), f11);
    }

    public static float differenceDegrees(float f10, float f11) {
        return 180.0f - Math.abs(Math.abs(f10 - f11) - 180.0f);
    }

    public static float lerp(float f10, float f11, float f12) {
        return ((1.0f - f12) * f10) + (f12 * f11);
    }

    public static float sanitizeDegrees(float f10) {
        return f10 < 0.0f ? (f10 % 360.0f) + 360.0f : f10 >= 360.0f ? f10 % 360.0f : f10;
    }

    public static int sanitizeDegrees(int i9) {
        if (i9 < 0) {
            return (i9 % 360) + 360;
        }
        return i9 >= 360 ? i9 % 360 : i9;
    }

    static float toDegrees(float f10) {
        return (f10 * 180.0f) / 3.1415927f;
    }

    static float toRadians(float f10) {
        return (f10 / 180.0f) * 3.1415927f;
    }
}
