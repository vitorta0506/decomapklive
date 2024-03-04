package kg;
/* loaded from: classes5.dex */
final class d1 extends g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(a aVar) {
        super(aVar);
    }

    private static long S2(a aVar, int i9) {
        return aVar.p1() + i9;
    }

    @Override // kg.g
    protected int M2(a aVar, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.E(S2(aVar, i9));
    }

    @Override // kg.g
    protected long N2(a aVar, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.I(S2(aVar, i9));
    }

    @Override // kg.g
    protected short O2(a aVar, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.M(S2(aVar, i9));
    }

    @Override // kg.g
    protected void P2(a aVar, int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.G0(S2(aVar, i9), i10);
    }

    @Override // kg.g
    protected void Q2(a aVar, int i9, long j10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.I0(S2(aVar, i9), j10);
    }

    @Override // kg.g
    protected void R2(a aVar, int i9, short s10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.L0(S2(aVar, i9), s10);
    }
}
