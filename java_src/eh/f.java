package eh;

import eh.j0;
import java.util.Objects;
/* loaded from: classes5.dex */
final class f extends j0.d {

    /* renamed from: a  reason: collision with root package name */
    private final String f38741a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.e f38742b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f38743c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, io.grpc.e eVar, boolean z10) {
        Objects.requireNonNull(str, "Null target");
        this.f38741a = str;
        Objects.requireNonNull(eVar, "Null channelCredentials");
        this.f38742b = eVar;
        this.f38743c = z10;
    }

    @Override // eh.j0.d
    io.grpc.e a() {
        return this.f38742b;
    }

    @Override // eh.j0.d
    String c() {
        return this.f38741a;
    }

    @Override // eh.j0.d
    boolean d() {
        return this.f38743c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j0.d) {
            j0.d dVar = (j0.d) obj;
            return this.f38741a.equals(dVar.c()) && this.f38742b.equals(dVar.a()) && this.f38743c == dVar.d();
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f38741a.hashCode() ^ 1000003) * 1000003) ^ this.f38742b.hashCode()) * 1000003) ^ (this.f38743c ? 1231 : 1237);
    }

    public String toString() {
        return "ServerInfo{target=" + this.f38741a + ", channelCredentials=" + this.f38742b + ", useProtocolV3=" + this.f38743c + "}";
    }
}
