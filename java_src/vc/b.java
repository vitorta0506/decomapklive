package vc;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
public class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59092a;

    /* renamed from: b  reason: collision with root package name */
    private final long f59093b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final List<qc.e> f59094c;

    public b(@NonNull String str, long j10, @NonNull List<qc.e> list) {
        this.f59092a = str;
        this.f59093b = j10;
        this.f59094c = Collections.unmodifiableList(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f59093b == bVar.f59093b && this.f59092a.equals(bVar.f59092a)) {
            return this.f59094c.equals(bVar.f59094c);
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f59093b;
        return (((this.f59092a.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f59094c.hashCode();
    }

    public String toString() {
        return "AccessTokenVerificationResult{channelId='" + this.f59092a + "', expiresInMillis=" + this.f59093b + ", scopes=" + this.f59094c + '}';
    }
}
