package t3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    static int f58008b = 31;

    /* renamed from: a  reason: collision with root package name */
    private int f58009a = 1;

    @NonNull
    public a a(@Nullable Object obj) {
        this.f58009a = (f58008b * this.f58009a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public int b() {
        return this.f58009a;
    }

    @NonNull
    public final a c(boolean z10) {
        this.f58009a = (f58008b * this.f58009a) + (z10 ? 1 : 0);
        return this;
    }
}
