package ig;

import ig.o0;
/* loaded from: classes5.dex */
final class i0 extends kg.p implements o0.c {

    /* renamed from: b  reason: collision with root package name */
    private final k0 f41197b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f41198c;

    /* renamed from: d  reason: collision with root package name */
    private final qh.b f41199d;

    /* renamed from: e  reason: collision with root package name */
    private io.grpc.netty.shaded.io.netty.channel.y f41200e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(k0 k0Var, kg.j jVar, boolean z10) {
        super(jVar);
        this.f41197b = k0Var;
        this.f41198c = z10;
        this.f41199d = qh.c.f();
    }

    @Override // ig.o0.c
    public io.grpc.netty.shaded.io.netty.channel.y a() {
        return this.f41200e;
    }

    @Override // ig.o0.c
    public void b(io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f41200e = yVar;
    }

    @Override // ig.o0.c
    public final void e(io.grpc.netty.shaded.io.netty.channel.e eVar) {
        eVar.c(this, this.f41200e);
    }

    public boolean equals(Object obj) {
        if (obj == null || !obj.getClass().equals(i0.class)) {
            return false;
        }
        i0 i0Var = (i0) obj;
        return i0Var.f41197b.equals(this.f41197b) && i0Var.f41198c == this.f41198c && i0Var.content().equals(content());
    }

    public int hashCode() {
        int hashCode = (content().hashCode() * 31) + this.f41197b.hashCode();
        return this.f41198c ? -hashCode : hashCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.f41198c;
    }

    public qh.b k() {
        return this.f41199d;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: l */
    public i0 retain() {
        super.h();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0 n() {
        return this.f41197b;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: o */
    public i0 touch(Object obj) {
        super.i(obj);
        return this;
    }

    public String toString() {
        return i0.class.getSimpleName() + "(streamId=" + this.f41197b.G() + ", endStream=" + this.f41198c + ", content=" + content() + ")";
    }
}
