package androidx.core.graphics;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import java.util.Objects;
/* loaded from: classes.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    private ColorUtils() {
    }

    @ColorInt
    public static int HSLToColor(@NonNull float[] fArr) {
        int round;
        int round2;
        int round3;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float abs = (1.0f - Math.abs((f12 * 2.0f) - 1.0f)) * f11;
        float f13 = f12 - (0.5f * abs);
        float abs2 = (1.0f - Math.abs(((f10 / 60.0f) % 2.0f) - 1.0f)) * abs;
        switch (((int) f10) / 60) {
            case 0:
                round = Math.round((abs + f13) * 255.0f);
                round2 = Math.round((abs2 + f13) * 255.0f);
                round3 = Math.round(f13 * 255.0f);
                break;
            case 1:
                round = Math.round((abs2 + f13) * 255.0f);
                round2 = Math.round((abs + f13) * 255.0f);
                round3 = Math.round(f13 * 255.0f);
                break;
            case 2:
                round = Math.round(f13 * 255.0f);
                round2 = Math.round((abs + f13) * 255.0f);
                round3 = Math.round((abs2 + f13) * 255.0f);
                break;
            case 3:
                round = Math.round(f13 * 255.0f);
                round2 = Math.round((abs2 + f13) * 255.0f);
                round3 = Math.round((abs + f13) * 255.0f);
                break;
            case 4:
                round = Math.round((abs2 + f13) * 255.0f);
                round2 = Math.round(f13 * 255.0f);
                round3 = Math.round((abs + f13) * 255.0f);
                break;
            case 5:
            case 6:
                round = Math.round((abs + f13) * 255.0f);
                round2 = Math.round(f13 * 255.0f);
                round3 = Math.round((abs2 + f13) * 255.0f);
                break;
            default:
                round3 = 0;
                round = 0;
                round2 = 0;
                break;
        }
        return Color.rgb(constrain(round, 0, 255), constrain(round2, 0, 255), constrain(round3, 0, 255));
    }

    @ColorInt
    public static int LABToColor(@FloatRange(from = 0.0d, to = 100.0d) double d10, @FloatRange(from = -128.0d, to = 127.0d) double d11, @FloatRange(from = -128.0d, to = 127.0d) double d12) {
        double[] tempDouble3Array = getTempDouble3Array();
        LABToXYZ(d10, d11, d12, tempDouble3Array);
        return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static void LABToXYZ(@FloatRange(from = 0.0d, to = 100.0d) double d10, @FloatRange(from = -128.0d, to = 127.0d) double d11, @FloatRange(from = -128.0d, to = 127.0d) double d12, @NonNull double[] dArr) {
        double d13 = (d10 + 16.0d) / 116.0d;
        double d14 = (d11 / 500.0d) + d13;
        double d15 = d13 - (d12 / 200.0d);
        double pow = Math.pow(d14, 3.0d);
        if (pow <= XYZ_EPSILON) {
            pow = ((d14 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        double pow2 = d10 > 7.9996247999999985d ? Math.pow(d13, 3.0d) : d10 / XYZ_KAPPA;
        double pow3 = Math.pow(d15, 3.0d);
        if (pow3 <= XYZ_EPSILON) {
            pow3 = ((d15 * 116.0d) - 16.0d) / XYZ_KAPPA;
        }
        dArr[0] = pow * XYZ_WHITE_REFERENCE_X;
        dArr[1] = pow2 * XYZ_WHITE_REFERENCE_Y;
        dArr[2] = pow3 * XYZ_WHITE_REFERENCE_Z;
    }

    public static void RGBToHSL(@IntRange(from = 0, to = 255) int i9, @IntRange(from = 0, to = 255) int i10, @IntRange(from = 0, to = 255) int i11, @NonNull float[] fArr) {
        float f10;
        float abs;
        float f11 = i9 / 255.0f;
        float f12 = i10 / 255.0f;
        float f13 = i11 / 255.0f;
        float max = Math.max(f11, Math.max(f12, f13));
        float min = Math.min(f11, Math.min(f12, f13));
        float f14 = max - min;
        float f15 = (max + min) / 2.0f;
        if (max == min) {
            f10 = 0.0f;
            abs = 0.0f;
        } else {
            f10 = max == f11 ? ((f12 - f13) / f14) % 6.0f : max == f12 ? ((f13 - f11) / f14) + 2.0f : 4.0f + ((f11 - f12) / f14);
            abs = f14 / (1.0f - Math.abs((2.0f * f15) - 1.0f));
        }
        float f16 = (f10 * 60.0f) % 360.0f;
        if (f16 < 0.0f) {
            f16 += 360.0f;
        }
        fArr[0] = constrain(f16, 0.0f, 360.0f);
        fArr[1] = constrain(abs, 0.0f, 1.0f);
        fArr[2] = constrain(f15, 0.0f, 1.0f);
    }

    public static void RGBToLAB(@IntRange(from = 0, to = 255) int i9, @IntRange(from = 0, to = 255) int i10, @IntRange(from = 0, to = 255) int i11, @NonNull double[] dArr) {
        RGBToXYZ(i9, i10, i11, dArr);
        XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
    }

    public static void RGBToXYZ(@IntRange(from = 0, to = 255) int i9, @IntRange(from = 0, to = 255) int i10, @IntRange(from = 0, to = 255) int i11, @NonNull double[] dArr) {
        if (dArr.length == 3) {
            double d10 = i9 / 255.0d;
            double pow = d10 < 0.04045d ? d10 / 12.92d : Math.pow((d10 + 0.055d) / 1.055d, 2.4d);
            double d11 = i10 / 255.0d;
            double pow2 = d11 < 0.04045d ? d11 / 12.92d : Math.pow((d11 + 0.055d) / 1.055d, 2.4d);
            double d12 = i11 / 255.0d;
            double pow3 = d12 < 0.04045d ? d12 / 12.92d : Math.pow((d12 + 0.055d) / 1.055d, 2.4d);
            dArr[0] = ((0.4124d * pow) + (0.3576d * pow2) + (0.1805d * pow3)) * XYZ_WHITE_REFERENCE_Y;
            dArr[1] = ((0.2126d * pow) + (0.7152d * pow2) + (0.0722d * pow3)) * XYZ_WHITE_REFERENCE_Y;
            dArr[2] = ((pow * 0.0193d) + (pow2 * 0.1192d) + (pow3 * 0.9505d)) * XYZ_WHITE_REFERENCE_Y;
            return;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    @ColorInt
    public static int XYZToColor(@FloatRange(from = 0.0d, to = 95.047d) double d10, @FloatRange(from = 0.0d, to = 100.0d) double d11, @FloatRange(from = 0.0d, to = 108.883d) double d12) {
        double d13 = (((3.2406d * d10) + ((-1.5372d) * d11)) + ((-0.4986d) * d12)) / XYZ_WHITE_REFERENCE_Y;
        double d14 = ((((-0.9689d) * d10) + (1.8758d * d11)) + (0.0415d * d12)) / XYZ_WHITE_REFERENCE_Y;
        double d15 = (((0.0557d * d10) + ((-0.204d) * d11)) + (1.057d * d12)) / XYZ_WHITE_REFERENCE_Y;
        return Color.rgb(constrain((int) Math.round((d13 > 0.0031308d ? (Math.pow(d13, 0.4166666666666667d) * 1.055d) - 0.055d : d13 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d14 > 0.0031308d ? (Math.pow(d14, 0.4166666666666667d) * 1.055d) - 0.055d : d14 * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d15 > 0.0031308d ? (Math.pow(d15, 0.4166666666666667d) * 1.055d) - 0.055d : d15 * 12.92d) * 255.0d), 0, 255));
    }

    public static void XYZToLAB(@FloatRange(from = 0.0d, to = 95.047d) double d10, @FloatRange(from = 0.0d, to = 100.0d) double d11, @FloatRange(from = 0.0d, to = 108.883d) double d12, @NonNull double[] dArr) {
        if (dArr.length == 3) {
            double pivotXyzComponent = pivotXyzComponent(d10 / XYZ_WHITE_REFERENCE_X);
            double pivotXyzComponent2 = pivotXyzComponent(d11 / XYZ_WHITE_REFERENCE_Y);
            double pivotXyzComponent3 = pivotXyzComponent(d12 / XYZ_WHITE_REFERENCE_Z);
            dArr[0] = Math.max(0.0d, (116.0d * pivotXyzComponent2) - 16.0d);
            dArr[1] = (pivotXyzComponent - pivotXyzComponent2) * 500.0d;
            dArr[2] = (pivotXyzComponent2 - pivotXyzComponent3) * 200.0d;
            return;
        }
        throw new IllegalArgumentException("outLab must have a length of 3.");
    }

    @ColorInt
    public static int blendARGB(@ColorInt int i9, @ColorInt int i10, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        float f11 = 1.0f - f10;
        return Color.argb((int) ((Color.alpha(i9) * f11) + (Color.alpha(i10) * f10)), (int) ((Color.red(i9) * f11) + (Color.red(i10) * f10)), (int) ((Color.green(i9) * f11) + (Color.green(i10) * f10)), (int) ((Color.blue(i9) * f11) + (Color.blue(i10) * f10)));
    }

    public static void blendHSL(@NonNull float[] fArr, @NonNull float[] fArr2, @FloatRange(from = 0.0d, to = 1.0d) float f10, @NonNull float[] fArr3) {
        if (fArr3.length == 3) {
            float f11 = 1.0f - f10;
            fArr3[0] = circularInterpolate(fArr[0], fArr2[0], f10);
            fArr3[1] = (fArr[1] * f11) + (fArr2[1] * f10);
            fArr3[2] = (fArr[2] * f11) + (fArr2[2] * f10);
            return;
        }
        throw new IllegalArgumentException("result must have a length of 3.");
    }

    public static void blendLAB(@NonNull double[] dArr, @NonNull double[] dArr2, @FloatRange(from = 0.0d, to = 1.0d) double d10, @NonNull double[] dArr3) {
        if (dArr3.length == 3) {
            double d11 = 1.0d - d10;
            dArr3[0] = (dArr[0] * d11) + (dArr2[0] * d10);
            dArr3[1] = (dArr[1] * d11) + (dArr2[1] * d10);
            dArr3[2] = (dArr[2] * d11) + (dArr2[2] * d10);
            return;
        }
        throw new IllegalArgumentException("outResult must have a length of 3.");
    }

    public static double calculateContrast(@ColorInt int i9, @ColorInt int i10) {
        if (Color.alpha(i10) == 255) {
            if (Color.alpha(i9) < 255) {
                i9 = compositeColors(i9, i10);
            }
            double calculateLuminance = calculateLuminance(i9) + 0.05d;
            double calculateLuminance2 = calculateLuminance(i10) + 0.05d;
            return Math.max(calculateLuminance, calculateLuminance2) / Math.min(calculateLuminance, calculateLuminance2);
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i10));
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public static double calculateLuminance(@ColorInt int i9) {
        double[] tempDouble3Array = getTempDouble3Array();
        colorToXYZ(i9, tempDouble3Array);
        return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
    }

    public static int calculateMinimumAlpha(@ColorInt int i9, @ColorInt int i10, float f10) {
        int i11 = 255;
        if (Color.alpha(i10) == 255) {
            double d10 = f10;
            if (calculateContrast(setAlphaComponent(i9, 255), i10) < d10) {
                return -1;
            }
            int i12 = 0;
            for (int i13 = 0; i13 <= 10 && i11 - i12 > 1; i13++) {
                int i14 = (i12 + i11) / 2;
                if (calculateContrast(setAlphaComponent(i9, i14), i10) < d10) {
                    i12 = i14;
                } else {
                    i11 = i14;
                }
            }
            return i11;
        }
        throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i10));
    }

    @VisibleForTesting
    static float circularInterpolate(float f10, float f11, float f12) {
        if (Math.abs(f11 - f10) > 180.0f) {
            if (f11 > f10) {
                f10 += 360.0f;
            } else {
                f11 += 360.0f;
            }
        }
        return (f10 + ((f11 - f10) * f12)) % 360.0f;
    }

    public static void colorToHSL(@ColorInt int i9, @NonNull float[] fArr) {
        RGBToHSL(Color.red(i9), Color.green(i9), Color.blue(i9), fArr);
    }

    public static void colorToLAB(@ColorInt int i9, @NonNull double[] dArr) {
        RGBToLAB(Color.red(i9), Color.green(i9), Color.blue(i9), dArr);
    }

    public static void colorToXYZ(@ColorInt int i9, @NonNull double[] dArr) {
        RGBToXYZ(Color.red(i9), Color.green(i9), Color.blue(i9), dArr);
    }

    private static int compositeAlpha(int i9, int i10) {
        return 255 - (((255 - i10) * (255 - i9)) / 255);
    }

    public static int compositeColors(@ColorInt int i9, @ColorInt int i10) {
        int alpha = Color.alpha(i10);
        int alpha2 = Color.alpha(i9);
        int compositeAlpha = compositeAlpha(alpha2, alpha);
        return Color.argb(compositeAlpha, compositeComponent(Color.red(i9), alpha2, Color.red(i10), alpha, compositeAlpha), compositeComponent(Color.green(i9), alpha2, Color.green(i10), alpha, compositeAlpha), compositeComponent(Color.blue(i9), alpha2, Color.blue(i10), alpha, compositeAlpha));
    }

    private static int compositeComponent(int i9, int i10, int i11, int i12, int i13) {
        if (i13 == 0) {
            return 0;
        }
        return (((i9 * 255) * i10) + ((i11 * i12) * (255 - i10))) / (i13 * 255);
    }

    private static float constrain(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    private static int constrain(int i9, int i10, int i11) {
        return i9 < i10 ? i10 : i9 > i11 ? i11 : i9;
    }

    public static double distanceEuclidean(@NonNull double[] dArr, @NonNull double[] dArr2) {
        return Math.sqrt(Math.pow(dArr[0] - dArr2[0], 2.0d) + Math.pow(dArr[1] - dArr2[1], 2.0d) + Math.pow(dArr[2] - dArr2[2], 2.0d));
    }

    private static double[] getTempDouble3Array() {
        ThreadLocal<double[]> threadLocal = TEMP_ARRAY;
        double[] dArr = threadLocal.get();
        if (dArr == null) {
            double[] dArr2 = new double[3];
            threadLocal.set(dArr2);
            return dArr2;
        }
        return dArr;
    }

    private static double pivotXyzComponent(double d10) {
        return d10 > XYZ_EPSILON ? Math.pow(d10, 0.3333333333333333d) : ((d10 * XYZ_KAPPA) + 16.0d) / 116.0d;
    }

    @ColorInt
    public static int setAlphaComponent(@ColorInt int i9, @IntRange(from = 0, to = 255) int i10) {
        if (i10 < 0 || i10 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i9 & ViewCompat.MEASURED_SIZE_MASK) | (i10 << 24);
    }

    @NonNull
    @RequiresApi(26)
    public static Color compositeColors(@NonNull Color color, @NonNull Color color2) {
        if (Objects.equals(color.getModel(), color2.getModel())) {
            if (!Objects.equals(color2.getColorSpace(), color.getColorSpace())) {
                color = color.convert(color2.getColorSpace());
            }
            float[] components = color.getComponents();
            float[] components2 = color2.getComponents();
            float alpha = color.alpha();
            float alpha2 = color2.alpha() * (1.0f - alpha);
            int componentCount = color2.getComponentCount() - 1;
            components2[componentCount] = alpha + alpha2;
            if (components2[componentCount] > 0.0f) {
                alpha /= components2[componentCount];
                alpha2 /= components2[componentCount];
            }
            for (int i9 = 0; i9 < componentCount; i9++) {
                components2[i9] = (components[i9] * alpha) + (components2[i9] * alpha2);
            }
            return Color.valueOf(components2, color2.getColorSpace());
        }
        throw new IllegalArgumentException("Color models must match (" + color.getModel() + " vs. " + color2.getModel() + ")");
    }
}
