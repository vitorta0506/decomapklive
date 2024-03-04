package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class f1 extends j {

    /* renamed from: a  reason: collision with root package name */
    protected final j f53810a;

    /* JADX INFO: Access modifiers changed from: protected */
    public f1(j jVar) {
        this.f53810a = (j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "buf");
    }

    @Override // kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        this.f53810a.A0(i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.j
    public j A1(OutputStream outputStream, int i9) throws IOException {
        this.f53810a.A1(outputStream, i9);
        return this;
    }

    @Override // kg.j
    public j A2(byte[] bArr) {
        this.f53810a.A2(bArr);
        return this;
    }

    @Override // kg.j
    public j B() {
        return this.f53810a.B();
    }

    @Override // kg.j
    public j B1(ByteBuffer byteBuffer) {
        this.f53810a.B1(byteBuffer);
        return this;
    }

    @Override // kg.j
    public j B2(byte[] bArr, int i9, int i10) {
        this.f53810a.B2(bArr, i9, i10);
        return this;
    }

    @Override // kg.j
    public j C0(int i9, byte[] bArr) {
        this.f53810a.C0(i9, bArr);
        return this;
    }

    @Override // kg.j
    public j C1(byte[] bArr) {
        this.f53810a.C1(bArr);
        return this;
    }

    @Override // kg.j
    public j C2(int i9) {
        this.f53810a.C2(i9);
        return this;
    }

    @Override // kg.j
    public j D1(byte[] bArr, int i9, int i10) {
        this.f53810a.D1(bArr, i9, i10);
        return this;
    }

    @Override // kg.j
    public int D2(CharSequence charSequence, Charset charset) {
        return this.f53810a.D2(charSequence, charset);
    }

    @Override // kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        this.f53810a.E0(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public int E1() {
        return this.f53810a.E1();
    }

    @Override // kg.j
    public j E2(int i9) {
        this.f53810a.E2(i9);
        return this;
    }

    @Override // kg.j
    public final int F() {
        return this.f53810a.F();
    }

    @Override // kg.j
    public int F0(int i9) {
        return this.f53810a.F0(i9);
    }

    @Override // kg.j
    public int F1() {
        return this.f53810a.F1();
    }

    @Override // kg.j
    public j F2(int i9) {
        this.f53810a.F2(i9);
        return this;
    }

    @Override // kg.j
    public long G0(int i9) {
        return this.f53810a.G0(i9);
    }

    @Override // kg.j
    public long G1() {
        return this.f53810a.G1();
    }

    @Override // kg.j
    public j G2(long j10) {
        this.f53810a.G2(j10);
        return this;
    }

    @Override // kg.j
    public int H0(int i9) {
        return this.f53810a.H0(i9);
    }

    @Override // kg.j
    public int H1() {
        return this.f53810a.H1();
    }

    @Override // kg.j
    public j H2(int i9) {
        this.f53810a.H2(i9);
        return this;
    }

    @Override // kg.j
    public j I(int i9) {
        this.f53810a.I(i9);
        return this;
    }

    @Override // kg.j
    public j I1(int i9) {
        return this.f53810a.I1(i9);
    }

    @Override // kg.j
    public j I2(int i9) {
        this.f53810a.I2(i9);
        return this;
    }

    @Override // kg.j
    public short J1() {
        return this.f53810a.J1();
    }

    @Override // kg.j
    public j J2(int i9) {
        this.f53810a.J2(i9);
        return this;
    }

    @Override // kg.j
    public j K1(int i9) {
        return this.f53810a.K1(i9);
    }

    @Override // kg.j
    public final int K2() {
        return this.f53810a.K2();
    }

    @Override // kg.j
    public final j L() {
        this.f53810a.L();
        return this;
    }

    @Override // kg.j
    public short L1() {
        return this.f53810a.L1();
    }

    @Override // kg.j
    public final j L2(int i9) {
        this.f53810a.L2(i9);
        return this;
    }

    @Override // kg.j, java.lang.Comparable
    /* renamed from: M */
    public int compareTo(j jVar) {
        return this.f53810a.compareTo(jVar);
    }

    @Override // kg.j
    public long M1() {
        return this.f53810a.M1();
    }

    @Override // kg.j
    public j N() {
        return this.f53810a.N();
    }

    @Override // kg.j
    public int N1() {
        return this.f53810a.N1();
    }

    @Override // kg.j
    public int O1() {
        return this.f53810a.O1();
    }

    @Override // kg.j
    public final k P() {
        return this.f53810a.P();
    }

    @Override // kg.j
    public short P0(int i9) {
        return this.f53810a.P0(i9);
    }

    @Override // kg.j
    public final int P1() {
        return this.f53810a.P1();
    }

    @Override // kg.j
    public j Q(int i9, int i10) {
        return this.f53810a.Q(i9, i10);
    }

    @Override // kg.j
    public short Q0(int i9) {
        return this.f53810a.Q0(i9);
    }

    @Override // kg.j
    public final int Q1() {
        return this.f53810a.Q1();
    }

    @Override // kg.j
    public short R0(int i9) {
        return this.f53810a.R0(i9);
    }

    @Override // kg.j
    public final j R1(int i9) {
        this.f53810a.R1(i9);
        return this;
    }

    @Override // kg.j
    public long S0(int i9) {
        return this.f53810a.S0(i9);
    }

    @Override // kg.j
    public final j S1() {
        this.f53810a.S1();
        return this;
    }

    @Override // kg.j
    public long T0(int i9) {
        return this.f53810a.T0(i9);
    }

    @Override // kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public j retain() {
        this.f53810a.retain();
        return this;
    }

    @Override // kg.j
    public j U1(int i9) {
        this.f53810a.U1(i9);
        return this;
    }

    @Override // kg.j
    public j V1() {
        return this.f53810a.V1();
    }

    @Override // kg.j
    public j W1() {
        return this.f53810a.W1();
    }

    @Override // kg.j
    public int X0(int i9) {
        return this.f53810a.X0(i9);
    }

    @Override // kg.j
    public j X1(int i9, int i10) {
        this.f53810a.X1(i9, i10);
        return this;
    }

    @Override // kg.j
    public int Y0(int i9) {
        return this.f53810a.Y0(i9);
    }

    @Override // kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        return this.f53810a.Y1(i9, scatteringByteChannel, i10);
    }

    @Override // kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        this.f53810a.Z1(i9, byteBuffer);
        return this;
    }

    @Override // kg.j
    public boolean a1() {
        return this.f53810a.a1();
    }

    @Override // kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        this.f53810a.a2(i9, jVar, i10, i11);
        return this;
    }

    @Override // kg.j
    public final boolean b1() {
        return this.f53810a.b1();
    }

    @Override // kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        this.f53810a.b2(i9, bArr, i10, i11);
        return this;
    }

    @Override // kg.j
    public j c0() {
        this.f53810a.c0();
        return this;
    }

    @Override // kg.j
    public int c2(int i9, CharSequence charSequence, Charset charset) {
        return this.f53810a.c2(i9, charSequence, charset);
    }

    @Override // kg.j
    public int d1(int i9, int i10, byte b10) {
        return this.f53810a.d1(i9, i10, b10);
    }

    @Override // kg.j
    public j d2(int i9, int i10) {
        this.f53810a.d2(i9, i10);
        return this;
    }

    @Override // kg.j
    public ByteBuffer e1(int i9, int i10) {
        return this.f53810a.e1(i9, i10);
    }

    @Override // kg.j
    public j e2(int i9, int i10) {
        this.f53810a.e2(i9, i10);
        return this;
    }

    @Override // kg.j
    public boolean equals(Object obj) {
        return this.f53810a.equals(obj);
    }

    @Override // kg.j
    public j f0() {
        return this.f53810a.f0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // kg.j
    public final boolean f1() {
        return this.f53810a.f1();
    }

    @Override // kg.j
    public j f2(int i9, int i10) {
        this.f53810a.f2(i9, i10);
        return this;
    }

    @Override // kg.j
    public boolean g1() {
        return this.f53810a.g1();
    }

    @Override // kg.j
    public j g2(int i9, long j10) {
        this.f53810a.g2(i9, j10);
        return this;
    }

    @Override // kg.j
    public int getInt(int i9) {
        return this.f53810a.getInt(i9);
    }

    @Override // kg.j
    public long getLong(int i9) {
        return this.f53810a.getLong(i9);
    }

    @Override // kg.j
    public final boolean h1() {
        return this.f53810a.h1();
    }

    @Override // kg.j
    public j h2(int i9, int i10) {
        this.f53810a.h2(i9, i10);
        return this;
    }

    @Override // kg.j
    public int hashCode() {
        return this.f53810a.hashCode();
    }

    @Override // kg.j
    public boolean i1() {
        return this.f53810a.i1();
    }

    @Override // kg.j
    public j i2(int i9, int i10) {
        this.f53810a.i2(i9, i10);
        return this;
    }

    @Override // kg.j
    public final boolean j1() {
        return this.f53810a.j1();
    }

    @Override // kg.j
    public j j2(int i9, int i10) {
        this.f53810a.j2(i9, i10);
        return this;
    }

    @Override // kg.j
    public final boolean k1(int i9) {
        return this.f53810a.k1(i9);
    }

    @Override // kg.j
    public j k2(int i9, int i10) {
        this.f53810a.k2(i9, i10);
        return this;
    }

    @Override // kg.j
    public final j l1() {
        this.f53810a.l1();
        return this;
    }

    @Override // kg.j
    public j l2(int i9) {
        this.f53810a.l2(i9);
        return this;
    }

    @Override // kg.j
    public int m0(int i9, boolean z10) {
        return this.f53810a.m0(i9, z10);
    }

    @Override // kg.j
    public final int m1() {
        return this.f53810a.m1();
    }

    @Override // kg.j
    public j m2() {
        return this.f53810a.m2();
    }

    @Override // kg.j
    public j n0(int i9) {
        this.f53810a.n0(i9);
        return this;
    }

    @Override // kg.j
    public int n1() {
        return this.f53810a.n1();
    }

    @Override // kg.j
    public j n2(int i9, int i10) {
        return this.f53810a.n2(i9, i10);
    }

    @Override // kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        return this.f53810a.o0(i9, i10, gVar);
    }

    @Override // kg.j
    public final int o1() {
        return this.f53810a.o1();
    }

    @Override // kg.j
    public String o2(int i9, int i10, Charset charset) {
        return this.f53810a.o2(i9, i10, charset);
    }

    @Override // kg.j
    public int p0(io.grpc.netty.shaded.io.netty.util.g gVar) {
        return this.f53810a.p0(gVar);
    }

    @Override // kg.j
    public final long p1() {
        return this.f53810a.p1();
    }

    @Override // kg.j
    public String p2(Charset charset) {
        return this.f53810a.p2(charset);
    }

    @Override // kg.j
    public final boolean q0() {
        return this.f53810a.q0();
    }

    @Override // kg.j
    public ByteBuffer q1() {
        return this.f53810a.q1();
    }

    @Override // kg.j
    public ByteBuffer r1(int i9, int i10) {
        return this.f53810a.r1(i9, i10);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final int refCnt() {
        return this.f53810a.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.f53810a.release();
    }

    @Override // kg.j
    public int s1() {
        return this.f53810a.s1();
    }

    @Override // kg.j
    public final j s2() {
        return this.f53810a;
    }

    @Override // kg.j
    public ByteBuffer[] t1() {
        return this.f53810a.t1();
    }

    @Override // kg.j
    public final int t2() {
        return this.f53810a.t2();
    }

    @Override // kg.j
    public String toString() {
        return io.grpc.netty.shaded.io.netty.util.internal.b0.m(this) + '(' + this.f53810a.toString() + ')';
    }

    @Override // kg.j
    public byte u0(int i9) {
        return this.f53810a.u0(i9);
    }

    @Override // kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        return this.f53810a.u1(i9, i10);
    }

    @Override // kg.j
    public j u2(int i9) {
        this.f53810a.u2(i9);
        return this;
    }

    @Override // kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        return this.f53810a.v0(i9, gatheringByteChannel, i10);
    }

    @Override // kg.j
    public final ByteOrder v1() {
        return this.f53810a.v1();
    }

    @Override // kg.j
    public int v2(ScatteringByteChannel scatteringByteChannel, int i9) throws IOException {
        return this.f53810a.v2(scatteringByteChannel, i9);
    }

    @Override // kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        this.f53810a.w0(i9, outputStream, i10);
        return this;
    }

    @Override // kg.j
    public j w1(ByteOrder byteOrder) {
        return this.f53810a.w1(byteOrder);
    }

    @Override // kg.j
    public j w2(ByteBuffer byteBuffer) {
        this.f53810a.w2(byteBuffer);
        return this;
    }

    @Override // kg.j
    public byte x1() {
        return this.f53810a.x1();
    }

    @Override // kg.j
    public j x2(j jVar) {
        this.f53810a.x2(jVar);
        return this;
    }

    @Override // kg.j
    public byte[] y() {
        return this.f53810a.y();
    }

    @Override // kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        this.f53810a.y0(i9, byteBuffer);
        return this;
    }

    @Override // kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        return this.f53810a.y1(gatheringByteChannel, i9);
    }

    @Override // kg.j
    public j y2(j jVar, int i9) {
        this.f53810a.y2(jVar, i9);
        return this;
    }

    @Override // kg.j
    public int z() {
        return this.f53810a.z();
    }

    @Override // kg.j
    public j z1(int i9) {
        return this.f53810a.z1(i9);
    }

    @Override // kg.j
    public j z2(j jVar, int i9, int i10) {
        this.f53810a.z2(jVar, i9, i10);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return this.f53810a.release(i9);
    }
}
