package com.google.android.material.color;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class ColorUtils {
    private static final float[] WHITE_POINT_D65 = {95.047f, 100.0f, 108.883f};

    private ColorUtils() {
    }

    public static int blueFromInt(int i9) {
        return i9 & 255;
    }

    public static float delinearized(float f10) {
        return f10 <= 0.0031308f ? f10 * 12.92f : (((float) Math.pow(f10, 0.4166666567325592d)) * 1.055f) - 0.055f;
    }

    public static int greenFromInt(int i9) {
        return (i9 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
    }

    public static String hexFromInt(int i9) {
        return String.format("#%02x%02x%02x", Integer.valueOf(redFromInt(i9)), Integer.valueOf(greenFromInt(i9)), Integer.valueOf(blueFromInt(i9)));
    }

    public static int intFromLab(double d10, double d11, double d12) {
        double d13 = (d10 + 16.0d) / 116.0d;
        double d14 = (d11 / 500.0d) + d13;
        double d15 = d13 - (d12 / 200.0d);
        double d16 = d14 * d14 * d14;
        if (d16 <= 0.008856451679035631d) {
            d16 = ((d14 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        double d17 = d10 > 8.0d ? d13 * d13 * d13 : d10 / 903.2962962962963d;
        double d18 = d15 * d15 * d15;
        if (d18 <= 0.008856451679035631d) {
            d18 = ((d15 * 116.0d) - 16.0d) / 903.2962962962963d;
        }
        float[] fArr = WHITE_POINT_D65;
        return intFromXyzComponents((float) (d16 * fArr[0]), (float) (d17 * fArr[1]), (float) (d18 * fArr[2]));
    }

    public static int intFromLstar(float f10) {
        float f11 = (f10 + 16.0f) / 116.0f;
        float f12 = f11 * f11 * f11;
        boolean z10 = f12 > 0.008856452f;
        float f13 = (f10 > 8.0f ? 1 : (f10 == 8.0f ? 0 : -1)) > 0 ? f12 : f10 / 903.2963f;
        float f14 = z10 ? f12 : ((f11 * 116.0f) - 16.0f) / 903.2963f;
        if (!z10) {
            f12 = ((f11 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = WHITE_POINT_D65;
        return intFromXyz(new float[]{f14 * fArr[0], f13 * fArr[1], f12 * fArr[2]});
    }

    public static int intFromRgb(int i9, int i10, int i11) {
        return (((((i9 & 255) << 16) | ViewCompat.MEASURED_STATE_MASK) | ((i10 & 255) << 8)) | (i11 & 255)) >>> 0;
    }

    public static int intFromXyz(float[] fArr) {
        return intFromXyzComponents(fArr[0], fArr[1], fArr[2]);
    }

    public static int intFromXyzComponents(float f10, float f11, float f12) {
        float f13 = f10 / 100.0f;
        float f14 = f11 / 100.0f;
        float f15 = f12 / 100.0f;
        float f16 = (3.2406f * f13) + ((-1.5372f) * f14) + ((-0.4986f) * f15);
        float f17 = (f13 * 0.0557f) + (f14 * (-0.204f)) + (f15 * 1.057f);
        return intFromRgb(Math.max(Math.min(255, Math.round(delinearized(f16) * 255.0f)), 0), Math.max(Math.min(255, Math.round(delinearized(((-0.9689f) * f13) + (1.8758f * f14) + (0.0415f * f15)) * 255.0f)), 0), Math.max(Math.min(255, Math.round(delinearized(f17) * 255.0f)), 0));
    }

    public static double[] labFromInt(int i9) {
        float[] xyzFromInt = xyzFromInt(i9);
        float f10 = xyzFromInt[1];
        float[] fArr = WHITE_POINT_D65;
        double d10 = f10 / fArr[1];
        double cbrt = d10 > 0.008856451679035631d ? Math.cbrt(d10) : ((d10 * 903.2962962962963d) + 16.0d) / 116.0d;
        double d11 = xyzFromInt[0] / fArr[0];
        double cbrt2 = d11 > 0.008856451679035631d ? Math.cbrt(d11) : ((d11 * 903.2962962962963d) + 16.0d) / 116.0d;
        double d12 = xyzFromInt[2] / fArr[2];
        return new double[]{(116.0d * cbrt) - 16.0d, (cbrt2 - cbrt) * 500.0d, (cbrt - (d12 > 0.008856451679035631d ? Math.cbrt(d12) : ((d12 * 903.2962962962963d) + 16.0d) / 116.0d)) * 200.0d};
    }

    public static float linearized(float f10) {
        return f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float lstarFromInt(int i9) {
        return (float) labFromInt(i9)[0];
    }

    public static int redFromInt(int i9) {
        return (i9 & 16711680) >> 16;
    }

    public static final float[] whitePointD65() {
        return Arrays.copyOf(WHITE_POINT_D65, 3);
    }

    public static float[] xyzFromInt(int i9) {
        float linearized = linearized(redFromInt(i9) / 255.0f) * 100.0f;
        float linearized2 = linearized(greenFromInt(i9) / 255.0f) * 100.0f;
        float linearized3 = linearized(blueFromInt(i9) / 255.0f) * 100.0f;
        return new float[]{(0.41233894f * linearized) + (0.35762063f * linearized2) + (0.18051042f * linearized3), (0.2126f * linearized) + (0.7152f * linearized2) + (0.0722f * linearized3), (linearized * 0.01932141f) + (linearized2 * 0.11916382f) + (linearized3 * 0.9503448f)};
    }

    public static float yFromLstar(float f10) {
        return (f10 > 8.0f ? (float) Math.pow((f10 + 16.0d) / 116.0d, 3.0d) : f10 / 903.2963f) * 100.0f;
    }
}
