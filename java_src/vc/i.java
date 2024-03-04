package vc;

import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes4.dex */
public class i {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59136a;

    /* renamed from: b  reason: collision with root package name */
    private final long f59137b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final String f59138c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final List<qc.e> f59139d;

    public i(@NonNull String str, long j10, @NonNull String str2, @NonNull List<qc.e> list) {
        this.f59136a = str;
        this.f59137b = j10;
        this.f59138c = str2;
        this.f59139d = list;
    }

    @NonNull
    public String a() {
        return this.f59136a;
    }

    public long b() {
        return this.f59137b;
    }

    @NonNull
    public String c() {
        return this.f59138c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f59137b == iVar.f59137b && this.f59136a.equals(iVar.f59136a) && this.f59138c.equals(iVar.f59138c)) {
            return this.f59139d.equals(iVar.f59139d);
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f59137b;
        return (((((this.f59136a.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f59138c.hashCode()) * 31) + this.f59139d.hashCode();
    }

    public String toString() {
        return "RefreshTokenResult{accessToken='" + yc.a.a(this.f59136a) + "', expiresInMillis=" + this.f59137b + ", refreshToken='" + yc.a.a(this.f59138c) + "', scopes=" + this.f59139d + '}';
    }
}
