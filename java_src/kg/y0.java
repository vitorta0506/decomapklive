package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public class y0 extends u0 {

    /* renamed from: s  reason: collision with root package name */
    long f53967s;

    public y0(k kVar, int i9, int i10) {
        super(kVar, i9, i10);
    }

    @Override // kg.u0, kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        c1.g(this, N3(i9), i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.u0
    void I3(int i9, OutputStream outputStream, int i10, boolean z10) throws IOException {
        c1.e(this, N3(i9), i9, outputStream, i10);
    }

    @Override // kg.a, kg.j
    public j J2(int i9) {
        n0(i9);
        int i10 = this.f53718b;
        c1.P(N3(i10), i9);
        this.f53718b = i10 + i9;
        return this;
    }

    @Override // kg.u0
    void J3(int i9, ByteBuffer byteBuffer, boolean z10) {
        c1.f(this, N3(i9), i9, byteBuffer);
    }

    @Override // kg.u0
    void K3(int i9, byte[] bArr, int i10, int i11, boolean z10) {
        c1.h(this, N3(i9), i9, bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public byte M2(int i9) {
        return c1.b(N3(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.u0
    public final void M3(ByteBuffer byteBuffer, boolean z10) {
        super.M3(byteBuffer, z10);
        this.f53967s = io.grpc.netty.shaded.io.netty.util.internal.t.u(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public int N2(int i9) {
        return c1.i(N3(i9));
    }

    final long N3(int i9) {
        return this.f53967s + i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public int O2(int i9) {
        return c1.k(N3(i9));
    }

    @Override // kg.u0, kg.a, kg.j
    public short P0(int i9) {
        f3(i9, 2);
        return R2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public long P2(int i9) {
        return c1.m(N3(i9));
    }

    @Override // kg.u0, kg.j
    public j Q(int i9, int i10) {
        return c1.a(this, N3(i9), i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public long Q2(int i9) {
        return c1.o(N3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public short R2(int i9) {
        return c1.q(N3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public short S2(int i9) {
        return c1.s(N3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public int T2(int i9) {
        return c1.u(N3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public void U2(int i9, int i10) {
        c1.x(N3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public void V2(int i9, int i10) {
        c1.C(N3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public void W2(int i9, int i10) {
        c1.E(N3(i9), i10);
    }

    @Override // kg.u0, kg.a, kg.j
    public int X0(int i9) {
        f3(i9, 3);
        return T2(i9);
    }

    @Override // kg.u0, kg.a, kg.j
    public j X1(int i9, int i10) {
        e3(i9);
        U2(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public void X2(int i9, long j10) {
        c1.G(N3(i9), j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public void Y2(int i9, int i10) {
        c1.I(N3(i9), i10);
    }

    @Override // kg.u0, kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        c1.z(this, N3(i9), i9, byteBuffer);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public void Z2(int i9, int i10) {
        c1.K(N3(i9), i10);
    }

    @Override // kg.u0, kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        c1.A(this, N3(i9), i9, jVar, i10, i11);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.u0, kg.a
    public void a3(int i9, int i10) {
        c1.M(N3(i9), i10);
    }

    @Override // kg.u0, kg.j
    public boolean b1() {
        return true;
    }

    @Override // kg.u0, kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        c1.B(this, N3(i9), i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.u0, kg.a, kg.j
    public j e2(int i9, int i10) {
        f3(i9, 4);
        V2(i9, i10);
        return this;
    }

    @Override // kg.u0, kg.a, kg.j
    public j g2(int i9, long j10) {
        f3(i9, 8);
        X2(i9, j10);
        return this;
    }

    @Override // kg.u0, kg.a, kg.j
    public int getInt(int i9) {
        f3(i9, 4);
        return N2(i9);
    }

    @Override // kg.u0, kg.a, kg.j
    public long getLong(int i9) {
        f3(i9, 8);
        return P2(i9);
    }

    @Override // kg.u0, kg.a, kg.j
    public j h2(int i9, int i10) {
        f3(i9, 3);
        Y2(i9, i10);
        return this;
    }

    @Override // kg.u0, kg.a, kg.j
    public j i2(int i9, int i10) {
        f3(i9, 2);
        Z2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j k2(int i9, int i10) {
        f3(i9, i10);
        c1.P(N3(i9), i10);
        return this;
    }

    @Override // kg.u0, kg.j
    public long p1() {
        p3();
        return this.f53967s;
    }

    @Override // kg.u0, kg.a, kg.j
    public byte u0(int i9) {
        e3(i9);
        return M2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public r0 u3() {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.i0()) {
            return new d1(this);
        }
        return super.u3();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public y0(k kVar, ByteBuffer byteBuffer, int i9) {
        super(kVar, byteBuffer, i9, false, true);
    }
}
