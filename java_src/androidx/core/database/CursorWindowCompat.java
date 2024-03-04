package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class CursorWindowCompat {
    private CursorWindowCompat() {
    }

    @NonNull
    public static CursorWindow create(@Nullable String str, long j10) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new CursorWindow(str, j10);
        }
        return new CursorWindow(str);
    }
}
