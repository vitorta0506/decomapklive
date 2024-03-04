package com.google.android.material.color;
/* loaded from: classes2.dex */
final class Hct {
    private static final float CHROMA_SEARCH_ENDPOINT = 0.4f;
    private static final float DE_MAX = 1.0f;
    private static final float DE_MAX_ERROR = 1.0E-9f;
    private static final float DL_MAX = 0.2f;
    private static final float LIGHTNESS_SEARCH_ENDPOINT = 0.01f;
    private float chroma;
    private float hue;
    private float tone;

    private Hct(float f10, float f11, float f12) {
        setInternalState(gamutMap(f10, f11, f12));
    }

    private static Cam16 findCamByJ(float f10, float f11, float f12) {
        float f13 = 1000.0f;
        Cam16 cam16 = null;
        float f14 = 1000.0f;
        float f15 = 100.0f;
        float f16 = 0.0f;
        while (Math.abs(f16 - f15) > LIGHTNESS_SEARCH_ENDPOINT) {
            float f17 = ((f15 - f16) / 2.0f) + f16;
            int i9 = Cam16.fromJch(f17, f11, f10).getInt();
            float lstarFromInt = ColorUtils.lstarFromInt(i9);
            float abs = Math.abs(f12 - lstarFromInt);
            if (abs < 0.2f) {
                Cam16 fromInt = Cam16.fromInt(i9);
                float distance = fromInt.distance(Cam16.fromJch(fromInt.getJ(), fromInt.getChroma(), f10));
                if (distance <= 1.0f && distance <= f13) {
                    cam16 = fromInt;
                    f14 = abs;
                    f13 = distance;
                }
            }
            if (f14 == 0.0f && f13 < DE_MAX_ERROR) {
                break;
            } else if (lstarFromInt < f12) {
                f16 = f17;
            } else {
                f15 = f17;
            }
        }
        return cam16;
    }

    public static Hct from(float f10, float f11, float f12) {
        return new Hct(f10, f11, f12);
    }

    public static Hct fromInt(int i9) {
        Cam16 fromInt = Cam16.fromInt(i9);
        return new Hct(fromInt.getHue(), fromInt.getChroma(), ColorUtils.lstarFromInt(i9));
    }

    private static int gamutMap(float f10, float f11, float f12) {
        return gamutMapInViewingConditions(f10, f11, f12, ViewingConditions.DEFAULT);
    }

    static int gamutMapInViewingConditions(float f10, float f11, float f12, ViewingConditions viewingConditions) {
        if (f11 >= 1.0d && Math.round(f12) > 0.0d && Math.round(f12) < 100.0d) {
            float sanitizeDegrees = MathUtils.sanitizeDegrees(f10);
            float f13 = f11;
            Cam16 cam16 = null;
            float f14 = 0.0f;
            boolean z10 = true;
            while (Math.abs(f14 - f11) >= CHROMA_SEARCH_ENDPOINT) {
                Cam16 findCamByJ = findCamByJ(sanitizeDegrees, f13, f12);
                if (z10) {
                    if (findCamByJ != null) {
                        return findCamByJ.viewed(viewingConditions);
                    }
                    z10 = false;
                } else if (findCamByJ == null) {
                    f11 = f13;
                } else {
                    f14 = f13;
                    cam16 = findCamByJ;
                }
                f13 = ((f11 - f14) / 2.0f) + f14;
            }
            if (cam16 == null) {
                return ColorUtils.intFromLstar(f12);
            }
            return cam16.viewed(viewingConditions);
        }
        return ColorUtils.intFromLstar(f12);
    }

    private void setInternalState(int i9) {
        Cam16 fromInt = Cam16.fromInt(i9);
        float lstarFromInt = ColorUtils.lstarFromInt(i9);
        this.hue = fromInt.getHue();
        this.chroma = fromInt.getChroma();
        this.tone = lstarFromInt;
    }

    public float getChroma() {
        return this.chroma;
    }

    public float getHue() {
        return this.hue;
    }

    public float getTone() {
        return this.tone;
    }

    public void setChroma(float f10) {
        setInternalState(gamutMap(this.hue, f10, this.tone));
    }

    public void setHue(float f10) {
        setInternalState(gamutMap(MathUtils.sanitizeDegrees(f10), this.chroma, this.tone));
    }

    public void setTone(float f10) {
        setInternalState(gamutMap(this.hue, this.chroma, f10));
    }

    public int toInt() {
        return gamutMap(this.hue, this.chroma, this.tone);
    }
}
