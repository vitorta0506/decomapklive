package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
/* loaded from: classes.dex */
public final /* synthetic */ class d {
    static {
        String str = TypedValues.MotionScene.NAME;
    }

    public static int a(String str) {
        str.hashCode();
        if (str.equals(TypedValues.MotionScene.S_DEFAULT_DURATION)) {
            return 600;
        }
        return !str.equals(TypedValues.MotionScene.S_LAYOUT_DURING_TRANSITION) ? -1 : 601;
    }

    public static int b(int i9) {
        if (i9 != 600) {
            return i9 != 601 ? -1 : 1;
        }
        return 2;
    }
}
