package h;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final f f40230b = new f();

    /* renamed from: a  reason: collision with root package name */
    private final LruCache<String, com.airbnb.lottie.d> f40231a = new LruCache<>(20);

    @VisibleForTesting
    f() {
    }

    public static f b() {
        return f40230b;
    }

    @Nullable
    public com.airbnb.lottie.d a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return this.f40231a.get(str);
    }

    public void c(@Nullable String str, com.airbnb.lottie.d dVar) {
        if (str == null) {
            return;
        }
        this.f40231a.put(str, dVar);
    }
}
