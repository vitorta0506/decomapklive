package kg;
/* loaded from: classes5.dex */
final class e1 extends g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e1(a aVar) {
        super(aVar);
    }

    private static int S2(j jVar, int i9) {
        return jVar.z() + i9;
    }

    @Override // kg.g
    protected int M2(a aVar, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.G(aVar.y(), S2(aVar, i9));
    }

    @Override // kg.g
    protected long N2(a aVar, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.J(aVar.y(), S2(aVar, i9));
    }

    @Override // kg.g
    protected short O2(a aVar, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.N(aVar.y(), S2(aVar, i9));
    }

    @Override // kg.g
    protected void P2(a aVar, int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.H0(aVar.y(), S2(aVar, i9), i10);
    }

    @Override // kg.g
    protected void Q2(a aVar, int i9, long j10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.J0(aVar.y(), S2(aVar, i9), j10);
    }

    @Override // kg.g
    protected void R2(a aVar, int i9, short s10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.M0(aVar.y(), S2(aVar, i9), s10);
    }
}
