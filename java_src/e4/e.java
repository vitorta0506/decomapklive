package e4;

import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class e {
    @NonNull
    @Deprecated
    public static <T> List<T> a() {
        return Collections.emptyList();
    }

    @NonNull
    @Deprecated
    public static <T> List<T> b(@NonNull T t10) {
        return Collections.singletonList(t10);
    }

    @NonNull
    @Deprecated
    public static <T> List<T> c(@NonNull T... tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length != 1) {
                return Collections.unmodifiableList(Arrays.asList(tArr));
            }
            return b(tArr[0]);
        }
        return a();
    }
}
