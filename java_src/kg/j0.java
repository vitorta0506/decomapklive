package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class j0 extends c0<ByteBuffer> {

    /* renamed from: y  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.r<j0> f53820y = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

    /* renamed from: x  reason: collision with root package name */
    private long f53821x;

    /* loaded from: classes5.dex */
    static class a implements r.b<j0> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
        /* renamed from: b */
        public j0 a(r.a<j0> aVar) {
            return new j0(aVar, 0, null);
        }
    }

    /* synthetic */ j0(r.a aVar, int i9, a aVar2) {
        this(aVar, i9);
    }

    private long P3(int i9) {
        return this.f53821x + i9;
    }

    private void Q3() {
        this.f53821x = io.grpc.netty.shaded.io.netty.util.internal.t.u((ByteBuffer) this.f53763q) + this.f53764r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j0 R3(int i9) {
        j0 a10 = f53820y.a();
        a10.O3(i9);
        return a10;
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        c1.g(this, P3(i9), i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        c1.h(this, P3(i9), i9, bArr, i10, i11);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.c0
    public void I3(w<ByteBuffer> wVar, ByteBuffer byteBuffer, long j10, int i9, int i10, int i11, b0 b0Var) {
        super.I3(wVar, byteBuffer, j10, i9, i10, i11, b0Var);
        Q3();
    }

    @Override // kg.a, kg.j
    public j J2(int i9) {
        n0(i9);
        int i10 = this.f53718b;
        c1.P(P3(i10), i9);
        this.f53718b = i10 + i9;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.c0
    public void K3(w<ByteBuffer> wVar, int i9) {
        super.K3(wVar, i9);
        Q3();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return c1.b(P3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return c1.i(P3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return c1.k(P3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return c1.m(P3(i9));
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        return c1.a(this, P3(i9), i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return c1.o(P3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return c1.q(P3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return c1.s(P3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.c0
    /* renamed from: S3 */
    public ByteBuffer M3(ByteBuffer byteBuffer) {
        return byteBuffer.duplicate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        return c1.u(P3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        c1.x(P3(i9), (byte) i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        c1.C(P3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        c1.E(P3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        c1.G(P3(i9), j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        c1.I(P3(i9), i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        c1.z(this, P3(i9), i9, byteBuffer);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        c1.K(P3(i9), i10);
    }

    @Override // kg.j
    public boolean a1() {
        return false;
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        c1.A(this, P3(i9), i9, jVar, i10, i11);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        c1.M(P3(i9), i10);
    }

    @Override // kg.j
    public boolean b1() {
        return true;
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        c1.B(this, P3(i9), i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public boolean h1() {
        return true;
    }

    @Override // kg.a, kg.j
    public j k2(int i9, int i10) {
        f3(i9, i10);
        c1.P(P3(i9), i10);
        return this;
    }

    @Override // kg.j
    public long p1() {
        p3();
        return this.f53821x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public r0 u3() {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.i0()) {
            return new d1(this);
        }
        return super.u3();
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        c1.e(this, P3(i9), i9, outputStream, i10);
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        throw new UnsupportedOperationException("direct buffer");
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        c1.f(this, P3(i9), i9, byteBuffer);
        return this;
    }

    @Override // kg.j
    public int z() {
        throw new UnsupportedOperationException("direct buffer");
    }

    private j0(r.a<j0> aVar, int i9) {
        super(aVar, i9);
    }
}
