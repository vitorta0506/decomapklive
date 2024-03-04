package y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class a {
    public static <T> void a(@Nullable T t10, @NonNull String str) throws AssertionError {
        if (t10 != null) {
            return;
        }
        throw new AssertionError(str + " can't be null.");
    }
}
