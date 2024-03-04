package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class f extends c {

    /* renamed from: j  reason: collision with root package name */
    private final j f53807j;

    /* renamed from: k  reason: collision with root package name */
    private final int f53808k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(j jVar, int i9, int i10) {
        super(i10);
        I3(i9, i10, jVar);
        if (jVar instanceof f) {
            f fVar = (f) jVar;
            this.f53807j = fVar.f53807j;
            this.f53808k = fVar.f53808k + i9;
        } else if (jVar instanceof q) {
            this.f53807j = jVar.s2();
            this.f53808k = i9;
        } else {
            this.f53807j = jVar;
            this.f53808k = i9;
        }
        K3(i10);
        L2(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void I3(int i9, int i10, j jVar) {
        if (io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i10, jVar.F())) {
            throw new IndexOutOfBoundsException(jVar + ".slice(" + i9 + ", " + i10 + ')');
        }
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        g3(i9, i11);
        s2().A0(J3(i9), jVar, i10, i11);
        return this;
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        g3(i9, i11);
        s2().E0(J3(i9), bArr, i10, i11);
        return this;
    }

    @Override // kg.a, kg.j
    public int F0(int i9) {
        g3(i9, 4);
        return s2().F0(J3(i9));
    }

    @Override // kg.a, kg.j
    public long G0(int i9) {
        g3(i9, 8);
        return s2().G0(J3(i9));
    }

    @Override // kg.j
    public j I(int i9) {
        throw new UnsupportedOperationException("sliced buffer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int J3(int i9) {
        return i9 + this.f53808k;
    }

    void K3(int i9) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return s2().u0(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return s2().getInt(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return s2().F0(J3(i9));
    }

    @Override // kg.j
    public k P() {
        return s2().P();
    }

    @Override // kg.a, kg.j
    public short P0(int i9) {
        g3(i9, 2);
        return s2().P0(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return s2().getLong(J3(i9));
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        g3(i9, i10);
        return s2().Q(J3(i9), i10);
    }

    @Override // kg.a, kg.j
    public short Q0(int i9) {
        g3(i9, 2);
        return s2().Q0(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return s2().G0(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return s2().P0(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return s2().Q0(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        return s2().X0(J3(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        s2().X1(J3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        s2().e2(J3(i9), i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        s2().f2(J3(i9), i10);
    }

    @Override // kg.a, kg.j
    public int X0(int i9) {
        g3(i9, 3);
        return s2().X0(J3(i9));
    }

    @Override // kg.a, kg.j
    public j X1(int i9, int i10) {
        g3(i9, 1);
        s2().X1(J3(i9), i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        s2().g2(J3(i9), j10);
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        g3(i9, i10);
        return s2().Y1(J3(i9), scatteringByteChannel, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        s2().h2(J3(i9), i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        g3(i9, byteBuffer.remaining());
        s2().Z1(J3(i9), byteBuffer);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        s2().i2(J3(i9), i10);
    }

    @Override // kg.j
    public boolean a1() {
        return s2().a1();
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        g3(i9, i11);
        s2().a2(J3(i9), jVar, i10, i11);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        s2().j2(J3(i9), i10);
    }

    @Override // kg.j
    public boolean b1() {
        return s2().b1();
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        g3(i9, i11);
        s2().b2(J3(i9), bArr, i10, i11);
        return this;
    }

    @Override // kg.a, kg.j
    public j e2(int i9, int i10) {
        g3(i9, 4);
        s2().e2(J3(i9), i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j f0() {
        return s2().f0().d2(J3(Q1()), J3(K2()));
    }

    @Override // kg.a, kg.j
    public j f2(int i9, int i10) {
        g3(i9, 4);
        s2().f2(J3(i9), i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j g2(int i9, long j10) {
        g3(i9, 8);
        s2().g2(J3(i9), j10);
        return this;
    }

    @Override // kg.a, kg.j
    public int getInt(int i9) {
        g3(i9, 4);
        return s2().getInt(J3(i9));
    }

    @Override // kg.a, kg.j
    public long getLong(int i9) {
        g3(i9, 8);
        return s2().getLong(J3(i9));
    }

    @Override // kg.j
    public boolean h1() {
        return s2().h1();
    }

    @Override // kg.a, kg.j
    public j h2(int i9, int i10) {
        g3(i9, 3);
        s2().h2(J3(i9), i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j i2(int i9, int i10) {
        g3(i9, 2);
        s2().i2(J3(i9), i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j j2(int i9, int i10) {
        g3(i9, 2);
        s2().j2(J3(i9), i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j n2(int i9, int i10) {
        g3(i9, i10);
        return s2().n2(J3(i9), i10);
    }

    @Override // kg.a, kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        g3(i9, i10);
        int o02 = s2().o0(J3(i9), i10, gVar);
        int i11 = this.f53808k;
        if (o02 >= i11) {
            return o02 - i11;
        }
        return -1;
    }

    @Override // kg.j
    public long p1() {
        return s2().p1() + this.f53808k;
    }

    @Override // kg.c, kg.j
    public ByteBuffer r1(int i9, int i10) {
        g3(i9, i10);
        return s2().r1(J3(i9), i10);
    }

    @Override // kg.j
    public int s1() {
        return s2().s1();
    }

    @Override // kg.j
    public j s2() {
        return this.f53807j;
    }

    @Override // kg.a, kg.j
    public byte u0(int i9) {
        g3(i9, 1);
        return s2().u0(J3(i9));
    }

    @Override // kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        g3(i9, i10);
        return s2().u1(J3(i9), i10);
    }

    @Override // kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        g3(i9, i10);
        return s2().v0(J3(i9), gatheringByteChannel, i10);
    }

    @Override // kg.j
    @Deprecated
    public ByteOrder v1() {
        return s2().v1();
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        g3(i9, i10);
        s2().w0(J3(i9), outputStream, i10);
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        return s2().y();
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        g3(i9, byteBuffer.remaining());
        s2().y0(J3(i9), byteBuffer);
        return this;
    }

    @Override // kg.j
    public int z() {
        return J3(s2().z());
    }
}
