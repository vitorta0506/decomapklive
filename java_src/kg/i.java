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
public final class i extends p0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i(o oVar, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        super(oVar, vVar);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j B() {
        h.T2(this.f53876z);
        return super.B();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: B4 */
    public o e2(int i9, int i10) {
        h.T2(this.f53876z);
        return super.e2(i9, i10);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: C4 */
    public o g2(int i9, long j10) {
        h.T2(this.f53876z);
        return super.g2(i9, j10);
    }

    @Override // kg.g1, kg.a, kg.j
    public int D2(CharSequence charSequence, Charset charset) {
        h.T2(this.f53876z);
        return super.D2(charSequence, charset);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: D4 */
    public o h2(int i9, int i10) {
        h.T2(this.f53876z);
        return super.h2(i9, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public int E1() {
        h.T2(this.f53876z);
        return super.E1();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: E4 */
    public o i2(int i9, int i10) {
        h.T2(this.f53876z);
        return super.i2(i9, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public int F0(int i9) {
        h.T2(this.f53876z);
        return super.F0(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public int F1() {
        h.T2(this.f53876z);
        return super.F1();
    }

    @Override // kg.g1, kg.a, kg.j
    public j F2(int i9) {
        h.T2(this.f53876z);
        return super.F2(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: F4 */
    public o k2(int i9, int i10) {
        h.T2(this.f53876z);
        return super.k2(i9, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public long G0(int i9) {
        h.T2(this.f53876z);
        return super.G0(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public long G1() {
        h.T2(this.f53876z);
        return super.G1();
    }

    @Override // kg.g1, kg.a, kg.j
    public int H0(int i9) {
        h.T2(this.f53876z);
        return super.H0(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public int H1() {
        h.T2(this.f53876z);
        return super.H1();
    }

    @Override // kg.g1, kg.o
    public o H3(boolean z10, int i9, j jVar) {
        h.T2(this.f53876z);
        return super.H3(z10, i9, jVar);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: H4 */
    public o l2(int i9) {
        h.T2(this.f53876z);
        return super.l2(i9);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j I1(int i9) {
        h.T2(this.f53876z);
        return super.I1(i9);
    }

    @Override // kg.g1, kg.o
    public o I3(boolean z10, j jVar) {
        h.T2(this.f53876z);
        return super.I3(z10, jVar);
    }

    @Override // kg.g1, kg.a, kg.j
    public short J1() {
        h.T2(this.f53876z);
        return super.J1();
    }

    @Override // kg.g1, kg.o, kg.e, kg.j
    /* renamed from: J4 */
    public o q2() {
        this.f53876z.c();
        return this;
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j K1(int i9) {
        h.T2(this.f53876z);
        return super.K1(i9);
    }

    @Override // kg.g1, kg.o
    public o K3(boolean z10, j jVar) {
        h.T2(this.f53876z);
        return super.K3(z10, jVar);
    }

    @Override // kg.g1, kg.o, kg.e, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: K4 */
    public o touch(Object obj) {
        this.f53876z.a(obj);
        return this;
    }

    @Override // kg.g1, kg.a, kg.j
    public short L1() {
        h.T2(this.f53876z);
        return super.L1();
    }

    @Override // kg.g1, kg.a, kg.j
    public long M1() {
        h.T2(this.f53876z);
        return super.M1();
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: M3 */
    public o I(int i9) {
        h.T2(this.f53876z);
        return super.I(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: M4 */
    public o u2(int i9) {
        h.T2(this.f53876z);
        return super.u2(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public j N() {
        h.T2(this.f53876z);
        return super.N();
    }

    @Override // kg.g1, kg.a, kg.j
    public int N1() {
        h.T2(this.f53876z);
        return super.N1();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: N4 */
    public o w2(ByteBuffer byteBuffer) {
        h.T2(this.f53876z);
        return super.w2(byteBuffer);
    }

    @Override // kg.g1, kg.a, kg.j
    public int O1() {
        h.T2(this.f53876z);
        return super.O1();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: O4 */
    public o x2(j jVar) {
        h.T2(this.f53876z);
        return super.x2(jVar);
    }

    @Override // kg.g1, kg.a, kg.j
    public short P0(int i9) {
        h.T2(this.f53876z);
        return super.P0(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: P4 */
    public o y2(j jVar, int i9) {
        h.T2(this.f53876z);
        return super.y2(jVar, i9);
    }

    @Override // kg.g1, kg.o, kg.j
    public j Q(int i9, int i10) {
        h.T2(this.f53876z);
        return super.Q(i9, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public short Q0(int i9) {
        h.T2(this.f53876z);
        return super.Q0(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: Q4 */
    public o z2(j jVar, int i9, int i10) {
        h.T2(this.f53876z);
        return super.z2(jVar, i9, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public short R0(int i9) {
        h.T2(this.f53876z);
        return super.R0(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: R4 */
    public o A2(byte[] bArr) {
        h.T2(this.f53876z);
        return super.A2(bArr);
    }

    @Override // kg.g1, kg.a, kg.j
    public long S0(int i9) {
        h.T2(this.f53876z);
        return super.S0(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: S4 */
    public o B2(byte[] bArr, int i9, int i10) {
        h.T2(this.f53876z);
        return super.B2(bArr, i9, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public long T0(int i9) {
        h.T2(this.f53876z);
        return super.T0(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: T4 */
    public o C2(int i9) {
        h.T2(this.f53876z);
        return super.C2(i9);
    }

    @Override // kg.g1, kg.o
    public o U3() {
        h.T2(this.f53876z);
        return super.U3();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: U4 */
    public o E2(int i9) {
        h.T2(this.f53876z);
        return super.E2(i9);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j V1() {
        h.T2(this.f53876z);
        return super.V1();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: V3 */
    public o c0() {
        h.T2(this.f53876z);
        return super.c0();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: V4 */
    public o G2(long j10) {
        h.T2(this.f53876z);
        return super.G2(j10);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j W1() {
        h.T2(this.f53876z);
        return super.W1();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: W4 */
    public o H2(int i9) {
        h.T2(this.f53876z);
        return super.H2(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public int X0(int i9) {
        h.T2(this.f53876z);
        return super.X0(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: X3 */
    public o n0(int i9) {
        h.T2(this.f53876z);
        return super.n0(i9);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: X4 */
    public o I2(int i9) {
        h.T2(this.f53876z);
        return super.I2(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public int Y0(int i9) {
        h.T2(this.f53876z);
        return super.Y0(i9);
    }

    @Override // kg.g1, kg.o, kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        h.T2(this.f53876z);
        return super.Y1(i9, scatteringByteChannel, i10);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: Y4 */
    public o J2(int i9) {
        h.T2(this.f53876z);
        return super.J2(i9);
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: b4 */
    public o w0(int i9, OutputStream outputStream, int i10) throws IOException {
        h.T2(this.f53876z);
        return super.w0(i9, outputStream, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public int c2(int i9, CharSequence charSequence, Charset charset) {
        h.T2(this.f53876z);
        return super.c2(i9, charSequence, charset);
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: c4 */
    public o y0(int i9, ByteBuffer byteBuffer) {
        h.T2(this.f53876z);
        return super.y0(i9, byteBuffer);
    }

    @Override // kg.g1, kg.a, kg.j
    public int d1(int i9, int i10, byte b10) {
        h.T2(this.f53876z);
        return super.d1(i9, i10, b10);
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: d4 */
    public o A0(int i9, j jVar, int i10, int i11) {
        h.T2(this.f53876z);
        return super.A0(i9, jVar, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.p0
    /* renamed from: d5 */
    public h c5(j jVar, j jVar2, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        return new h(jVar, jVar2, vVar);
    }

    @Override // kg.g1, kg.o, kg.j
    public ByteBuffer e1(int i9, int i10) {
        h.T2(this.f53876z);
        return super.e1(i9, i10);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: e4 */
    public o C0(int i9, byte[] bArr) {
        h.T2(this.f53876z);
        return super.C0(i9, bArr);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j f0() {
        h.T2(this.f53876z);
        return super.f0();
    }

    @Override // kg.g1, kg.a, kg.j
    public j f2(int i9, int i10) {
        h.T2(this.f53876z);
        return super.f2(i9, i10);
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: f4 */
    public o E0(int i9, byte[] bArr, int i10, int i11) {
        h.T2(this.f53876z);
        return super.E0(i9, bArr, i10, i11);
    }

    @Override // kg.g1, kg.a, kg.j
    public int getInt(int i9) {
        h.T2(this.f53876z);
        return super.getInt(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public long getLong(int i9) {
        h.T2(this.f53876z);
        return super.getLong(i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public boolean i1() {
        h.T2(this.f53876z);
        return super.i1();
    }

    @Override // kg.g1, kg.o, java.lang.Iterable
    public Iterator<j> iterator() {
        h.T2(this.f53876z);
        return super.iterator();
    }

    @Override // kg.g1, kg.a, kg.j
    public j j2(int i9, int i10) {
        h.T2(this.f53876z);
        return super.j2(i9, i10);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: l4 */
    public o A1(OutputStream outputStream, int i9) throws IOException {
        h.T2(this.f53876z);
        return super.A1(outputStream, i9);
    }

    @Override // kg.g1, kg.a, kg.j
    public int m0(int i9, boolean z10) {
        h.T2(this.f53876z);
        return super.m0(i9, z10);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j m2() {
        h.T2(this.f53876z);
        return super.m2();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: m4 */
    public o B1(ByteBuffer byteBuffer) {
        h.T2(this.f53876z);
        return super.B1(byteBuffer);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j n2(int i9, int i10) {
        h.T2(this.f53876z);
        return super.n2(i9, i10);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: n4 */
    public o C1(byte[] bArr) {
        h.T2(this.f53876z);
        return super.C1(bArr);
    }

    @Override // kg.g1, kg.a, kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        h.T2(this.f53876z);
        return super.o0(i9, i10, gVar);
    }

    @Override // kg.g1, kg.a, kg.j
    public String o2(int i9, int i10, Charset charset) {
        h.T2(this.f53876z);
        return super.o2(i9, i10, charset);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: o4 */
    public o D1(byte[] bArr, int i9, int i10) {
        h.T2(this.f53876z);
        return super.D1(bArr, i9, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public int p0(io.grpc.netty.shaded.io.netty.util.g gVar) {
        h.T2(this.f53876z);
        return super.p0(gVar);
    }

    @Override // kg.g1, kg.a, kg.j
    public String p2(Charset charset) {
        h.T2(this.f53876z);
        return super.p2(charset);
    }

    @Override // kg.g1, kg.a, kg.j
    public ByteBuffer q1() {
        h.T2(this.f53876z);
        return super.q1();
    }

    @Override // kg.g1, kg.o, kg.j
    public ByteBuffer r1(int i9, int i10) {
        h.T2(this.f53876z);
        return super.r1(i9, i10);
    }

    @Override // kg.p0, kg.g1, kg.e, io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        this.f53876z.c();
        return super.release();
    }

    @Override // kg.g1, kg.o, kg.j
    public int s1() {
        h.T2(this.f53876z);
        return super.s1();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    public ByteBuffer[] t1() {
        h.T2(this.f53876z);
        return super.t1();
    }

    @Override // kg.g1, kg.o, kg.e, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: t4 */
    public o retain() {
        this.f53876z.c();
        return super.retain();
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    public byte u0(int i9) {
        h.T2(this.f53876z);
        return super.u0(i9);
    }

    @Override // kg.g1, kg.o, kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        h.T2(this.f53876z);
        return super.u1(i9, i10);
    }

    @Override // kg.g1, kg.o, kg.e, kg.j
    /* renamed from: u4 */
    public o U1(int i9) {
        this.f53876z.c();
        return super.U1(i9);
    }

    @Override // kg.g1, kg.o, kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        h.T2(this.f53876z);
        return super.v0(i9, gatheringByteChannel, i10);
    }

    @Override // kg.g1, kg.a, kg.j
    public int v2(ScatteringByteChannel scatteringByteChannel, int i9) throws IOException {
        h.T2(this.f53876z);
        return super.v2(scatteringByteChannel, i9);
    }

    @Override // kg.p0, kg.g1, kg.a
    public j v3(int i9, int i10) {
        h.T2(this.f53876z);
        return super.v3(i9, i10);
    }

    @Override // kg.g1, kg.o, kg.a, kg.j
    /* renamed from: v4 */
    public o X1(int i9, int i10) {
        h.T2(this.f53876z);
        return super.X1(i9, i10);
    }

    @Override // kg.p0, kg.g1, kg.a, kg.j
    public j w1(ByteOrder byteOrder) {
        h.T2(this.f53876z);
        return super.w1(byteOrder);
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: w4 */
    public o Z1(int i9, ByteBuffer byteBuffer) {
        h.T2(this.f53876z);
        return super.Z1(i9, byteBuffer);
    }

    @Override // kg.g1, kg.a, kg.j
    public byte x1() {
        h.T2(this.f53876z);
        return super.x1();
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: x4 */
    public o a2(int i9, j jVar, int i10, int i11) {
        h.T2(this.f53876z);
        return super.a2(i9, jVar, i10, i11);
    }

    @Override // kg.g1, kg.a, kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        h.T2(this.f53876z);
        return super.y1(gatheringByteChannel, i9);
    }

    @Override // kg.g1, kg.o, kg.a
    /* renamed from: y4 */
    public o w3(int i9, byte[] bArr) {
        h.T2(this.f53876z);
        return super.w3(i9, bArr);
    }

    @Override // kg.g1, kg.a, kg.j
    public j z1(int i9) {
        h.T2(this.f53876z);
        return super.z1(i9);
    }

    @Override // kg.g1, kg.o, kg.j
    /* renamed from: z4 */
    public o b2(int i9, byte[] bArr, int i10, int i11) {
        h.T2(this.f53876z);
        return super.b2(i9, bArr, i10, i11);
    }

    @Override // kg.p0, kg.g1, kg.e, io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        this.f53876z.c();
        return super.release(i9);
    }
}
