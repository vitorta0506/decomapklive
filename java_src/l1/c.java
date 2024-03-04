package l1;

import androidx.annotation.Nullable;
import com.google.android.datatransport.Priority;
/* loaded from: classes.dex */
public abstract class c<T> {
    public static <T> c<T> d(T t10) {
        return new a(null, t10, Priority.DEFAULT);
    }

    @Nullable
    public abstract Integer a();

    public abstract T b();

    public abstract Priority c();
}
