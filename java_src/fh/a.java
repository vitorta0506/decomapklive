package fh;

import java.net.InetAddress;
import java.util.Objects;
/* loaded from: classes5.dex */
final class a extends g {

    /* renamed from: a  reason: collision with root package name */
    private final InetAddress f39725a;

    /* renamed from: b  reason: collision with root package name */
    private final int f39726b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(InetAddress inetAddress, int i9) {
        Objects.requireNonNull(inetAddress, "Null addressPrefix");
        this.f39725a = inetAddress;
        this.f39726b = i9;
    }

    @Override // fh.g
    InetAddress a() {
        return this.f39725a;
    }

    @Override // fh.g
    int c() {
        return this.f39726b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return this.f39725a.equals(gVar.a()) && this.f39726b == gVar.c();
        }
        return false;
    }

    public int hashCode() {
        return ((this.f39725a.hashCode() ^ 1000003) * 1000003) ^ this.f39726b;
    }

    public String toString() {
        return "CidrMatcher{addressPrefix=" + this.f39725a + ", prefixLen=" + this.f39726b + "}";
    }
}
