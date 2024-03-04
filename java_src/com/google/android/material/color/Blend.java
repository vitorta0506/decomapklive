package com.google.android.material.color;
/* loaded from: classes2.dex */
final class Blend {
    private static final float HARMONIZE_MAX_DEGREES = 15.0f;
    private static final float HARMONIZE_PERCENTAGE = 0.5f;

    private Blend() {
    }

    public static int blendCam16Ucs(int i9, int i10, float f10) {
        Cam16 fromInt = Cam16.fromInt(i9);
        Cam16 fromInt2 = Cam16.fromInt(i10);
        float jStar = fromInt.getJStar();
        float aStar = fromInt.getAStar();
        float bStar = fromInt.getBStar();
        return Cam16.fromUcs(jStar + ((fromInt2.getJStar() - jStar) * f10), aStar + ((fromInt2.getAStar() - aStar) * f10), bStar + ((fromInt2.getBStar() - bStar) * f10)).getInt();
    }

    public static int blendHctHue(int i9, int i10, float f10) {
        return Hct.from(Cam16.fromInt(blendCam16Ucs(i9, i10, f10)).getHue(), Cam16.fromInt(i9).getChroma(), ColorUtils.lstarFromInt(i9)).toInt();
    }

    public static int harmonize(int i9, int i10) {
        Hct fromInt = Hct.fromInt(i9);
        Hct fromInt2 = Hct.fromInt(i10);
        return Hct.from(MathUtils.sanitizeDegrees(fromInt.getHue() + (Math.min(MathUtils.differenceDegrees(fromInt.getHue(), fromInt2.getHue()) * 0.5f, (float) HARMONIZE_MAX_DEGREES) * rotationDirection(fromInt.getHue(), fromInt2.getHue()))), fromInt.getChroma(), fromInt.getTone()).toInt();
    }

    private static float rotationDirection(float f10, float f11) {
        float f12 = f11 - f10;
        float f13 = f12 + 360.0f;
        float f14 = f12 - 360.0f;
        float abs = Math.abs(f12);
        float abs2 = Math.abs(f13);
        float abs3 = Math.abs(f14);
        return (abs > abs2 || abs > abs3) ? (abs2 > abs || abs2 > abs3) ? ((double) f14) >= 0.0d ? 1.0f : -1.0f : ((double) f13) >= 0.0d ? 1.0f : -1.0f : ((double) f12) >= 0.0d ? 1.0f : -1.0f;
    }
}
