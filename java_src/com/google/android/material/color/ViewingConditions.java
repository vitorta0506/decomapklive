package com.google.android.material.color;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ViewingConditions {
    public static final ViewingConditions DEFAULT = make(ColorUtils.whitePointD65(), (float) ((ColorUtils.yFromLstar(50.0f) * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    private final float aw;

    /* renamed from: c  reason: collision with root package name */
    private final float f10125c;

    /* renamed from: fl  reason: collision with root package name */
    private final float f10126fl;
    private final float flRoot;

    /* renamed from: n  reason: collision with root package name */
    private final float f10127n;
    private final float nbb;

    /* renamed from: nc  reason: collision with root package name */
    private final float f10128nc;
    private final float ncb;
    private final float[] rgbD;

    /* renamed from: z  reason: collision with root package name */
    private final float f10129z;

    private ViewingConditions(float f10, float f11, float f12, float f13, float f14, float f15, float[] fArr, float f16, float f17, float f18) {
        this.f10127n = f10;
        this.aw = f11;
        this.nbb = f12;
        this.ncb = f13;
        this.f10125c = f14;
        this.f10128nc = f15;
        this.rgbD = fArr;
        this.f10126fl = f16;
        this.flRoot = f17;
        this.f10129z = f18;
    }

    static ViewingConditions make(float[] fArr, float f10, float f11, float f12, boolean z10) {
        float lerp;
        float[][] fArr2 = Cam16.XYZ_TO_CAM16RGB;
        float f13 = (fArr[0] * fArr2[0][0]) + (fArr[1] * fArr2[0][1]) + (fArr[2] * fArr2[0][2]);
        float f14 = (fArr[0] * fArr2[1][0]) + (fArr[1] * fArr2[1][1]) + (fArr[2] * fArr2[1][2]);
        float f15 = (fArr[0] * fArr2[2][0]) + (fArr[1] * fArr2[2][1]) + (fArr[2] * fArr2[2][2]);
        float f16 = (f12 / 10.0f) + 0.8f;
        if (f16 >= 0.9d) {
            lerp = MathUtils.lerp(0.59f, 0.69f, (f16 - 0.9f) * 10.0f);
        } else {
            lerp = MathUtils.lerp(0.525f, 0.59f, (f16 - 0.8f) * 10.0f);
        }
        float f17 = lerp;
        float exp = z10 ? 1.0f : (1.0f - (((float) Math.exp(((-f10) - 42.0f) / 92.0f)) * 0.2777778f)) * f16;
        double d10 = exp;
        if (d10 > 1.0d) {
            exp = 1.0f;
        } else if (d10 < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr3 = {(((100.0f / f13) * exp) + 1.0f) - exp, (((100.0f / f14) * exp) + 1.0f) - exp, (((100.0f / f15) * exp) + 1.0f) - exp};
        float f18 = 1.0f / ((5.0f * f10) + 1.0f);
        float f19 = f18 * f18 * f18 * f18;
        float f20 = 1.0f - f19;
        float cbrt = (f19 * f10) + (0.1f * f20 * f20 * ((float) Math.cbrt(f10 * 5.0d)));
        float yFromLstar = ColorUtils.yFromLstar(f11) / fArr[1];
        double d11 = yFromLstar;
        float sqrt = ((float) Math.sqrt(d11)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d11, 0.2d));
        float[] fArr4 = {(float) Math.pow(((fArr3[0] * cbrt) * f13) / 100.0d, 0.42d), (float) Math.pow(((fArr3[1] * cbrt) * f14) / 100.0d, 0.42d), (float) Math.pow(((fArr3[2] * cbrt) * f15) / 100.0d, 0.42d)};
        float[] fArr5 = {(fArr4[0] * 400.0f) / (fArr4[0] + 27.13f), (fArr4[1] * 400.0f) / (fArr4[1] + 27.13f), (fArr4[2] * 400.0f) / (fArr4[2] + 27.13f)};
        return new ViewingConditions(yFromLstar, ((fArr5[0] * 2.0f) + fArr5[1] + (fArr5[2] * 0.05f)) * pow, pow, pow, f17, f16, fArr3, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    public float getAw() {
        return this.aw;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getC() {
        return this.f10125c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getFl() {
        return this.f10126fl;
    }

    public float getFlRoot() {
        return this.flRoot;
    }

    public float getN() {
        return this.f10127n;
    }

    public float getNbb() {
        return this.nbb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getNc() {
        return this.f10128nc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getNcb() {
        return this.ncb;
    }

    public float[] getRgbD() {
        return this.rgbD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getZ() {
        return this.f10129z;
    }
}
