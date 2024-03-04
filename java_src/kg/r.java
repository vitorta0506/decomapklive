package kg;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public final class r extends j {

    /* renamed from: e  reason: collision with root package name */
    private static final ByteBuffer f53891e;

    /* renamed from: f  reason: collision with root package name */
    private static final long f53892f;

    /* renamed from: a  reason: collision with root package name */
    private final k f53893a;

    /* renamed from: b  reason: collision with root package name */
    private final ByteOrder f53894b;

    /* renamed from: c  reason: collision with root package name */
    private final String f53895c;

    /* renamed from: d  reason: collision with root package name */
    private r f53896d;

    static {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(0);
        f53891e = allocateDirect;
        long j10 = 0;
        try {
            if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
                j10 = io.grpc.netty.shaded.io.netty.util.internal.t.u(allocateDirect);
            }
        } catch (Throwable unused) {
        }
        f53892f = j10;
    }

    public r(k kVar) {
        this(kVar, ByteOrder.BIG_ENDIAN);
    }

    private j M2(int i9) {
        if (i9 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException();
    }

    private j N2(int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i10, "length");
        if (i9 == 0 && i10 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException();
    }

    private j O2(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "length");
        if (i9 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        return N2(i9, i11);
    }

    @Override // kg.j
    public j A1(OutputStream outputStream, int i9) {
        return O2(i9);
    }

    @Override // kg.j
    public j A2(byte[] bArr) {
        return O2(bArr.length);
    }

    @Override // kg.j
    public j B() {
        return s0.h(this);
    }

    @Override // kg.j
    public j B1(ByteBuffer byteBuffer) {
        return O2(byteBuffer.remaining());
    }

    @Override // kg.j
    public j B2(byte[] bArr, int i9, int i10) {
        return O2(i10);
    }

    @Override // kg.j
    public j C0(int i9, byte[] bArr) {
        return N2(i9, bArr.length);
    }

    @Override // kg.j
    public j C1(byte[] bArr) {
        return O2(bArr.length);
    }

    @Override // kg.j
    public j C2(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j D1(byte[] bArr, int i9, int i10) {
        return O2(i10);
    }

    @Override // kg.j
    public int D2(CharSequence charSequence, Charset charset) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        return N2(i9, i11);
    }

    @Override // kg.j
    public int E1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j E2(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int F() {
        return 0;
    }

    @Override // kg.j
    public int F0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int F1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j F2(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public long G0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public long G1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j G2(long j10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int H0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int H1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j H2(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j I(int i9) {
        throw new ReadOnlyBufferException();
    }

    @Override // kg.j
    public j I1(int i9) {
        return O2(i9);
    }

    @Override // kg.j
    public j I2(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public short J1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j J2(int i9) {
        return O2(i9);
    }

    @Override // kg.j
    public j K1(int i9) {
        return O2(i9);
    }

    @Override // kg.j
    public int K2() {
        return 0;
    }

    @Override // kg.j
    public j L() {
        return this;
    }

    @Override // kg.j
    public short L1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j L2(int i9) {
        return M2(i9);
    }

    @Override // kg.j, java.lang.Comparable
    /* renamed from: M */
    public int compareTo(j jVar) {
        return jVar.j1() ? -1 : 0;
    }

    @Override // kg.j
    public long M1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j N() {
        return this;
    }

    @Override // kg.j
    public int N1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int O1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public k P() {
        return this.f53893a;
    }

    @Override // kg.j
    public short P0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int P1() {
        return 0;
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        return N2(i9, i10);
    }

    @Override // kg.j
    public short Q0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int Q1() {
        return 0;
    }

    @Override // kg.j
    public short R0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j R1(int i9) {
        return M2(i9);
    }

    @Override // kg.j
    public long S0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j S1() {
        return this;
    }

    @Override // kg.j
    public long T0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public j retain() {
        return this;
    }

    @Override // kg.j
    public j U1(int i9) {
        return this;
    }

    @Override // kg.j
    public j V1() {
        return this;
    }

    @Override // kg.j
    public j W1() {
        return this;
    }

    @Override // kg.j
    public int X0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j X1(int i9, int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int Y0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) {
        N2(i9, i10);
        return 0;
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        return N2(i9, byteBuffer.remaining());
    }

    @Override // kg.j
    public boolean a1() {
        return true;
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        return N2(i9, i11);
    }

    @Override // kg.j
    public boolean b1() {
        return f53892f != 0;
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        return N2(i9, i11);
    }

    @Override // kg.j
    public j c0() {
        return this;
    }

    @Override // kg.j
    public int c2(int i9, CharSequence charSequence, Charset charset) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int d1(int i9, int i10, byte b10) {
        M2(i9);
        M2(i10);
        return -1;
    }

    @Override // kg.j
    public j d2(int i9, int i10) {
        M2(i9);
        M2(i10);
        return this;
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        return f53891e;
    }

    @Override // kg.j
    public j e2(int i9, int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public boolean equals(Object obj) {
        return (obj instanceof j) && !((j) obj).j1();
    }

    @Override // kg.j
    public j f0() {
        return this;
    }

    @Override // kg.j
    public j f2(int i9, int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public boolean g1() {
        return true;
    }

    @Override // kg.j
    public j g2(int i9, long j10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int getInt(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public long getLong(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public boolean h1() {
        return true;
    }

    @Override // kg.j
    public j h2(int i9, int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int hashCode() {
        return 1;
    }

    @Override // kg.j
    public boolean i1() {
        return false;
    }

    @Override // kg.j
    public j i2(int i9, int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public boolean j1() {
        return false;
    }

    @Override // kg.j
    public j j2(int i9, int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public boolean k1(int i9) {
        return false;
    }

    @Override // kg.j
    public j k2(int i9, int i10) {
        return N2(i9, i10);
    }

    @Override // kg.j
    public j l1() {
        return this;
    }

    @Override // kg.j
    public j l2(int i9) {
        return O2(i9);
    }

    @Override // kg.j
    public int m0(int i9, boolean z10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "minWritableBytes");
        return i9 == 0 ? 0 : 1;
    }

    @Override // kg.j
    public int m1() {
        return 0;
    }

    @Override // kg.j
    public j m2() {
        return this;
    }

    @Override // kg.j
    public j n0(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "minWritableBytes");
        if (i9 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j n2(int i9, int i10) {
        return N2(i9, i10);
    }

    @Override // kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        N2(i9, i10);
        return -1;
    }

    @Override // kg.j
    public int o1() {
        return 0;
    }

    @Override // kg.j
    public String o2(int i9, int i10, Charset charset) {
        N2(i9, i10);
        return p2(charset);
    }

    @Override // kg.j
    public int p0(io.grpc.netty.shaded.io.netty.util.g gVar) {
        return -1;
    }

    @Override // kg.j
    public long p1() {
        if (b1()) {
            return f53892f;
        }
        throw new UnsupportedOperationException();
    }

    @Override // kg.j
    public String p2(Charset charset) {
        return "";
    }

    @Override // kg.j
    public boolean q0() {
        return false;
    }

    @Override // kg.j
    public ByteBuffer q1() {
        return f53891e;
    }

    @Override // kg.j
    public j q2() {
        return this;
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        N2(i9, i10);
        return q1();
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: r2 */
    public j touch(Object obj) {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return 1;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return false;
    }

    @Override // kg.j
    public int s1() {
        return 1;
    }

    @Override // kg.j
    public j s2() {
        return null;
    }

    @Override // kg.j
    public ByteBuffer[] t1() {
        return new ByteBuffer[]{f53891e};
    }

    @Override // kg.j
    public int t2() {
        return 0;
    }

    @Override // kg.j
    public String toString() {
        return this.f53895c;
    }

    @Override // kg.j
    public byte u0(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        N2(i9, i10);
        return t1();
    }

    @Override // kg.j
    public j u2(int i9) {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) {
        N2(i9, i10);
        return 0;
    }

    @Override // kg.j
    public ByteOrder v1() {
        return this.f53894b;
    }

    @Override // kg.j
    public int v2(ScatteringByteChannel scatteringByteChannel, int i9) {
        O2(i9);
        return 0;
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) {
        return N2(i9, i10);
    }

    @Override // kg.j
    public j w1(ByteOrder byteOrder) {
        if (io.grpc.netty.shaded.io.netty.util.internal.s.h(byteOrder, "endianness") == v1()) {
            return this;
        }
        r rVar = this.f53896d;
        if (rVar != null) {
            return rVar;
        }
        r rVar2 = new r(P(), byteOrder);
        this.f53896d = rVar2;
        return rVar2;
    }

    @Override // kg.j
    public j w2(ByteBuffer byteBuffer) {
        return O2(byteBuffer.remaining());
    }

    @Override // kg.j
    public byte x1() {
        throw new IndexOutOfBoundsException();
    }

    @Override // kg.j
    public j x2(j jVar) {
        return O2(jVar.P1());
    }

    @Override // kg.j
    public byte[] y() {
        return io.grpc.netty.shaded.io.netty.util.internal.h.f45065b;
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        return N2(i9, byteBuffer.remaining());
    }

    @Override // kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) {
        O2(i9);
        return 0;
    }

    @Override // kg.j
    public j y2(j jVar, int i9) {
        return O2(i9);
    }

    @Override // kg.j
    public int z() {
        return 0;
    }

    @Override // kg.j
    public j z1(int i9) {
        return O2(i9);
    }

    @Override // kg.j
    public j z2(j jVar, int i9, int i10) {
        return O2(i10);
    }

    private r(k kVar, ByteOrder byteOrder) {
        this.f53893a = (k) io.grpc.netty.shaded.io.netty.util.internal.s.h(kVar, "alloc");
        this.f53894b = byteOrder;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.m(this));
        sb2.append(byteOrder == ByteOrder.BIG_ENDIAN ? "BE" : "LE");
        this.f53895c = sb2.toString();
    }
}
