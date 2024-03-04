package kg;

import androidx.core.view.ViewCompat;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import kotlin.UShort;
@Deprecated
/* loaded from: classes5.dex */
public class r0 extends j {

    /* renamed from: a  reason: collision with root package name */
    private final j f53897a;

    /* renamed from: b  reason: collision with root package name */
    private final ByteOrder f53898b;

    public r0(j jVar) {
        this.f53897a = (j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "buf");
        ByteOrder v12 = jVar.v1();
        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
        if (v12 == byteOrder) {
            this.f53898b = ByteOrder.LITTLE_ENDIAN;
        } else {
            this.f53898b = byteOrder;
        }
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        this.f53897a.A0(i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.j
    public j A1(OutputStream outputStream, int i9) throws IOException {
        this.f53897a.A1(outputStream, i9);
        return this;
    }

    @Override // kg.j
    public j A2(byte[] bArr) {
        this.f53897a.A2(bArr);
        return this;
    }

    @Override // kg.j
    public j B() {
        return s0.h(this);
    }

    @Override // kg.j
    public j B1(ByteBuffer byteBuffer) {
        this.f53897a.B1(byteBuffer);
        return this;
    }

    @Override // kg.j
    public j B2(byte[] bArr, int i9, int i10) {
        this.f53897a.B2(bArr, i9, i10);
        return this;
    }

    @Override // kg.j
    public j C0(int i9, byte[] bArr) {
        this.f53897a.C0(i9, bArr);
        return this;
    }

    @Override // kg.j
    public j C1(byte[] bArr) {
        this.f53897a.C1(bArr);
        return this;
    }

    @Override // kg.j
    public j C2(int i9) {
        I2(i9);
        return this;
    }

    @Override // kg.j
    public j D1(byte[] bArr, int i9, int i10) {
        this.f53897a.D1(bArr, i9, i10);
        return this;
    }

    @Override // kg.j
    public int D2(CharSequence charSequence, Charset charset) {
        return this.f53897a.D2(charSequence, charset);
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        this.f53897a.E0(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public int E1() {
        return n.J(this.f53897a.E1());
    }

    @Override // kg.j
    public j E2(int i9) {
        this.f53897a.E2(n.J(i9));
        return this;
    }

    @Override // kg.j
    public int F() {
        return this.f53897a.F();
    }

    @Override // kg.j
    public int F0(int i9) {
        return this.f53897a.F0(i9);
    }

    @Override // kg.j
    public int F1() {
        return this.f53897a.F1();
    }

    @Override // kg.j
    public j F2(int i9) {
        this.f53897a.F2(i9);
        return this;
    }

    @Override // kg.j
    public long G0(int i9) {
        return this.f53897a.G0(i9);
    }

    @Override // kg.j
    public long G1() {
        return n.K(this.f53897a.G1());
    }

    @Override // kg.j
    public j G2(long j10) {
        this.f53897a.G2(n.K(j10));
        return this;
    }

    @Override // kg.j
    public int H0(int i9) {
        return n.L(this.f53897a.H0(i9));
    }

    @Override // kg.j
    public int H1() {
        return n.L(this.f53897a.H1());
    }

    @Override // kg.j
    public j H2(int i9) {
        this.f53897a.H2(n.L(i9));
        return this;
    }

    @Override // kg.j
    public j I(int i9) {
        this.f53897a.I(i9);
        return this;
    }

    @Override // kg.j
    public j I1(int i9) {
        return this.f53897a.I1(i9).w1(this.f53898b);
    }

    @Override // kg.j
    public j I2(int i9) {
        this.f53897a.I2(n.M((short) i9));
        return this;
    }

    @Override // kg.j
    public short J1() {
        return n.M(this.f53897a.J1());
    }

    @Override // kg.j
    public j J2(int i9) {
        this.f53897a.J2(i9);
        return this;
    }

    @Override // kg.j
    public j K1(int i9) {
        return this.f53897a.K1(i9).w1(this.f53898b);
    }

    @Override // kg.j
    public int K2() {
        return this.f53897a.K2();
    }

    @Override // kg.j
    public j L() {
        this.f53897a.L();
        return this;
    }

    @Override // kg.j
    public short L1() {
        return this.f53897a.L1();
    }

    @Override // kg.j
    public j L2(int i9) {
        this.f53897a.L2(i9);
        return this;
    }

    @Override // kg.j, java.lang.Comparable
    /* renamed from: M */
    public int compareTo(j jVar) {
        return n.b(this, jVar);
    }

    @Override // kg.j
    public long M1() {
        return E1() & 4294967295L;
    }

    @Override // kg.j
    public j N() {
        return this.f53897a.N().w1(this.f53898b);
    }

    @Override // kg.j
    public int N1() {
        return H1() & ViewCompat.MEASURED_SIZE_MASK;
    }

    @Override // kg.j
    public int O1() {
        return J1() & UShort.MAX_VALUE;
    }

    @Override // kg.j
    public k P() {
        return this.f53897a.P();
    }

    @Override // kg.j
    public short P0(int i9) {
        return n.M(this.f53897a.P0(i9));
    }

    @Override // kg.j
    public int P1() {
        return this.f53897a.P1();
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        return this.f53897a.Q(i9, i10).w1(this.f53898b);
    }

    @Override // kg.j
    public short Q0(int i9) {
        return this.f53897a.Q0(i9);
    }

    @Override // kg.j
    public int Q1() {
        return this.f53897a.Q1();
    }

    @Override // kg.j
    public short R0(int i9) {
        return this.f53897a.R0(i9);
    }

    @Override // kg.j
    public j R1(int i9) {
        this.f53897a.R1(i9);
        return this;
    }

    @Override // kg.j
    public long S0(int i9) {
        return getInt(i9) & 4294967295L;
    }

    @Override // kg.j
    public j S1() {
        this.f53897a.S1();
        return this;
    }

    @Override // kg.j
    public long T0(int i9) {
        return F0(i9) & 4294967295L;
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public j retain() {
        this.f53897a.retain();
        return this;
    }

    @Override // kg.j
    public j U1(int i9) {
        this.f53897a.U1(i9);
        return this;
    }

    @Override // kg.j
    public j V1() {
        return this.f53897a.V1().w1(this.f53898b);
    }

    @Override // kg.j
    public j W1() {
        return this.f53897a.W1().w1(this.f53898b);
    }

    @Override // kg.j
    public int X0(int i9) {
        return H0(i9) & ViewCompat.MEASURED_SIZE_MASK;
    }

    @Override // kg.j
    public j X1(int i9, int i10) {
        this.f53897a.X1(i9, i10);
        return this;
    }

    @Override // kg.j
    public int Y0(int i9) {
        return P0(i9) & UShort.MAX_VALUE;
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        return this.f53897a.Y1(i9, scatteringByteChannel, i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        this.f53897a.Z1(i9, byteBuffer);
        return this;
    }

    @Override // kg.j
    public boolean a1() {
        return this.f53897a.a1();
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        this.f53897a.a2(i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.j
    public boolean b1() {
        return this.f53897a.b1();
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        this.f53897a.b2(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public j c0() {
        this.f53897a.c0();
        return this;
    }

    @Override // kg.j
    public int c2(int i9, CharSequence charSequence, Charset charset) {
        return this.f53897a.c2(i9, charSequence, charset);
    }

    @Override // kg.j
    public int d1(int i9, int i10, byte b10) {
        return this.f53897a.d1(i9, i10, b10);
    }

    @Override // kg.j
    public j d2(int i9, int i10) {
        this.f53897a.d2(i9, i10);
        return this;
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        return r1(i9, i10);
    }

    @Override // kg.j
    public j e2(int i9, int i10) {
        this.f53897a.e2(i9, n.J(i10));
        return this;
    }

    @Override // kg.j
    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return n.o(this, (j) obj);
        }
        return false;
    }

    @Override // kg.j
    public j f0() {
        return this.f53897a.f0().w1(this.f53898b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.j
    public final boolean f1() {
        return this.f53897a.f1();
    }

    @Override // kg.j
    public j f2(int i9, int i10) {
        this.f53897a.f2(i9, i10);
        return this;
    }

    @Override // kg.j
    public boolean g1() {
        return this.f53897a.g1();
    }

    @Override // kg.j
    public j g2(int i9, long j10) {
        this.f53897a.g2(i9, n.K(j10));
        return this;
    }

    @Override // kg.j
    public int getInt(int i9) {
        return n.J(this.f53897a.getInt(i9));
    }

    @Override // kg.j
    public long getLong(int i9) {
        return n.K(this.f53897a.getLong(i9));
    }

    @Override // kg.j
    public boolean h1() {
        return this.f53897a.h1();
    }

    @Override // kg.j
    public j h2(int i9, int i10) {
        this.f53897a.h2(i9, n.L(i10));
        return this;
    }

    @Override // kg.j
    public int hashCode() {
        return this.f53897a.hashCode();
    }

    @Override // kg.j
    public boolean i1() {
        return this.f53897a.i1();
    }

    @Override // kg.j
    public j i2(int i9, int i10) {
        this.f53897a.i2(i9, n.M((short) i10));
        return this;
    }

    @Override // kg.j
    public boolean j1() {
        return this.f53897a.j1();
    }

    @Override // kg.j
    public j j2(int i9, int i10) {
        this.f53897a.j2(i9, (short) i10);
        return this;
    }

    @Override // kg.j
    public boolean k1(int i9) {
        return this.f53897a.k1(i9);
    }

    @Override // kg.j
    public j k2(int i9, int i10) {
        this.f53897a.k2(i9, i10);
        return this;
    }

    @Override // kg.j
    public j l1() {
        this.f53897a.l1();
        return this;
    }

    @Override // kg.j
    public j l2(int i9) {
        this.f53897a.l2(i9);
        return this;
    }

    @Override // kg.j
    public int m0(int i9, boolean z10) {
        return this.f53897a.m0(i9, z10);
    }

    @Override // kg.j
    public int m1() {
        return this.f53897a.m1();
    }

    @Override // kg.j
    public j m2() {
        return this.f53897a.m2().w1(this.f53898b);
    }

    @Override // kg.j
    public j n0(int i9) {
        this.f53897a.n0(i9);
        return this;
    }

    @Override // kg.j
    public int n1() {
        return this.f53897a.n1();
    }

    @Override // kg.j
    public j n2(int i9, int i10) {
        return this.f53897a.n2(i9, i10).w1(this.f53898b);
    }

    @Override // kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        return this.f53897a.o0(i9, i10, gVar);
    }

    @Override // kg.j
    public int o1() {
        return this.f53897a.o1();
    }

    @Override // kg.j
    public String o2(int i9, int i10, Charset charset) {
        return this.f53897a.o2(i9, i10, charset);
    }

    @Override // kg.j
    public int p0(io.grpc.netty.shaded.io.netty.util.g gVar) {
        return this.f53897a.p0(gVar);
    }

    @Override // kg.j
    public long p1() {
        return this.f53897a.p1();
    }

    @Override // kg.j
    public String p2(Charset charset) {
        return this.f53897a.p2(charset);
    }

    @Override // kg.j
    public boolean q0() {
        return this.f53897a.q0();
    }

    @Override // kg.j
    public ByteBuffer q1() {
        return this.f53897a.q1().order(this.f53898b);
    }

    @Override // kg.j
    public j q2() {
        this.f53897a.q2();
        return this;
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        return this.f53897a.r1(i9, i10).order(this.f53898b);
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: r2 */
    public j touch(Object obj) {
        this.f53897a.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return this.f53897a.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.f53897a.release();
    }

    @Override // kg.j
    public int s1() {
        return this.f53897a.s1();
    }

    @Override // kg.j
    public j s2() {
        return this.f53897a;
    }

    @Override // kg.j
    public ByteBuffer[] t1() {
        ByteBuffer[] t12 = this.f53897a.t1();
        for (int i9 = 0; i9 < t12.length; i9++) {
            t12[i9] = t12[i9].order(this.f53898b);
        }
        return t12;
    }

    @Override // kg.j
    public int t2() {
        return this.f53897a.t2();
    }

    @Override // kg.j
    public String toString() {
        return "Swapped(" + this.f53897a + ')';
    }

    @Override // kg.j
    public byte u0(int i9) {
        return this.f53897a.u0(i9);
    }

    @Override // kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        ByteBuffer[] u12 = this.f53897a.u1(i9, i10);
        for (int i11 = 0; i11 < u12.length; i11++) {
            u12[i11] = u12[i11].order(this.f53898b);
        }
        return u12;
    }

    @Override // kg.j
    public j u2(int i9) {
        this.f53897a.u2(i9);
        return this;
    }

    @Override // kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        return this.f53897a.v0(i9, gatheringByteChannel, i10);
    }

    @Override // kg.j
    public ByteOrder v1() {
        return this.f53898b;
    }

    @Override // kg.j
    public int v2(ScatteringByteChannel scatteringByteChannel, int i9) throws IOException {
        return this.f53897a.v2(scatteringByteChannel, i9);
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        this.f53897a.w0(i9, outputStream, i10);
        return this;
    }

    @Override // kg.j
    public j w1(ByteOrder byteOrder) {
        return io.grpc.netty.shaded.io.netty.util.internal.s.h(byteOrder, "endianness") == this.f53898b ? this : this.f53897a;
    }

    @Override // kg.j
    public j w2(ByteBuffer byteBuffer) {
        this.f53897a.w2(byteBuffer);
        return this;
    }

    @Override // kg.j
    public byte x1() {
        return this.f53897a.x1();
    }

    @Override // kg.j
    public j x2(j jVar) {
        this.f53897a.x2(jVar);
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        return this.f53897a.y();
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        this.f53897a.y0(i9, byteBuffer);
        return this;
    }

    @Override // kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        return this.f53897a.y1(gatheringByteChannel, i9);
    }

    @Override // kg.j
    public j y2(j jVar, int i9) {
        this.f53897a.y2(jVar, i9);
        return this;
    }

    @Override // kg.j
    public int z() {
        return this.f53897a.z();
    }

    @Override // kg.j
    public j z1(int i9) {
        return this.f53897a.z1(i9).w1(v1());
    }

    @Override // kg.j
    public j z2(j jVar, int i9, int i10) {
        this.f53897a.z2(jVar, i9, i10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return this.f53897a.release(i9);
    }
}
