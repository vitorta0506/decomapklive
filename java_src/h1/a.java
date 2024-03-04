package h1;

import android.view.View;
/* loaded from: classes.dex */
class a {
    public static void a(View view, Runnable runnable) {
        b(view, runnable);
    }

    private static void b(View view, Runnable runnable) {
        view.postOnAnimation(runnable);
    }
}
