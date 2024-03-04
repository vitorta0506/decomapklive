package l1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f54113a;

    private b(@NonNull String str) {
        Objects.requireNonNull(str, "name is null");
        this.f54113a = str;
    }

    public static b b(@NonNull String str) {
        return new b(str);
    }

    public String a() {
        return this.f54113a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f54113a.equals(((b) obj).f54113a);
        }
        return false;
    }

    public int hashCode() {
        return this.f54113a.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.f54113a + "\"}";
    }
}
