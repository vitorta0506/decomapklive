package u0;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import v0.j;
/* loaded from: classes.dex */
public final class d implements e0.b {

    /* renamed from: b  reason: collision with root package name */
    private final Object f58294b;

    public d(@NonNull Object obj) {
        this.f58294b = j.d(obj);
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f58294b.equals(((d) obj).f58294b);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return this.f58294b.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f58294b + '}';
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f58294b.toString().getBytes(e0.b.f38307a));
    }
}
