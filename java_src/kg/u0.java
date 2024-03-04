package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import kotlin.UByte;
/* loaded from: classes5.dex */
public class u0 extends e {

    /* renamed from: n  reason: collision with root package name */
    private final k f53916n;

    /* renamed from: o  reason: collision with root package name */
    ByteBuffer f53917o;

    /* renamed from: p  reason: collision with root package name */
    private ByteBuffer f53918p;

    /* renamed from: q  reason: collision with root package name */
    private int f53919q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f53920r;

    public u0(k kVar, int i9, int i10) {
        super(i10);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "alloc");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "initialCapacity");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i10, "maxCapacity");
        if (i9 <= i10) {
            this.f53916n = kVar;
            M3(F3(i9), false);
            return;
        }
        throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    private int H3(int i9, GatheringByteChannel gatheringByteChannel, int i10, boolean z10) throws IOException {
        ByteBuffer duplicate;
        p3();
        if (i10 == 0) {
            return 0;
        }
        if (z10) {
            duplicate = L3();
        } else {
            duplicate = this.f53917o.duplicate();
        }
        duplicate.clear().position(i9).limit(i9 + i10);
        return gatheringByteChannel.write(duplicate);
    }

    private ByteBuffer L3() {
        ByteBuffer byteBuffer = this.f53918p;
        if (byteBuffer == null) {
            ByteBuffer duplicate = this.f53917o.duplicate();
            this.f53918p = duplicate;
            return duplicate;
        }
        return byteBuffer;
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

    @Override // kg.a, kg.j
    public j A1(OutputStream outputStream, int i9) throws IOException {
        l3(i9);
        I3(this.f53717a, outputStream, i9, true);
        this.f53717a += i9;
        return this;
    }

    @Override // kg.a, kg.j
    public j B1(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        l3(remaining);
        J3(this.f53717a, byteBuffer, true);
        this.f53717a += remaining;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.e
    public void C3() {
        ByteBuffer byteBuffer = this.f53917o;
        if (byteBuffer == null) {
            return;
        }
        this.f53917o = null;
        if (this.f53920r) {
            return;
        }
        G3(byteBuffer);
    }

    @Override // kg.a, kg.j
    public j D1(byte[] bArr, int i9, int i10) {
        l3(i10);
        K3(this.f53717a, bArr, i9, i10, true);
        this.f53717a += i10;
        return this;
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        K3(i9, bArr, i10, i11, false);
        return this;
    }

    @Override // kg.j
    public int F() {
        return this.f53919q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer F3(int i9) {
        return ByteBuffer.allocateDirect(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void G3(ByteBuffer byteBuffer) {
        io.grpc.netty.shaded.io.netty.util.internal.t.z(byteBuffer);
    }

    @Override // kg.j
    public j I(int i9) {
        i3(i9);
        int i10 = this.f53919q;
        if (i9 == i10) {
            return this;
        }
        if (i9 <= i10) {
            z3(i9);
            i10 = i9;
        }
        ByteBuffer byteBuffer = this.f53917o;
        ByteBuffer F3 = F3(i9);
        byteBuffer.position(0).limit(i10);
        F3.position(0).limit(i10);
        F3.put(byteBuffer).clear();
        M3(F3, true);
        return this;
    }

    void I3(int i9, OutputStream outputStream, int i10, boolean z10) throws IOException {
        p3();
        if (i10 == 0) {
            return;
        }
        n.D(P(), z10 ? L3() : this.f53917o.duplicate(), i9, i10, outputStream);
    }

    void J3(int i9, ByteBuffer byteBuffer, boolean z10) {
        ByteBuffer duplicate;
        f3(i9, byteBuffer.remaining());
        if (z10) {
            duplicate = L3();
        } else {
            duplicate = this.f53917o.duplicate();
        }
        duplicate.clear().position(i9).limit(i9 + byteBuffer.remaining());
        byteBuffer.put(duplicate);
    }

    void K3(int i9, byte[] bArr, int i10, int i11, boolean z10) {
        ByteBuffer duplicate;
        d3(i9, i11, i10, bArr.length);
        if (z10) {
            duplicate = L3();
        } else {
            duplicate = this.f53917o.duplicate();
        }
        duplicate.clear().position(i9).limit(i9 + i11);
        duplicate.get(bArr, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public byte M2(int i9) {
        return this.f53917o.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M3(ByteBuffer byteBuffer, boolean z10) {
        ByteBuffer byteBuffer2;
        if (z10 && (byteBuffer2 = this.f53917o) != null) {
            if (this.f53920r) {
                this.f53920r = false;
            } else {
                G3(byteBuffer2);
            }
        }
        this.f53917o = byteBuffer;
        this.f53918p = null;
        this.f53919q = byteBuffer.remaining();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int N2(int i9) {
        return this.f53917o.getInt(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int O2(int i9) {
        return n.J(this.f53917o.getInt(i9));
    }

    @Override // kg.j
    public k P() {
        return this.f53916n;
    }

    @Override // kg.a, kg.j
    public short P0(int i9) {
        p3();
        return R2(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long P2(int i9) {
        return this.f53917o.getLong(i9);
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        p3();
        try {
            return P().i(i10, m1()).w2((ByteBuffer) this.f53917o.duplicate().clear().position(i9).limit(i9 + i10));
        } catch (IllegalArgumentException unused) {
            throw new IndexOutOfBoundsException("Too many bytes to read - Need " + (i9 + i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public long Q2(int i9) {
        return n.K(this.f53917o.getLong(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short R2(int i9) {
        return this.f53917o.getShort(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public short S2(int i9) {
        return n.M(this.f53917o.getShort(i9));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public int T2(int i9) {
        return (u0(i9 + 2) & UByte.MAX_VALUE) | ((u0(i9) & UByte.MAX_VALUE) << 16) | ((u0(i9 + 1) & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void U2(int i9, int i10) {
        this.f53917o.put(i9, (byte) i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void V2(int i9, int i10) {
        this.f53917o.putInt(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void W2(int i9, int i10) {
        this.f53917o.putInt(i9, n.J(i10));
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
        this.f53917o.putLong(i9, j10);
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        p3();
        ByteBuffer L3 = L3();
        L3.clear().position(i9).limit(i9 + i10);
        try {
            return scatteringByteChannel.read(L3);
        } catch (ClosedChannelException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Y2(int i9, int i10) {
        X1(i9, (byte) (i10 >>> 16));
        X1(i9 + 1, (byte) (i10 >>> 8));
        X1(i9 + 2, (byte) i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        p3();
        ByteBuffer L3 = L3();
        if (byteBuffer == L3) {
            byteBuffer = byteBuffer.duplicate();
        }
        L3.clear().position(i9).limit(i9 + byteBuffer.remaining());
        L3.put(byteBuffer);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void Z2(int i9, int i10) {
        this.f53917o.putShort(i9, (short) i10);
    }

    @Override // kg.j
    public boolean a1() {
        return false;
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        n3(i9, i11, i10, jVar.F());
        if (jVar.s1() > 0) {
            ByteBuffer[] u12 = jVar.u1(i10, i11);
            for (ByteBuffer byteBuffer : u12) {
                int remaining = byteBuffer.remaining();
                Z1(i9, byteBuffer);
                i9 += remaining;
            }
        } else {
            jVar.A0(i10, this, i9, i11);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public void a3(int i9, int i10) {
        this.f53917o.putShort(i9, n.M((short) i10));
    }

    @Override // kg.j
    public boolean b1() {
        return false;
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        n3(i9, i11, i10, bArr.length);
        ByteBuffer L3 = L3();
        L3.clear().position(i9).limit(i9 + i11);
        L3.put(bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        f3(i9, i10);
        return (ByteBuffer) L3().clear().position(i9).limit(i9 + i10);
    }

    @Override // kg.a, kg.j
    public j e2(int i9, int i10) {
        p3();
        V2(i9, i10);
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
        return true;
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

    @Override // kg.j
    public long p1() {
        throw new UnsupportedOperationException();
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        f3(i9, i10);
        return ((ByteBuffer) this.f53917o.duplicate().position(i9).limit(i9 + i10)).slice();
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
        return H3(i9, gatheringByteChannel, i10, false);
    }

    @Override // kg.j
    public ByteOrder v1() {
        return ByteOrder.BIG_ENDIAN;
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        I3(i9, outputStream, i10, false);
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        throw new UnsupportedOperationException("direct buffer");
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        J3(i9, byteBuffer, false);
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
        throw new UnsupportedOperationException("direct buffer");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u0(k kVar, ByteBuffer byteBuffer, int i9) {
        this(kVar, byteBuffer, i9, false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(k kVar, ByteBuffer byteBuffer, int i9, boolean z10, boolean z11) {
        super(i9);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "alloc");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(byteBuffer, "initialBuffer");
        if (byteBuffer.isDirect()) {
            if (!byteBuffer.isReadOnly()) {
                int remaining = byteBuffer.remaining();
                if (remaining <= i9) {
                    this.f53916n = kVar;
                    this.f53920r = !z10;
                    M3((z11 ? byteBuffer.slice() : byteBuffer).order(ByteOrder.BIG_ENDIAN), false);
                    L2(remaining);
                    return;
                }
                throw new IllegalArgumentException(String.format("initialCapacity(%d) > maxCapacity(%d)", Integer.valueOf(remaining), Integer.valueOf(i9)));
            }
            throw new IllegalArgumentException("initialBuffer is a read-only buffer.");
        }
        throw new IllegalArgumentException("initialBuffer is not a direct buffer.");
    }
}
