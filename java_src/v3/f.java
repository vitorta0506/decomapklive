package v3;

import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class f<L> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f58970a;

    /* renamed from: b  reason: collision with root package name */
    private final String f58971b;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f58970a == fVar.f58970a && this.f58971b.equals(fVar.f58971b);
        }
        return false;
    }

    public int hashCode() {
        return (System.identityHashCode(this.f58970a) * 31) + this.f58971b.hashCode();
    }
}
