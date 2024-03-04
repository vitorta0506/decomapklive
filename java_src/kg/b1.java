package kg;

import java.nio.ByteOrder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class b1 extends f1 {

    /* renamed from: b  reason: collision with root package name */
    private r0 f53759b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1(j jVar) {
        super(jVar instanceof b1 ? jVar.s2() : jVar);
    }

    @Override // kg.f1, kg.j
    public j B() {
        return this.f53810a.i1() ? this : new b1(this.f53810a.B());
    }

    @Override // kg.f1, kg.j
    public j I1(int i9) {
        return K1(i9);
    }

    @Override // kg.f1, kg.j
    public j K1(int i9) {
        return new b1(this.f53810a.K1(i9));
    }

    @Override // kg.f1, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public j retain() {
        return this;
    }

    @Override // kg.f1, kg.j
    public j U1(int i9) {
        return this;
    }

    @Override // kg.f1, kg.j
    public j V1() {
        return f0();
    }

    @Override // kg.f1, kg.j
    public j W1() {
        return m2();
    }

    @Override // kg.f1, kg.j
    public j f0() {
        return new b1(this.f53810a.f0());
    }

    @Override // kg.f1, kg.j
    public j m2() {
        return new b1(this.f53810a.m2());
    }

    @Override // kg.f1, kg.j
    public j n2(int i9, int i10) {
        return new b1(this.f53810a.n2(i9, i10));
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
        return false;
    }

    @Override // kg.f1, io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return false;
    }

    @Override // kg.f1, kg.j
    public j w1(ByteOrder byteOrder) {
        if (io.grpc.netty.shaded.io.netty.util.internal.s.h(byteOrder, "endianness") == v1()) {
            return this;
        }
        r0 r0Var = this.f53759b;
        if (r0Var == null) {
            r0 r0Var2 = new r0(this);
            this.f53759b = r0Var2;
            return r0Var2;
        }
        return r0Var;
    }
}
