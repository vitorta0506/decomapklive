package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class g1 extends o {

    /* renamed from: y  reason: collision with root package name */
    private final o f53814y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(o oVar) {
        super(oVar.P());
        this.f53814y = oVar;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: A4 */
    public final o d2(int i9, int i10) {
        this.f53814y.d2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j B() {
        return this.f53814y.B();
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: B4 */
    public o e2(int i9, int i10) {
        this.f53814y.e2(i9, i10);
        return this;
    }

    @Override // kg.o, kg.e
    public final void C3() {
        this.f53814y.C3();
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: C4 */
    public o g2(int i9, long j10) {
        this.f53814y.g2(i9, j10);
        return this;
    }

    @Override // kg.a, kg.j
    public int D2(CharSequence charSequence, Charset charset) {
        return this.f53814y.D2(charSequence, charset);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: D4 */
    public o h2(int i9, int i10) {
        this.f53814y.h2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public int E1() {
        return this.f53814y.E1();
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: E4 */
    public o i2(int i9, int i10) {
        this.f53814y.i2(i9, i10);
        return this;
    }

    @Override // kg.o, kg.j
    public final int F() {
        return this.f53814y.F();
    }

    @Override // kg.a, kg.j
    public int F0(int i9) {
        return this.f53814y.F0(i9);
    }

    @Override // kg.a, kg.j
    public int F1() {
        return this.f53814y.F1();
    }

    @Override // kg.a, kg.j
    public j F2(int i9) {
        return this.f53814y.F2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: F4 */
    public o k2(int i9, int i10) {
        this.f53814y.k2(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public long G0(int i9) {
        return this.f53814y.G0(i9);
    }

    @Override // kg.a, kg.j
    public long G1() {
        return this.f53814y.G1();
    }

    @Override // kg.a, kg.j
    public int H0(int i9) {
        return this.f53814y.H0(i9);
    }

    @Override // kg.a, kg.j
    public int H1() {
        return this.f53814y.H1();
    }

    @Override // kg.o
    public o H3(boolean z10, int i9, j jVar) {
        this.f53814y.H3(z10, i9, jVar);
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: H4 */
    public o l2(int i9) {
        this.f53814y.l2(i9);
        return this;
    }

    @Override // kg.a, kg.j
    public j I1(int i9) {
        return this.f53814y.I1(i9);
    }

    @Override // kg.o
    public o I3(boolean z10, j jVar) {
        this.f53814y.I3(z10, jVar);
        return this;
    }

    @Override // kg.a, kg.j
    public short J1() {
        return this.f53814y.J1();
    }

    @Override // kg.o, kg.e, kg.j
    /* renamed from: J4 */
    public o q2() {
        this.f53814y.q2();
        return this;
    }

    @Override // kg.a, kg.j
    public j K1(int i9) {
        return this.f53814y.K1(i9);
    }

    @Override // kg.a, kg.j
    public final int K2() {
        return this.f53814y.K2();
    }

    @Override // kg.o
    public o K3(boolean z10, j jVar) {
        this.f53814y.K3(z10, jVar);
        return this;
    }

    @Override // kg.o, kg.e, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: K4 */
    public o touch(Object obj) {
        this.f53814y.touch(obj);
        return this;
    }

    @Override // kg.a, kg.j
    public short L1() {
        return this.f53814y.L1();
    }

    @Override // kg.a, kg.j, java.lang.Comparable
    /* renamed from: M */
    public final int compareTo(j jVar) {
        return this.f53814y.compareTo(jVar);
    }

    @Override // kg.a, kg.j
    public long M1() {
        return this.f53814y.M1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final byte M2(int i9) {
        return this.f53814y.M2(i9);
    }

    @Override // kg.o, kg.j
    /* renamed from: M3 */
    public o I(int i9) {
        this.f53814y.I(i9);
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: M4 */
    public o u2(int i9) {
        this.f53814y.u2(i9);
        return this;
    }

    @Override // kg.a, kg.j
    public j N() {
        return this.f53814y.N();
    }

    @Override // kg.a, kg.j
    public int N1() {
        return this.f53814y.N1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final int N2(int i9) {
        return this.f53814y.N2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: N4 */
    public o w2(ByteBuffer byteBuffer) {
        this.f53814y.w2(byteBuffer);
        return this;
    }

    @Override // kg.a, kg.j
    public int O1() {
        return this.f53814y.O1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final int O2(int i9) {
        return this.f53814y.O2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: O4 */
    public o x2(j jVar) {
        this.f53814y.x2(jVar);
        return this;
    }

    @Override // kg.o, kg.j
    public final k P() {
        return this.f53814y.P();
    }

    @Override // kg.a, kg.j
    public short P0(int i9) {
        return this.f53814y.P0(i9);
    }

    @Override // kg.a, kg.j
    public final int P1() {
        return this.f53814y.P1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final long P2(int i9) {
        return this.f53814y.P2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: P3 */
    public final o L() {
        this.f53814y.L();
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: P4 */
    public o y2(j jVar, int i9) {
        this.f53814y.y2(jVar, i9);
        return this;
    }

    @Override // kg.o, kg.j
    public j Q(int i9, int i10) {
        return this.f53814y.Q(i9, i10);
    }

    @Override // kg.a, kg.j
    public short Q0(int i9) {
        return this.f53814y.Q0(i9);
    }

    @Override // kg.a, kg.j
    public final int Q1() {
        return this.f53814y.Q1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final long Q2(int i9) {
        return this.f53814y.Q2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: Q4 */
    public o z2(j jVar, int i9, int i10) {
        this.f53814y.z2(jVar, i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public short R0(int i9) {
        return this.f53814y.R0(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final short R2(int i9) {
        return this.f53814y.R2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: R4 */
    public o A2(byte[] bArr) {
        this.f53814y.A2(bArr);
        return this;
    }

    @Override // kg.a, kg.j
    public long S0(int i9) {
        return this.f53814y.S0(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final short S2(int i9) {
        return this.f53814y.S2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: S4 */
    public o B2(byte[] bArr, int i9, int i10) {
        this.f53814y.B2(bArr, i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public long T0(int i9) {
        return this.f53814y.T0(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final int T2(int i9) {
        return this.f53814y.T2(i9);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: T4 */
    public o C2(int i9) {
        this.f53814y.C2(i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final void U2(int i9, int i10) {
        this.f53814y.U2(i9, i10);
    }

    @Override // kg.o
    public o U3() {
        this.f53814y.U3();
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: U4 */
    public o E2(int i9) {
        this.f53814y.E2(i9);
        return this;
    }

    @Override // kg.a, kg.j
    public j V1() {
        return this.f53814y.V1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final void V2(int i9, int i10) {
        this.f53814y.V2(i9, i10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: V3 */
    public o c0() {
        this.f53814y.c0();
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: V4 */
    public o G2(long j10) {
        this.f53814y.G2(j10);
        return this;
    }

    @Override // kg.a, kg.j
    public j W1() {
        return this.f53814y.W1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final void W2(int i9, int i10) {
        this.f53814y.W2(i9, i10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: W4 */
    public o H2(int i9) {
        this.f53814y.H2(i9);
        return this;
    }

    @Override // kg.a, kg.j
    public int X0(int i9) {
        return this.f53814y.X0(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final void X2(int i9, long j10) {
        this.f53814y.X2(i9, j10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: X3 */
    public o n0(int i9) {
        this.f53814y.n0(i9);
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: X4 */
    public o I2(int i9) {
        this.f53814y.I2(i9);
        return this;
    }

    @Override // kg.a, kg.j
    public int Y0(int i9) {
        return this.f53814y.Y0(i9);
    }

    @Override // kg.o, kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        return this.f53814y.Y1(i9, scatteringByteChannel, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final void Y2(int i9, int i10) {
        this.f53814y.Y2(i9, i10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: Y4 */
    public o J2(int i9) {
        this.f53814y.J2(i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final void Z2(int i9, int i10) {
        this.f53814y.Z2(i9, i10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: Z4 */
    public final o L2(int i9) {
        this.f53814y.L2(i9);
        return this;
    }

    @Override // kg.o, kg.j
    public final boolean a1() {
        return this.f53814y.a1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o, kg.a
    public final void a3(int i9, int i10) {
        this.f53814y.a3(i9, i10);
    }

    @Override // kg.o, kg.j
    public final boolean b1() {
        return this.f53814y.b1();
    }

    @Override // kg.o, kg.j
    /* renamed from: b4 */
    public o w0(int i9, OutputStream outputStream, int i10) throws IOException {
        this.f53814y.w0(i9, outputStream, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public int c2(int i9, CharSequence charSequence, Charset charset) {
        return this.f53814y.c2(i9, charSequence, charset);
    }

    @Override // kg.o, kg.j
    /* renamed from: c4 */
    public o y0(int i9, ByteBuffer byteBuffer) {
        this.f53814y.y0(i9, byteBuffer);
        return this;
    }

    @Override // kg.a, kg.j
    public int d1(int i9, int i10, byte b10) {
        return this.f53814y.d1(i9, i10, b10);
    }

    @Override // kg.o, kg.j
    /* renamed from: d4 */
    public o A0(int i9, j jVar, int i10, int i11) {
        this.f53814y.A0(i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.o, kg.j
    public ByteBuffer e1(int i9, int i10) {
        return this.f53814y.e1(i9, i10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: e4 */
    public o C0(int i9, byte[] bArr) {
        this.f53814y.C0(i9, bArr);
        return this;
    }

    @Override // kg.a, kg.j
    public final boolean equals(Object obj) {
        return this.f53814y.equals(obj);
    }

    @Override // kg.a, kg.j
    public j f0() {
        return this.f53814y.f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.o, kg.e, kg.j
    public final boolean f1() {
        return this.f53814y.f1();
    }

    @Override // kg.a, kg.j
    public j f2(int i9, int i10) {
        return this.f53814y.f2(i9, i10);
    }

    @Override // kg.o, kg.j
    /* renamed from: f4 */
    public o E0(int i9, byte[] bArr, int i10, int i11) {
        this.f53814y.E0(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.o
    public final j g4(int i9) {
        return this.f53814y.g4(i9);
    }

    @Override // kg.a, kg.j
    public int getInt(int i9) {
        return this.f53814y.getInt(i9);
    }

    @Override // kg.a, kg.j
    public long getLong(int i9) {
        return this.f53814y.getLong(i9);
    }

    @Override // kg.o, kg.j
    public final boolean h1() {
        return this.f53814y.h1();
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: h4 */
    public final o l1() {
        this.f53814y.l1();
        return this;
    }

    @Override // kg.a, kg.j
    public final int hashCode() {
        return this.f53814y.hashCode();
    }

    @Override // kg.a, kg.j
    public boolean i1() {
        return this.f53814y.i1();
    }

    @Override // kg.o, java.lang.Iterable
    public Iterator<j> iterator() {
        return this.f53814y.iterator();
    }

    @Override // kg.a, kg.j
    public final boolean j1() {
        return this.f53814y.j1();
    }

    @Override // kg.a, kg.j
    public j j2(int i9, int i10) {
        return this.f53814y.j2(i9, i10);
    }

    @Override // kg.a, kg.j
    public final boolean k1(int i9) {
        return this.f53814y.k1(i9);
    }

    @Override // kg.o
    public final int k4() {
        return this.f53814y.k4();
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: l4 */
    public o A1(OutputStream outputStream, int i9) throws IOException {
        this.f53814y.A1(outputStream, i9);
        return this;
    }

    @Override // kg.a, kg.j
    public int m0(int i9, boolean z10) {
        return this.f53814y.m0(i9, z10);
    }

    @Override // kg.a, kg.j
    public final int m1() {
        return this.f53814y.m1();
    }

    @Override // kg.a, kg.j
    public j m2() {
        return this.f53814y.m2();
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: m4 */
    public o B1(ByteBuffer byteBuffer) {
        this.f53814y.B1(byteBuffer);
        return this;
    }

    @Override // kg.j
    public int n1() {
        return this.f53814y.n1();
    }

    @Override // kg.a, kg.j
    public j n2(int i9, int i10) {
        return this.f53814y.n2(i9, i10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: n4 */
    public o C1(byte[] bArr) {
        this.f53814y.C1(bArr);
        return this;
    }

    @Override // kg.a, kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        return this.f53814y.o0(i9, i10, gVar);
    }

    @Override // kg.a, kg.j
    public final int o1() {
        return this.f53814y.o1();
    }

    @Override // kg.a, kg.j
    public String o2(int i9, int i10, Charset charset) {
        return this.f53814y.o2(i9, i10, charset);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: o4 */
    public o D1(byte[] bArr, int i9, int i10) {
        this.f53814y.D1(bArr, i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public int p0(io.grpc.netty.shaded.io.netty.util.g gVar) {
        return this.f53814y.p0(gVar);
    }

    @Override // kg.o, kg.j
    public final long p1() {
        return this.f53814y.p1();
    }

    @Override // kg.a, kg.j
    public String p2(Charset charset) {
        return this.f53814y.p2(charset);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: p4 */
    public final o R1(int i9) {
        this.f53814y.R1(i9);
        return this;
    }

    @Override // kg.a, kg.j
    public final boolean q0() {
        return this.f53814y.q0();
    }

    @Override // kg.a, kg.j
    public ByteBuffer q1() {
        return this.f53814y.q1();
    }

    @Override // kg.o, kg.j
    public ByteBuffer r1(int i9, int i10) {
        return this.f53814y.r1(i9, i10);
    }

    @Override // kg.e, io.grpc.netty.shaded.io.netty.util.s
    public final int refCnt() {
        return this.f53814y.refCnt();
    }

    @Override // kg.e, io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.f53814y.release();
    }

    @Override // kg.o, kg.j
    public int s1() {
        return this.f53814y.s1();
    }

    @Override // kg.o, kg.j
    public final j s2() {
        return this.f53814y;
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: s4 */
    public final o S1() {
        this.f53814y.S1();
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    public ByteBuffer[] t1() {
        return this.f53814y.t1();
    }

    @Override // kg.a, kg.j
    public final int t2() {
        return this.f53814y.t2();
    }

    @Override // kg.o, kg.e, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: t4 */
    public o retain() {
        this.f53814y.retain();
        return this;
    }

    @Override // kg.o, kg.a, kg.j
    public final String toString() {
        return this.f53814y.toString();
    }

    @Override // kg.o, kg.a, kg.j
    public byte u0(int i9) {
        return this.f53814y.u0(i9);
    }

    @Override // kg.o, kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        return this.f53814y.u1(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.a
    public r0 u3() {
        return this.f53814y.u3();
    }

    @Override // kg.o, kg.e, kg.j
    /* renamed from: u4 */
    public o U1(int i9) {
        this.f53814y.U1(i9);
        return this;
    }

    @Override // kg.o, kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        return this.f53814y.v0(i9, gatheringByteChannel, i10);
    }

    @Override // kg.o, kg.j
    public final ByteOrder v1() {
        return this.f53814y.v1();
    }

    @Override // kg.a, kg.j
    public int v2(ScatteringByteChannel scatteringByteChannel, int i9) throws IOException {
        return this.f53814y.v2(scatteringByteChannel, i9);
    }

    @Override // kg.a
    public j v3(int i9, int i10) {
        return this.f53814y.v3(i9, i10);
    }

    @Override // kg.o, kg.a, kg.j
    /* renamed from: v4 */
    public o X1(int i9, int i10) {
        this.f53814y.X1(i9, i10);
        return this;
    }

    @Override // kg.a, kg.j
    public j w1(ByteOrder byteOrder) {
        return this.f53814y.w1(byteOrder);
    }

    @Override // kg.o, kg.j
    /* renamed from: w4 */
    public o Z1(int i9, ByteBuffer byteBuffer) {
        this.f53814y.Z1(i9, byteBuffer);
        return this;
    }

    @Override // kg.a, kg.j
    public byte x1() {
        return this.f53814y.x1();
    }

    @Override // kg.o, kg.j
    /* renamed from: x4 */
    public o a2(int i9, j jVar, int i10, int i11) {
        this.f53814y.a2(i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.o, kg.j
    public final byte[] y() {
        return this.f53814y.y();
    }

    @Override // kg.a, kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        return this.f53814y.y1(gatheringByteChannel, i9);
    }

    @Override // kg.o, kg.a
    /* renamed from: y4 */
    public o w3(int i9, byte[] bArr) {
        this.f53814y.w3(i9, bArr);
        return this;
    }

    @Override // kg.o, kg.j
    public final int z() {
        return this.f53814y.z();
    }

    @Override // kg.a, kg.j
    public j z1(int i9) {
        return this.f53814y.z1(i9);
    }

    @Override // kg.o, kg.j
    /* renamed from: z4 */
    public o b2(int i9, byte[] bArr, int i10, int i11) {
        this.f53814y.b2(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.e, io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return this.f53814y.release(i9);
    }
}
