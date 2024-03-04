package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class m0 extends e {

    /* renamed from: n  reason: collision with root package name */
    protected final ByteBuffer f53831n;

    /* renamed from: o  reason: collision with root package name */
    private final k f53832o;

    /* renamed from: p  reason: collision with root package name */
    private ByteBuffer f53833p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(k kVar, ByteBuffer byteBuffer) {
        super(byteBuffer.remaining());
        if (byteBuffer.isReadOnly()) {
            this.f53832o = kVar;
            ByteBuffer order = byteBuffer.slice().order(ByteOrder.BIG_ENDIAN);
            this.f53831n = order;
            L2(order.limit());
            return;
        }
        throw new IllegalArgumentException("must be a readonly buffer: " + io.grpc.netty.shaded.io.netty.util.internal.b0.m(byteBuffer));
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        d3(i9, i11, i10, jVar.F());
        if (jVar.a1()) {
            E0(i9, jVar.y(), jVar.z() + i10, i11);
        } else if (jVar.s1() > 0) {
            ByteBuffer[] u12 = jVar.u1(i10, i11);
            for (ByteBuffer byteBuffer : u12) {
                int remaining = byteBuffer.remaining();
                y0(i9, byteBuffer);
                i9 += remaining;
            }
        } else {
            jVar.a2(i10, this, i9, i11);
        }
        return this;
    }

    @Override // kg.e
    protected void C3() {
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        d3(i9, i11, i10, bArr.length);
        ByteBuffer F3 = F3();
        F3.clear().position(i9).limit(i9 + i11);
        F3.get(bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public int F() {
        return m1();
    }

    @Override // kg.a, kg.j
    public int F0(int i9) {
        p3();
        return O2(i9);
    }

    protected final ByteBuffer F3() {
        ByteBuffer byteBuffer = this.f53833p;
        if (byteBuffer == null) {
            ByteBuffer duplicate = this.f53831n.duplicate();
            this.f53833p = duplicate;
            return duplicate;
        }
        return byteBuffer;
    }

    @Override // kg.a, kg.j
    public long G0(int i9) {
        p3();
        return Q2(i9);
    }

    @Override // kg.j
    public j I(int i9) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return this.f53831n.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return this.f53831n.getInt(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return n.J(this.f53831n.getInt(i9));
    }

    @Override // kg.j
    public k P() {
        return this.f53832o;
    }

    @Override // kg.a, kg.j
    public short P0(int i9) {
        p3();
        return R2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return this.f53831n.getLong(i9);
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        p3();
        try {
            ByteBuffer byteBuffer = (ByteBuffer) F3().clear().position(i9).limit(i9 + i10);
            j h10 = byteBuffer.isDirect() ? P().h(i10) : P().b(i10);
            h10.w2(byteBuffer);
            return h10;
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + (i9 + i10));
        }
    }

    @Override // kg.a, kg.j
    public short Q0(int i9) {
        p3();
        return S2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return n.K(this.f53831n.getLong(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return this.f53831n.getShort(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return n.M(this.f53831n.getShort(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        return (u0(i9 + 2) & UByte.MAX_VALUE) | ((u0(i9) & UByte.MAX_VALUE) << 16) | ((u0(i9 + 1) & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.a, kg.j
    public int X0(int i9) {
        p3();
        return T2(i9);
    }

    @Override // kg.a, kg.j
    public j X1(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void X2(int i9, long j10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public boolean a1() {
        return this.f53831n.hasArray();
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        throw new ReadOnlyBufferException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public boolean b1() {
        return false;
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        p3();
        return (ByteBuffer) F3().clear().position(i9).limit(i9 + i10);
    }

    @Override // kg.a, kg.j
    public j e2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.a, kg.j
    public j f2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public final boolean g1() {
        return true;
    }

    @Override // kg.a, kg.j
    public j g2(int i9, long j10) {
        throw new ReadOnlyBufferException();
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
        return this.f53831n.isDirect();
    }

    @Override // kg.a, kg.j
    public j h2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.a, kg.j
    public boolean i1() {
        return this.f53831n.isReadOnly();
    }

    @Override // kg.a, kg.j
    public j i2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.a, kg.j
    public j j2(int i9, int i10) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.a, kg.j
    public boolean k1(int i9) {
        return false;
    }

    @Override // kg.a, kg.j
    public int m0(int i9, boolean z10) {
        return 1;
    }

    @Override // kg.a, kg.j
    public j n0(int i9) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public long p1() {
        throw new UnsupportedOperationException();
    }

    @Override // kg.a, kg.j
    public boolean q0() {
        return false;
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        f3(i9, i10);
        return (ByteBuffer) this.f53831n.duplicate().position(i9).limit(i9 + i10);
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
        if (i10 == 0) {
            return 0;
        }
        ByteBuffer F3 = F3();
        F3.clear().position(i9).limit(i9 + i10);
        return gatheringByteChannel.write(F3);
    }

    @Override // kg.j
    public ByteOrder v1() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        p3();
        if (i10 == 0) {
            return this;
        }
        if (this.f53831n.hasArray()) {
            outputStream.write(this.f53831n.array(), i9 + this.f53831n.arrayOffset(), i10);
        } else {
            byte[] O = n.O(i10);
            ByteBuffer F3 = F3();
            F3.clear().position(i9);
            F3.get(O, 0, i10);
            outputStream.write(O, 0, i10);
        }
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        return this.f53831n.array();
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        f3(i9, byteBuffer.remaining());
        ByteBuffer F3 = F3();
        F3.clear().position(i9).limit(i9 + byteBuffer.remaining());
        byteBuffer.put(F3);
        return this;
    }

    @Override // kg.j
    public int z() {
        return this.f53831n.arrayOffset();
    }
}
