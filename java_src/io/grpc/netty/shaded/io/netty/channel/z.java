package io.grpc.netty.shaded.io.netty.channel;
/* loaded from: classes5.dex */
public final class z extends c {

    /* renamed from: e  reason: collision with root package name */
    private final e f43841e;

    public z(e eVar) {
        this(eVar, 4);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c
    protected kg.j f(kg.k kVar, kg.j jVar, kg.j jVar2) {
        if (jVar instanceof kg.o) {
            kg.o oVar = (kg.o) jVar;
            oVar.I3(true, jVar2);
            return oVar;
        }
        return h(kVar, jVar, jVar2);
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.c
    protected kg.j r() {
        return kg.s0.f53902d;
    }

    public void w(Throwable th2) {
        p(this.f43841e, th2);
    }

    public kg.j x(int i9, y yVar) {
        return q(this.f43841e.P(), i9, yVar);
    }

    public z(e eVar, int i9) {
        this(eVar, i9, false);
    }

    public z(e eVar, int i9, boolean z10) {
        super(z10 ? eVar : null, i9);
        this.f43841e = (e) io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "channel");
    }
}
