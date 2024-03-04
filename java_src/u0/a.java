package u0;

import android.content.Context;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import v0.k;
/* loaded from: classes.dex */
public final class a implements e0.b {

    /* renamed from: b  reason: collision with root package name */
    private final int f58290b;

    /* renamed from: c  reason: collision with root package name */
    private final e0.b f58291c;

    private a(int i9, e0.b bVar) {
        this.f58290b = i9;
        this.f58291c = bVar;
    }

    @NonNull
    public static e0.b a(@NonNull Context context) {
        return new a(context.getResources().getConfiguration().uiMode & 48, b.c(context));
    }

    @Override // e0.b
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f58290b == aVar.f58290b && this.f58291c.equals(aVar.f58291c);
        }
        return false;
    }

    @Override // e0.b
    public int hashCode() {
        return k.p(this.f58291c, this.f58290b);
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f58291c.updateDiskCacheKey(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f58290b).array());
    }
}
