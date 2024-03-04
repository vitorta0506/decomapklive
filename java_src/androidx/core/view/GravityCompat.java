package androidx.core.view;

import android.graphics.Rect;
import android.view.Gravity;
/* loaded from: classes.dex */
public final class GravityCompat {
    public static final int END = 8388613;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    private GravityCompat() {
    }

    public static void apply(int i9, int i10, int i11, Rect rect, Rect rect2, int i12) {
        Gravity.apply(i9, i10, i11, rect, rect2, i12);
    }

    public static void applyDisplay(int i9, Rect rect, Rect rect2, int i10) {
        Gravity.applyDisplay(i9, rect, rect2, i10);
    }

    public static int getAbsoluteGravity(int i9, int i10) {
        return Gravity.getAbsoluteGravity(i9, i10);
    }

    public static void apply(int i9, int i10, int i11, Rect rect, int i12, int i13, Rect rect2, int i14) {
        Gravity.apply(i9, i10, i11, rect, i12, i13, rect2, i14);
    }
}
