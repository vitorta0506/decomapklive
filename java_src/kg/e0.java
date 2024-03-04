package kg;
/* loaded from: classes5.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f53806a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(d0 d0Var) {
        this.f53806a = d0Var;
    }

    public int a() {
        return this.f53806a.A();
    }

    public int b() {
        return this.f53806a.L();
    }

    public int c() {
        return this.f53806a.M();
    }

    public int d() {
        return this.f53806a.N();
    }

    public int e() {
        return this.f53806a.O();
    }

    public int f() {
        return this.f53806a.P();
    }

    public long g() {
        return this.f53806a.S();
    }

    public long h() {
        return this.f53806a.T();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(256);
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.m(this));
        sb2.append("(usedHeapMemory: ");
        sb2.append(h());
        sb2.append("; usedDirectMemory: ");
        sb2.append(g());
        sb2.append("; numHeapArenas: ");
        sb2.append(d());
        sb2.append("; numDirectArenas: ");
        sb2.append(c());
        sb2.append("; smallCacheSize: ");
        sb2.append(f());
        sb2.append("; normalCacheSize: ");
        sb2.append(b());
        sb2.append("; numThreadLocalCaches: ");
        sb2.append(e());
        sb2.append("; chunkSize: ");
        sb2.append(a());
        sb2.append(')');
        return sb2.toString();
    }
}
