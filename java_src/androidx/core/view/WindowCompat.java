package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* loaded from: classes.dex */
public final class WindowCompat {
    public static final int FEATURE_ACTION_BAR = 8;
    public static final int FEATURE_ACTION_BAR_OVERLAY = 9;
    public static final int FEATURE_ACTION_MODE_OVERLAY = 10;

    @RequiresApi(16)
    /* loaded from: classes.dex */
    private static class Impl16 {
        private Impl16() {
        }

        static void setDecorFitsSystemWindows(@NonNull Window window, boolean z10) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z10 ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Impl30 {
        private Impl30() {
        }

        static WindowInsetsControllerCompat getInsetsController(@NonNull Window window) {
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                return WindowInsetsControllerCompat.toWindowInsetsControllerCompat(insetsController);
            }
            return null;
        }

        static void setDecorFitsSystemWindows(@NonNull Window window, boolean z10) {
            window.setDecorFitsSystemWindows(z10);
        }
    }

    private WindowCompat() {
    }

    @Nullable
    public static WindowInsetsControllerCompat getInsetsController(@NonNull Window window, @NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Impl30.getInsetsController(window);
        }
        return new WindowInsetsControllerCompat(window, view);
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull Window window, @IdRes int i9) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) window.requireViewById(i9);
        }
        T t10 = (T) window.findViewById(i9);
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Window");
    }

    public static void setDecorFitsSystemWindows(@NonNull Window window, boolean z10) {
        if (Build.VERSION.SDK_INT >= 30) {
            Impl30.setDecorFitsSystemWindows(window, z10);
        } else {
            Impl16.setDecorFitsSystemWindows(window, z10);
        }
    }
}
