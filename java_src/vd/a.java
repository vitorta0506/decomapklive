package vd;

import android.view.animation.Interpolator;
/* loaded from: classes4.dex */
public class a implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (f10 < 0.25f) {
            return (((float) Math.pow(f10 - 0.125d, 2.0d)) * (-38.4f)) + 0.6f;
        }
        double d10 = f10;
        if (d10 < 0.5d || d10 >= 0.75d) {
            return 0.0f;
        }
        return (((float) Math.pow(d10 - 0.625d, 2.0d)) * (-19.2f)) + 0.3f;
    }
}
