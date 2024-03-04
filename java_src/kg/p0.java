package kg;

import java.nio.ByteOrder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class p0 extends g1 {

    /* renamed from: z  reason: collision with root package name */
    final io.grpc.netty.shaded.io.netty.util.v<j> f53876z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(o oVar, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        super(oVar);
        this.f53876z = (io.grpc.netty.shaded.io.netty.util.v) io.grpc.netty.shaded.io.netty.util.internal.s.h(vVar, "leak");
    }

    private void a5(j jVar) {
        this.f53876z.b(jVar);
    }

    private o0 b5(j jVar) {
        return c5(jVar, s2(), this.f53876z);
    }

    @Override // kg.g1, kg.a, kg.j
    public j B() {
        return b5(super.B());
    }

    @Override // kg.g1, kg.a, kg.j
    public j I1(int i9) {
        return b5(super.I1(i9));
    }

    @Override // kg.g1, kg.a, kg.j
    public j K1(int i9) {
        return b5(super.K1(i9));
    }

    @Override // kg.g1, kg.a, kg.j
    public j V1() {
        return b5(super.V1());
    }

    @Override // kg.g1, kg.a, kg.j
    public j W1() {
        return b5(super.W1());
    }

    protected o0 c5(j jVar, j jVar2, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        return new o0(jVar, jVar2, vVar);
    }

    @Override // kg.g1, kg.a, kg.j
    public j f0() {
        return b5(super.f0());
    }

    @Override // kg.g1, kg.a, kg.j
    public j m2() {
        return b5(super.m2());
    }

    @Override // kg.g1, kg.a, kg.j
    public j n2(int i9, int i10) {
        return b5(super.n2(i9, i10));
    }

    @Override // kg.g1, kg.e, io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        j s22 = s2();
        if (super.release()) {
            a5(s22);
            return true;
        }
        return false;
    }

    @Override // kg.g1, kg.a
    public j v3(int i9, int i10) {
        return b5(super.v3(i9, i10));
    }

    @Override // kg.g1, kg.a, kg.j
    public j w1(ByteOrder byteOrder) {
        return v1() == byteOrder ? this : b5(super.w1(byteOrder));
    }

    @Override // kg.g1, kg.e, io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        j s22 = s2();
        if (super.release(i9)) {
            a5(s22);
            return true;
        }
        return false;
    }
}
