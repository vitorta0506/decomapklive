package n1;

import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final l1.b f55267a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f55268b;

    public h(@NonNull l1.b bVar, @NonNull byte[] bArr) {
        Objects.requireNonNull(bVar, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f55267a = bVar;
        this.f55268b = bArr;
    }

    public byte[] a() {
        return this.f55268b;
    }

    public l1.b b() {
        return this.f55267a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.f55267a.equals(hVar.f55267a)) {
                return Arrays.equals(this.f55268b, hVar.f55268b);
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f55267a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f55268b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f55267a + ", bytes=[...]}";
    }
}
