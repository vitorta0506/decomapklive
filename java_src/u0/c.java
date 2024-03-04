package u0;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class c implements e0.b {

    /* renamed from: b  reason: collision with root package name */
    private static final c f58293b = new c();

    private c() {
    }

    @NonNull
    public static c a() {
        return f58293b;
    }

    public String toString() {
        return "EmptySignature";
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
    }
}
