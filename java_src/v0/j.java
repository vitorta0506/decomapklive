package v0;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Objects;
/* loaded from: classes.dex */
public final class j {
    public static void a(boolean z10, @NonNull String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    @NonNull
    public static String b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        return str;
    }

    @NonNull
    public static <T extends Collection<Y>, Y> T c(@NonNull T t10) {
        if (t10.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        return t10;
    }

    @NonNull
    public static <T> T d(@Nullable T t10) {
        return (T) e(t10, "Argument must not be null");
    }

    @NonNull
    public static <T> T e(@Nullable T t10, @NonNull String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }
}
