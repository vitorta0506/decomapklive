package m;
/* loaded from: classes.dex */
public class b {
    private static float a(float f10) {
        return f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    private static float b(float f10) {
        return f10 <= 0.0031308f ? f10 * 12.92f : (float) ((Math.pow(f10, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int c(float f10, int i9, int i10) {
        if (i9 == i10) {
            return i9;
        }
        float f11 = ((i9 >> 24) & 255) / 255.0f;
        float a10 = a(((i9 >> 16) & 255) / 255.0f);
        float a11 = a(((i9 >> 8) & 255) / 255.0f);
        float a12 = a((i9 & 255) / 255.0f);
        float a13 = a(((i10 >> 16) & 255) / 255.0f);
        float a14 = a(((i10 >> 8) & 255) / 255.0f);
        float a15 = a12 + (f10 * (a((i10 & 255) / 255.0f) - a12));
        return (Math.round(b(a10 + ((a13 - a10) * f10)) * 255.0f) << 16) | (Math.round((f11 + (((((i10 >> 24) & 255) / 255.0f) - f11) * f10)) * 255.0f) << 24) | (Math.round(b(a11 + ((a14 - a11) * f10)) * 255.0f) << 8) | Math.round(b(a15) * 255.0f);
    }
}
