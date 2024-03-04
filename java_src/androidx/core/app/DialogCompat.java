package androidx.core.app;

import android.app.Dialog;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class DialogCompat {
    private DialogCompat() {
    }

    @NonNull
    public static View requireViewById(@NonNull Dialog dialog, int i9) {
        if (Build.VERSION.SDK_INT >= 28) {
            return dialog.requireViewById(i9);
        }
        View findViewById = dialog.findViewById(i9);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Dialog");
    }
}
