package eh;

import java.net.InetAddress;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class k extends c1 {

    /* renamed from: a  reason: collision with root package name */
    private final InetAddress f38803a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38804b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(InetAddress inetAddress, int i9) {
        Objects.requireNonNull(inetAddress, "Null addressPrefix");
        this.f38803a = inetAddress;
        this.f38804b = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.c1
    public InetAddress a() {
        return this.f38803a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.c1
    public int c() {
        return this.f38804b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c1) {
            c1 c1Var = (c1) obj;
            return this.f38803a.equals(c1Var.a()) && this.f38804b == c1Var.c();
        }
        return false;
    }

    public int hashCode() {
        return ((this.f38803a.hashCode() ^ 1000003) * 1000003) ^ this.f38804b;
    }

    public String toString() {
        return "CidrRange{addressPrefix=" + this.f38803a + ", prefixLen=" + this.f38804b + "}";
    }
}
