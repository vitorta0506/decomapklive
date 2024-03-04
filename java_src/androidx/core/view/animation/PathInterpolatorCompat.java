package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
/* loaded from: classes.dex */
public final class PathInterpolatorCompat {
    private PathInterpolatorCompat() {
    }

    public static Interpolator create(Path path) {
        return new PathInterpolator(path);
    }

    public static Interpolator create(float f10, float f11) {
        return new PathInterpolator(f10, f11);
    }

    public static Interpolator create(float f10, float f11, float f12, float f13) {
        return new PathInterpolator(f10, f11, f12, f13);
    }
}
