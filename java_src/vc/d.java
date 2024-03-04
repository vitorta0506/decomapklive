package vc;

import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class d {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59098a;

    /* renamed from: b  reason: collision with root package name */
    private final long f59099b;

    /* renamed from: c  reason: collision with root package name */
    private final long f59100c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final String f59101d;

    public d(@NonNull String str, long j10, long j11, @NonNull String str2) {
        this.f59098a = str;
        this.f59099b = j10;
        this.f59100c = j11;
        this.f59101d = str2;
    }

    @NonNull
    public String a() {
        return this.f59098a;
    }

    public long b() {
        return this.f59099b;
    }

    public long c() {
        return this.f59100c;
    }

    @NonNull
    public String d() {
        return this.f59101d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f59099b == dVar.f59099b && this.f59100c == dVar.f59100c && this.f59098a.equals(dVar.f59098a)) {
            return this.f59101d.equals(dVar.f59101d);
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f59099b;
        long j11 = this.f59100c;
        return (((((this.f59098a.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f59101d.hashCode();
    }

    public String toString() {
        return "InternalAccessToken{accessToken='" + yc.a.a(this.f59098a) + "', expiresInMillis=" + this.f59099b + ", issuedClientTimeMillis=" + this.f59100c + ", refreshToken='" + yc.a.a(this.f59101d) + "'}";
    }
}
