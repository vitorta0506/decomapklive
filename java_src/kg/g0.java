package kg;

import io.grpc.netty.shaded.io.netty.util.internal.r;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g0 extends d {

    /* renamed from: q  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.r<g0> f53813q = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

    /* loaded from: classes5.dex */
    static class a implements r.b<g0> {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
        /* renamed from: b */
        public g0 a(r.a<g0> aVar) {
            return new g0(aVar, null);
        }
    }

    /* synthetic */ g0(r.a aVar, a aVar2) {
        this(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g0 J3(kg.a aVar, j jVar, int i9, int i10) {
        g0 a10 = f53813q.a();
        a10.G3(aVar, jVar, i9, i10, aVar.m1());
        a10.l1();
        a10.s3();
        return a10;
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        s2().A0(i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        s2().E0(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public int F() {
        return s2().F();
    }

    @Override // kg.a, kg.j
    public int F0(int i9) {
        return s2().F0(i9);
    }

    @Override // kg.a, kg.j
    public long G0(int i9) {
        return s2().G0(i9);
    }

    @Override // kg.j
    public j I(int i9) {
        s2().I(i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return s2().M2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return s2().N2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return s2().O2(i9);
    }

    @Override // kg.a, kg.j
    public short P0(int i9) {
        return s2().P0(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return s2().P2(i9);
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        return s2().Q(i9, i10);
    }

    @Override // kg.a, kg.j
    public short Q0(int i9) {
        return s2().Q0(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return s2().Q2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return s2().R2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return s2().S2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        return s2().T2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        s2().U2(i9, i10);
    }

    @Override // kg.a, kg.j
    public j V1() {
        return J3(s2(), this, Q1(), K2());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        s2().V2(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        s2().W2(i9, i10);
    }

    @Override // kg.a, kg.j
    public int X0(int i9) {
        return s2().X0(i9);
    }

    @Override // kg.a, kg.j
    public j X1(int i9, int i10) {
        s2().X1(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        s2().X2(i9, j10);
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        return s2().Y1(i9, scatteringByteChannel, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        s2().Y2(i9, i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        s2().Z1(i9, byteBuffer);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        s2().Z2(i9, i10);
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        s2().a2(i9, jVar, i10, i11);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        s2().a3(i9, i10);
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        s2().b2(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.a, kg.j
    public j e2(int i9, int i10) {
        s2().e2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j f0() {
        return F3().d2(Q1(), K2());
    }

    @Override // kg.a, kg.j
    public j f2(int i9, int i10) {
        s2().f2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j g2(int i9, long j10) {
        s2().g2(i9, j10);
        return this;
    }

    @Override // kg.a, kg.j
    public int getInt(int i9) {
        return s2().getInt(i9);
    }

    @Override // kg.a, kg.j
    public long getLong(int i9) {
        return s2().getLong(i9);
    }

    @Override // kg.a, kg.j
    public j h2(int i9, int i10) {
        s2().h2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j i2(int i9, int i10) {
        s2().i2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j j2(int i9, int i10) {
        s2().j2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        return s2().o0(i9, i10, gVar);
    }

    @Override // kg.j
    public long p1() {
        return s2().p1();
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        return s2().r1(i9, i10);
    }

    @Override // kg.a, kg.j
    public byte u0(int i9) {
        return s2().u0(i9);
    }

    @Override // kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        return s2().u1(i9, i10);
    }

    @Override // kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        return s2().v0(i9, gatheringByteChannel, i10);
    }

    @Override // kg.a
    public j v3(int i9, int i10) {
        return i0.K3(s2(), this, i9, i10);
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        s2().w0(i9, outputStream, i10);
        return this;
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        s2().y0(i9, byteBuffer);
        return this;
    }

    @Override // kg.j
    public int z() {
        return s2().z();
    }

    private g0(r.a<g0> aVar) {
        super(aVar);
    }
}
