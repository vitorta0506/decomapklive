package ae;

import android.view.animation.Interpolator;
/* loaded from: classes4.dex */
public class f implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private static final float f745a;

    /* renamed from: b  reason: collision with root package name */
    private static final float f746b;

    static {
        float a10 = 1.0f / a(1.0f);
        f745a = a10;
        f746b = 1.0f - (a10 * a(1.0f));
    }

    private static float a(float f10) {
        float f11 = f10 * 8.0f;
        if (f11 < 1.0f) {
            return f11 - (1.0f - ((float) Math.exp(-f11)));
        }
        return ((1.0f - ((float) Math.exp(1.0f - f11))) * 0.63212055f) + 0.36787945f;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        float a10 = f745a * a(f10);
        return a10 > 0.0f ? a10 + f746b : a10;
    }
}
