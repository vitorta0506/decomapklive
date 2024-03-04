package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
/* loaded from: classes5.dex */
public class w0 extends e {

    /* renamed from: n  reason: collision with root package name */
    private final k f53954n;

    /* renamed from: o  reason: collision with root package name */
    byte[] f53955o;

    /* renamed from: p  reason: collision with root package name */
    private ByteBuffer f53956p;

    public w0(k kVar, int i9, int i10) {
        super(i10);
        if (i9 <= i10) {
            this.f53954n = (k) io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "alloc");
            J3(F3(i9));
            d2(0, 0);
            return;
        }
        throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    private int H3(int i9, GatheringByteChannel gatheringByteChannel, int i10, boolean z10) throws IOException {
        ByteBuffer wrap;
        p3();
        if (z10) {
            wrap = I3();
        } else {
            wrap = ByteBuffer.wrap(this.f53955o);
        }
        return gatheringByteChannel.write((ByteBuffer) wrap.clear().position(i9).limit(i9 + i10));
    }

    private ByteBuffer I3() {
        ByteBuffer byteBuffer = this.f53956p;
        if (byteBuffer == null) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f53955o);
            this.f53956p = wrap;
            return wrap;
        }
        return byteBuffer;
    }

    private void J3(byte[] bArr) {
        this.f53955o = bArr;
        this.f53956p = null;
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        d3(i9, i11, i10, jVar.F());
        if (jVar.b1()) {
            io.grpc.netty.shaded.io.netty.util.internal.t.q(this.f53955o, i9, jVar.p1() + i10, i11);
        } else if (jVar.a1()) {
            E0(i9, jVar.y(), jVar.z() + i10, i11);
        } else {
            jVar.b2(i10, this.f53955o, i9, i11);
        }
        return this;
    }

    @Override // kg.e
    protected void C3() {
        G3(this.f53955o);
        this.f53955o = io.grpc.netty.shaded.io.netty.util.internal.h.f45065b;
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        d3(i9, i11, i10, bArr.length);
        System.arraycopy(this.f53955o, i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public int F() {
        return this.f53955o.length;
    }

    @Override // kg.a, kg.j
    public int F0(int i9) {
        p3();
        return O2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] F3(int i9) {
        return new byte[i9];
    }

    @Override // kg.a, kg.j
    public long G0(int i9) {
        p3();
        return Q2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G3(byte[] bArr) {
    }

    @Override // kg.j
    public j I(int i9) {
        i3(i9);
        byte[] bArr = this.f53955o;
        int length = bArr.length;
        if (i9 == length) {
            return this;
        }
        if (i9 <= length) {
            z3(i9);
            length = i9;
        }
        byte[] F3 = F3(i9);
        System.arraycopy(bArr, 0, F3, 0, length);
        J3(F3);
        G3(bArr);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return s.a(this.f53955o, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return s.b(this.f53955o, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return s.c(this.f53955o, i9);
    }

    @Override // kg.j
    public k P() {
        return this.f53954n;
    }

    @Override // kg.a, kg.j
    public short P0(int i9) {
        p3();
        return R2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return s.d(this.f53955o, i9);
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        f3(i9, i10);
        return P().f(i10, m1()).B2(this.f53955o, i9, i10);
    }

    @Override // kg.a, kg.j
    public short Q0(int i9) {
        p3();
        return S2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return s.e(this.f53955o, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return s.f(this.f53955o, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return s.g(this.f53955o, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        return s.h(this.f53955o, i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        s.i(this.f53955o, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        s.j(this.f53955o, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        s.k(this.f53955o, i9, i10);
    }

    @Override // kg.a, kg.j
    public int X0(int i9) {
        p3();
        return T2(i9);
    }

    @Override // kg.a, kg.j
    public j X1(int i9, int i10) {
        p3();
        U2(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        s.l(this.f53955o, i9, j10);
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        p3();
        try {
            return scatteringByteChannel.read((ByteBuffer) I3().clear().position(i9).limit(i9 + i10));
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        s.m(this.f53955o, i9, i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        p3();
        byteBuffer.get(this.f53955o, i9, byteBuffer.remaining());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        s.n(this.f53955o, i9, i10);
    }

    @Override // kg.j
    public boolean a1() {
        return true;
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        n3(i9, i11, i10, jVar.F());
        if (jVar.b1()) {
            io.grpc.netty.shaded.io.netty.util.internal.t.p(jVar.p1() + i10, this.f53955o, i9, i11);
        } else if (jVar.a1()) {
            b2(i9, jVar.y(), jVar.z() + i10, i11);
        } else {
            jVar.E0(i10, this.f53955o, i9, i11);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        s.o(this.f53955o, i9, i10);
    }

    @Override // kg.j
    public boolean b1() {
        return false;
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        n3(i9, i11, i10, bArr.length);
        System.arraycopy(bArr, i10, this.f53955o, i9, i11);
        return this;
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        f3(i9, i10);
        return (ByteBuffer) I3().clear().position(i9).limit(i9 + i10);
    }

    @Override // kg.a, kg.j
    public j e2(int i9, int i10) {
        p3();
        V2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j f2(int i9, int i10) {
        p3();
        W2(i9, i10);
        return this;
    }

    @Override // kg.j
    public final boolean g1() {
        return true;
    }

    @Override // kg.a, kg.j
    public j g2(int i9, long j10) {
        p3();
        X2(i9, j10);
        return this;
    }

    @Override // kg.a, kg.j
    public int getInt(int i9) {
        p3();
        return N2(i9);
    }

    @Override // kg.a, kg.j
    public long getLong(int i9) {
        p3();
        return P2(i9);
    }

    @Override // kg.j
    public boolean h1() {
        return false;
    }

    @Override // kg.a, kg.j
    public j h2(int i9, int i10) {
        p3();
        Y2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j i2(int i9, int i10) {
        p3();
        Z2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j j2(int i9, int i10) {
        p3();
        a3(i9, i10);
        return this;
    }

    @Override // kg.j
    public long p1() {
        throw new UnsupportedOperationException();
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        p3();
        return ByteBuffer.wrap(this.f53955o, i9, i10).slice();
    }

    @Override // kg.j
    public int s1() {
        return 1;
    }

    @Override // kg.j
    public j s2() {
        return null;
    }

    @Override // kg.a, kg.j
    public byte u0(int i9) {
        p3();
        return M2(i9);
    }

    @Override // kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        return new ByteBuffer[]{r1(i9, i10)};
    }

    @Override // kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        p3();
        return H3(i9, gatheringByteChannel, i10, false);
    }

    @Override // kg.j
    public ByteOrder v1() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        p3();
        outputStream.write(this.f53955o, i9, i10);
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        p3();
        return this.f53955o;
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        p3();
        byteBuffer.put(this.f53955o, i9, byteBuffer.remaining());
        return this;
    }

    @Override // kg.a, kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        l3(i9);
        int H3 = H3(this.f53717a, gatheringByteChannel, i9, true);
        this.f53717a += H3;
        return H3;
    }

    @Override // kg.j
    public int z() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public w0(k kVar, byte[] bArr, int i9) {
        super(i9);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "alloc");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(bArr, "initialArray");
        if (bArr.length <= i9) {
            this.f53954n = kVar;
            J3(bArr);
            d2(0, bArr.length);
            return;
        }
        throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(bArr.length), Integer.valueOf(i9)));
    }
}
