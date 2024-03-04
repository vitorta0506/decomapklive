package kg;

import java.nio.ByteOrder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class o0 extends f1 {

    /* renamed from: b  reason: collision with root package name */
    private final j f53873b;

    /* renamed from: c  reason: collision with root package name */
    final io.grpc.netty.shaded.io.netty.util.v<j> f53874c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(j jVar, j jVar2, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        super(jVar);
        this.f53873b = (j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar2, "trackedByteBuf");
        this.f53874c = (io.grpc.netty.shaded.io.netty.util.v) io.grpc.netty.shaded.io.netty.util.internal.s.h(vVar, "leak");
    }

    private void M2() {
        this.f53874c.b(this.f53873b);
    }

    private o0 N2(j jVar, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        return O2(jVar, jVar, vVar);
    }

    private o0 P2(j jVar) {
        return O2(jVar, this.f53873b, this.f53874c);
    }

    private static j Q2(j jVar) {
        if (jVar instanceof r0) {
            do {
                jVar = jVar.s2();
            } while (jVar instanceof r0);
            return jVar;
        }
        return jVar;
    }

    private j R2(j jVar) {
        j Q2 = Q2(jVar);
        if (Q2 instanceof d) {
            ((d) Q2).H3(this);
            io.grpc.netty.shaded.io.netty.util.v<j> l10 = a.f53716i.l(jVar);
            return l10 == null ? jVar : N2(jVar, l10);
        }
        return P2(jVar);
    }

    @Override // kg.f1, kg.j
    public j B() {
        return P2(super.B());
    }

    @Override // kg.f1, kg.j
    public j I1(int i9) {
        return R2(super.I1(i9));
    }

    @Override // kg.f1, kg.j
    public j K1(int i9) {
        return P2(super.K1(i9));
    }

    protected o0 O2(j jVar, j jVar2, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        return new o0(jVar, jVar2, vVar);
    }

    @Override // kg.f1, kg.j
    public j V1() {
        return R2(super.V1());
    }

    @Override // kg.f1, kg.j
    public j W1() {
        return R2(super.W1());
    }

    @Override // kg.f1, kg.j
    public j f0() {
        return P2(super.f0());
    }

    @Override // kg.f1, kg.j
    public j m2() {
        return P2(super.m2());
    }

    @Override // kg.f1, kg.j
    public j n2(int i9, int i10) {
        return P2(super.n2(i9, i10));
    }

    @Override // kg.j
    public j q2() {
        return this;
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: r2 */
    public j touch(Object obj) {
        return this;
    }

    @Override // kg.f1, io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        if (super.release()) {
            M2();
            return true;
        }
        return false;
    }

    @Override // kg.f1, kg.j
    public j w1(ByteOrder byteOrder) {
        return v1() == byteOrder ? this : P2(super.w1(byteOrder));
    }

    @Override // kg.f1, io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        if (super.release(i9)) {
            M2();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(j jVar, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        this(jVar, jVar, vVar);
    }
}
