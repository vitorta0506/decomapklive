package kl;

import android.view.View;
import androidx.core.view.MotionEventCompat;
/* loaded from: classes7.dex */
public class a {
    public static int a(int i9) {
        return b(i9);
    }

    private static int b(int i9) {
        return (i9 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
    }

    public static void c(View view, Runnable runnable) {
        d(view, runnable);
    }

    private static void d(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
