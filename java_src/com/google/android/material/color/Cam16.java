package com.google.android.material.color;
/* loaded from: classes2.dex */
final class Cam16 {
    private final float astar;
    private final float bstar;
    private final float chroma;
    private final float hue;

    /* renamed from: j  reason: collision with root package name */
    private final float f10121j;
    private final float jstar;

    /* renamed from: m  reason: collision with root package name */
    private final float f10122m;

    /* renamed from: q  reason: collision with root package name */
    private final float f10123q;

    /* renamed from: s  reason: collision with root package name */
    private final float f10124s;
    static final float[][] XYZ_TO_CAM16RGB = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    static final float[][] CAM16RGB_TO_XYZ = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    private Cam16(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.hue = f10;
        this.chroma = f11;
        this.f10121j = f12;
        this.f10123q = f13;
        this.f10122m = f14;
        this.f10124s = f15;
        this.jstar = f16;
        this.astar = f17;
        this.bstar = f18;
    }

    public static Cam16 fromInt(int i9) {
        return fromIntInViewingConditions(i9, ViewingConditions.DEFAULT);
    }

    static Cam16 fromIntInViewingConditions(int i9, ViewingConditions viewingConditions) {
        double d10;
        double d11;
        float pow;
        float linearized = ColorUtils.linearized(((16711680 & i9) >> 16) / 255.0f) * 100.0f;
        float linearized2 = ColorUtils.linearized(((65280 & i9) >> 8) / 255.0f) * 100.0f;
        float linearized3 = ColorUtils.linearized((i9 & 255) / 255.0f) * 100.0f;
        float f10 = (0.41233894f * linearized) + (0.35762063f * linearized2) + (0.18051042f * linearized3);
        float f11 = (0.2126f * linearized) + (0.7152f * linearized2) + (0.0722f * linearized3);
        float f12 = (linearized * 0.01932141f) + (linearized2 * 0.11916382f) + (linearized3 * 0.9503448f);
        float[][] fArr = XYZ_TO_CAM16RGB;
        float f13 = (fArr[0][0] * f10) + (fArr[0][1] * f11) + (fArr[0][2] * f12);
        float f14 = (fArr[1][0] * f10) + (fArr[1][1] * f11) + (fArr[1][2] * f12);
        float f15 = (f10 * fArr[2][0]) + (f11 * fArr[2][1]) + (f12 * fArr[2][2]);
        float f16 = viewingConditions.getRgbD()[0] * f13;
        float f17 = viewingConditions.getRgbD()[1] * f14;
        float f18 = viewingConditions.getRgbD()[2] * f15;
        float pow2 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f16)) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f17)) / 100.0d, 0.42d);
        float pow4 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f18)) / 100.0d, 0.42d);
        float signum = ((Math.signum(f16) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum2 = ((Math.signum(f17) * 400.0f) * pow3) / (pow3 + 27.13f);
        float signum3 = ((Math.signum(f18) * 400.0f) * pow4) / (pow4 + 27.13f);
        double d12 = (signum * 11.0d) + (signum2 * (-12.0d));
        double d13 = signum3;
        float f19 = signum2 * 20.0f;
        float f20 = (((signum * 20.0f) + f19) + (21.0f * signum3)) / 20.0f;
        float f21 = (((signum * 40.0f) + f19) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(((float) ((signum + signum2) - (d13 * 2.0d))) / 9.0f, ((float) (d12 + d13)) / 11.0f)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f22 = (3.1415927f * atan2) / 180.0f;
        float pow5 = ((float) Math.pow((f21 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.getC() * viewingConditions.getZ())) * 100.0f;
        float c10 = (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(pow5 / 100.0f)) * (viewingConditions.getAw() + 4.0f) * viewingConditions.getFlRoot();
        float pow6 = ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(Math.toRadians(((double) atan2) < 20.14d ? 360.0f + atan2 : atan2) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * viewingConditions.getNc()) * viewingConditions.getNcb()) * ((float) Math.hypot(d11, d10))) / (f20 + 0.305f), 0.9d)) * ((float) Math.sqrt(pow5 / 100.0d));
        float flRoot = pow6 * viewingConditions.getFlRoot();
        float sqrt = ((float) Math.sqrt((pow * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f23 = (1.7f * pow5) / ((0.007f * pow5) + 1.0f);
        float log1p = ((float) Math.log1p(0.0228f * flRoot)) * 43.85965f;
        double d14 = f22;
        return new Cam16(atan2, pow6, pow5, c10, flRoot, sqrt, f23, log1p * ((float) Math.cos(d14)), log1p * ((float) Math.sin(d14)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Cam16 fromJch(float f10, float f11, float f12) {
        return fromJchInViewingConditions(f10, f11, f12, ViewingConditions.DEFAULT);
    }

    private static Cam16 fromJchInViewingConditions(float f10, float f11, float f12, ViewingConditions viewingConditions) {
        double d10;
        float c10 = (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(f10 / 100.0d)) * (viewingConditions.getAw() + 4.0f) * viewingConditions.getFlRoot();
        float flRoot = f11 * viewingConditions.getFlRoot();
        float sqrt = ((float) Math.sqrt(((f11 / ((float) Math.sqrt(d10))) * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f13 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        float log1p = ((float) Math.log1p(flRoot * 0.0228d)) * 43.85965f;
        double d11 = (3.1415927f * f12) / 180.0f;
        return new Cam16(f12, f11, f10, c10, flRoot, sqrt, f13, log1p * ((float) Math.cos(d11)), log1p * ((float) Math.sin(d11)));
    }

    public static Cam16 fromUcs(float f10, float f11, float f12) {
        return fromUcsInViewingConditions(f10, f11, f12, ViewingConditions.DEFAULT);
    }

    public static Cam16 fromUcsInViewingConditions(float f10, float f11, float f12, ViewingConditions viewingConditions) {
        double d10 = f11;
        double d11 = f12;
        double expm1 = (Math.expm1(Math.hypot(d10, d11) * 0.02280000038444996d) / 0.02280000038444996d) / viewingConditions.getFlRoot();
        double atan2 = Math.atan2(d11, d10) * 57.29577951308232d;
        if (atan2 < 0.0d) {
            atan2 += 360.0d;
        }
        return fromJchInViewingConditions(f10 / (1.0f - ((f10 - 100.0f) * 0.007f)), (float) expm1, (float) atan2, viewingConditions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float distance(Cam16 cam16) {
        float jStar = getJStar() - cam16.getJStar();
        float aStar = getAStar() - cam16.getAStar();
        float bStar = getBStar() - cam16.getBStar();
        return (float) (Math.pow(Math.sqrt((jStar * jStar) + (aStar * aStar) + (bStar * bStar)), 0.63d) * 1.41d);
    }

    public float getAStar() {
        return this.astar;
    }

    public float getBStar() {
        return this.bstar;
    }

    public float getChroma() {
        return this.chroma;
    }

    public float getHue() {
        return this.hue;
    }

    public int getInt() {
        return viewed(ViewingConditions.DEFAULT);
    }

    public float getJ() {
        return this.f10121j;
    }

    public float getJStar() {
        return this.jstar;
    }

    public float getM() {
        return this.f10122m;
    }

    public float getQ() {
        return this.f10123q;
    }

    public float getS() {
        return this.f10124s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int viewed(ViewingConditions viewingConditions) {
        float f10;
        float pow = (float) Math.pow(((((double) getChroma()) == 0.0d || ((double) getJ()) == 0.0d) ? 0.0f : getChroma() / ((float) Math.sqrt(getJ() / 100.0d))) / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d), 1.1111111111111112d);
        double hue = (getHue() * 3.1415927f) / 180.0f;
        float aw = viewingConditions.getAw() * ((float) Math.pow(getJ() / 100.0d, (1.0d / viewingConditions.getC()) / viewingConditions.getZ()));
        float cos = ((float) (Math.cos(2.0d + hue) + 3.8d)) * 0.25f * 3846.1538f * viewingConditions.getNc() * viewingConditions.getNcb();
        float nbb = aw / viewingConditions.getNbb();
        float sin = (float) Math.sin(hue);
        float cos2 = (float) Math.cos(hue);
        float f11 = (((0.305f + nbb) * 23.0f) * pow) / (((cos * 23.0f) + ((11.0f * pow) * cos2)) + ((pow * 108.0f) * sin));
        float f12 = cos2 * f11;
        float f13 = f11 * sin;
        float f14 = nbb * 460.0f;
        float f15 = (((451.0f * f12) + f14) + (288.0f * f13)) / 1403.0f;
        float f16 = ((f14 - (891.0f * f12)) - (261.0f * f13)) / 1403.0f;
        float signum = Math.signum(f15) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f15) * 27.13d) / (400.0d - Math.abs(f15))), 2.380952380952381d));
        float signum2 = Math.signum(f16) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f16) * 27.13d) / (400.0d - Math.abs(f16))), 2.380952380952381d));
        float signum3 = Math.signum(((f14 - (f12 * 220.0f)) - (f13 * 6300.0f)) / 1403.0f) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f10) * 27.13d) / (400.0d - Math.abs(f10))), 2.380952380952381d));
        float f17 = signum / viewingConditions.getRgbD()[0];
        float f18 = signum2 / viewingConditions.getRgbD()[1];
        float f19 = signum3 / viewingConditions.getRgbD()[2];
        float[][] fArr = CAM16RGB_TO_XYZ;
        return ColorUtils.intFromXyzComponents((fArr[0][0] * f17) + (fArr[0][1] * f18) + (fArr[0][2] * f19), (fArr[1][0] * f17) + (fArr[1][1] * f18) + (fArr[1][2] * f19), (f17 * fArr[2][0]) + (f18 * fArr[2][1]) + (f19 * fArr[2][2]));
    }
}
