package kg;

import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class h extends o0 {

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f53815d;

    /* renamed from: e  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f53816e;

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(h.class);
        f53816e = b10;
        boolean d10 = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.leakDetection.acquireAndReleaseOnly", false);
        f53815d = d10;
        if (b10.isDebugEnabled()) {
            b10.debug("-D{}: {}", "io.grpc.netty.shaded.io.netty.leakDetection.acquireAndReleaseOnly", Boolean.valueOf(d10));
        }
        ResourceLeakDetector.d(h.class, "touch", "recordLeakNonRefCountingOperation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(j jVar, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        super(jVar, vVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void T2(io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        if (f53815d) {
            return;
        }
        vVar.c();
    }

    @Override // kg.f1, kg.j
    public j A0(int i9, j jVar, int i10, int i11) {
        T2(this.f53874c);
        return super.A0(i9, jVar, i10, i11);
    }

    @Override // kg.f1, kg.j
    public j A1(OutputStream outputStream, int i9) throws IOException {
        T2(this.f53874c);
        return super.A1(outputStream, i9);
    }

    @Override // kg.f1, kg.j
    public j A2(byte[] bArr) {
        T2(this.f53874c);
        return super.A2(bArr);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j B() {
        T2(this.f53874c);
        return super.B();
    }

    @Override // kg.f1, kg.j
    public j B1(ByteBuffer byteBuffer) {
        T2(this.f53874c);
        return super.B1(byteBuffer);
    }

    @Override // kg.f1, kg.j
    public j B2(byte[] bArr, int i9, int i10) {
        T2(this.f53874c);
        return super.B2(bArr, i9, i10);
    }

    @Override // kg.f1, kg.j
    public j C0(int i9, byte[] bArr) {
        T2(this.f53874c);
        return super.C0(i9, bArr);
    }

    @Override // kg.f1, kg.j
    public j C1(byte[] bArr) {
        T2(this.f53874c);
        return super.C1(bArr);
    }

    @Override // kg.f1, kg.j
    public j C2(int i9) {
        T2(this.f53874c);
        return super.C2(i9);
    }

    @Override // kg.f1, kg.j
    public j D1(byte[] bArr, int i9, int i10) {
        T2(this.f53874c);
        return super.D1(bArr, i9, i10);
    }

    @Override // kg.f1, kg.j
    public int D2(CharSequence charSequence, Charset charset) {
        T2(this.f53874c);
        return super.D2(charSequence, charset);
    }

    @Override // kg.f1, kg.j
    public j E0(int i9, byte[] bArr, int i10, int i11) {
        T2(this.f53874c);
        return super.E0(i9, bArr, i10, i11);
    }

    @Override // kg.f1, kg.j
    public int E1() {
        T2(this.f53874c);
        return super.E1();
    }

    @Override // kg.f1, kg.j
    public j E2(int i9) {
        T2(this.f53874c);
        return super.E2(i9);
    }

    @Override // kg.f1, kg.j
    public int F0(int i9) {
        T2(this.f53874c);
        return super.F0(i9);
    }

    @Override // kg.f1, kg.j
    public int F1() {
        T2(this.f53874c);
        return super.F1();
    }

    @Override // kg.f1, kg.j
    public j F2(int i9) {
        T2(this.f53874c);
        return super.F2(i9);
    }

    @Override // kg.f1, kg.j
    public long G0(int i9) {
        T2(this.f53874c);
        return super.G0(i9);
    }

    @Override // kg.f1, kg.j
    public long G1() {
        T2(this.f53874c);
        return super.G1();
    }

    @Override // kg.f1, kg.j
    public j G2(long j10) {
        T2(this.f53874c);
        return super.G2(j10);
    }

    @Override // kg.f1, kg.j
    public int H0(int i9) {
        T2(this.f53874c);
        return super.H0(i9);
    }

    @Override // kg.f1, kg.j
    public int H1() {
        T2(this.f53874c);
        return super.H1();
    }

    @Override // kg.f1, kg.j
    public j H2(int i9) {
        T2(this.f53874c);
        return super.H2(i9);
    }

    @Override // kg.f1, kg.j
    public j I(int i9) {
        T2(this.f53874c);
        return super.I(i9);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j I1(int i9) {
        T2(this.f53874c);
        return super.I1(i9);
    }

    @Override // kg.f1, kg.j
    public j I2(int i9) {
        T2(this.f53874c);
        return super.I2(i9);
    }

    @Override // kg.f1, kg.j
    public short J1() {
        T2(this.f53874c);
        return super.J1();
    }

    @Override // kg.f1, kg.j
    public j J2(int i9) {
        T2(this.f53874c);
        return super.J2(i9);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j K1(int i9) {
        T2(this.f53874c);
        return super.K1(i9);
    }

    @Override // kg.f1, kg.j
    public short L1() {
        T2(this.f53874c);
        return super.L1();
    }

    @Override // kg.f1, kg.j
    public long M1() {
        T2(this.f53874c);
        return super.M1();
    }

    @Override // kg.f1, kg.j
    public j N() {
        T2(this.f53874c);
        return super.N();
    }

    @Override // kg.f1, kg.j
    public int N1() {
        T2(this.f53874c);
        return super.N1();
    }

    @Override // kg.f1, kg.j
    public int O1() {
        T2(this.f53874c);
        return super.O1();
    }

    @Override // kg.f1, kg.j
    public short P0(int i9) {
        T2(this.f53874c);
        return super.P0(i9);
    }

    @Override // kg.f1, kg.j
    public j Q(int i9, int i10) {
        T2(this.f53874c);
        return super.Q(i9, i10);
    }

    @Override // kg.f1, kg.j
    public short Q0(int i9) {
        T2(this.f53874c);
        return super.Q0(i9);
    }

    @Override // kg.f1, kg.j
    public short R0(int i9) {
        T2(this.f53874c);
        return super.R0(i9);
    }

    @Override // kg.f1, kg.j
    public long S0(int i9) {
        T2(this.f53874c);
        return super.S0(i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kg.o0
    /* renamed from: S2 */
    public h O2(j jVar, j jVar2, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        return new h(jVar, jVar2, vVar);
    }

    @Override // kg.f1, kg.j
    public long T0(int i9) {
        T2(this.f53874c);
        return super.T0(i9);
    }

    @Override // kg.f1, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public j retain() {
        this.f53874c.c();
        return super.retain();
    }

    @Override // kg.f1, kg.j
    public j U1(int i9) {
        this.f53874c.c();
        return super.U1(i9);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j V1() {
        T2(this.f53874c);
        return super.V1();
    }

    @Override // kg.o0, kg.f1, kg.j
    public j W1() {
        T2(this.f53874c);
        return super.W1();
    }

    @Override // kg.f1, kg.j
    public int X0(int i9) {
        T2(this.f53874c);
        return super.X0(i9);
    }

    @Override // kg.f1, kg.j
    public j X1(int i9, int i10) {
        T2(this.f53874c);
        return super.X1(i9, i10);
    }

    @Override // kg.f1, kg.j
    public int Y0(int i9) {
        T2(this.f53874c);
        return super.Y0(i9);
    }

    @Override // kg.f1, kg.j
    public int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException {
        T2(this.f53874c);
        return super.Y1(i9, scatteringByteChannel, i10);
    }

    @Override // kg.f1, kg.j
    public j Z1(int i9, ByteBuffer byteBuffer) {
        T2(this.f53874c);
        return super.Z1(i9, byteBuffer);
    }

    @Override // kg.f1, kg.j
    public j a2(int i9, j jVar, int i10, int i11) {
        T2(this.f53874c);
        return super.a2(i9, jVar, i10, i11);
    }

    @Override // kg.f1, kg.j
    public j b2(int i9, byte[] bArr, int i10, int i11) {
        T2(this.f53874c);
        return super.b2(i9, bArr, i10, i11);
    }

    @Override // kg.f1, kg.j
    public j c0() {
        T2(this.f53874c);
        return super.c0();
    }

    @Override // kg.f1, kg.j
    public int c2(int i9, CharSequence charSequence, Charset charset) {
        T2(this.f53874c);
        return super.c2(i9, charSequence, charset);
    }

    @Override // kg.f1, kg.j
    public int d1(int i9, int i10, byte b10) {
        T2(this.f53874c);
        return super.d1(i9, i10, b10);
    }

    @Override // kg.f1, kg.j
    public ByteBuffer e1(int i9, int i10) {
        T2(this.f53874c);
        return super.e1(i9, i10);
    }

    @Override // kg.f1, kg.j
    public j e2(int i9, int i10) {
        T2(this.f53874c);
        return super.e2(i9, i10);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j f0() {
        T2(this.f53874c);
        return super.f0();
    }

    @Override // kg.f1, kg.j
    public j f2(int i9, int i10) {
        T2(this.f53874c);
        return super.f2(i9, i10);
    }

    @Override // kg.f1, kg.j
    public j g2(int i9, long j10) {
        T2(this.f53874c);
        return super.g2(i9, j10);
    }

    @Override // kg.f1, kg.j
    public int getInt(int i9) {
        T2(this.f53874c);
        return super.getInt(i9);
    }

    @Override // kg.f1, kg.j
    public long getLong(int i9) {
        T2(this.f53874c);
        return super.getLong(i9);
    }

    @Override // kg.f1, kg.j
    public j h2(int i9, int i10) {
        T2(this.f53874c);
        return super.h2(i9, i10);
    }

    @Override // kg.f1, kg.j
    public j i2(int i9, int i10) {
        T2(this.f53874c);
        return super.i2(i9, i10);
    }

    @Override // kg.f1, kg.j
    public j j2(int i9, int i10) {
        T2(this.f53874c);
        return super.j2(i9, i10);
    }

    @Override // kg.f1, kg.j
    public j k2(int i9, int i10) {
        T2(this.f53874c);
        return super.k2(i9, i10);
    }

    @Override // kg.f1, kg.j
    public j l2(int i9) {
        T2(this.f53874c);
        return super.l2(i9);
    }

    @Override // kg.f1, kg.j
    public int m0(int i9, boolean z10) {
        T2(this.f53874c);
        return super.m0(i9, z10);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j m2() {
        T2(this.f53874c);
        return super.m2();
    }

    @Override // kg.f1, kg.j
    public j n0(int i9) {
        T2(this.f53874c);
        return super.n0(i9);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j n2(int i9, int i10) {
        T2(this.f53874c);
        return super.n2(i9, i10);
    }

    @Override // kg.f1, kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        T2(this.f53874c);
        return super.o0(i9, i10, gVar);
    }

    @Override // kg.f1, kg.j
    public String o2(int i9, int i10, Charset charset) {
        T2(this.f53874c);
        return super.o2(i9, i10, charset);
    }

    @Override // kg.f1, kg.j
    public int p0(io.grpc.netty.shaded.io.netty.util.g gVar) {
        T2(this.f53874c);
        return super.p0(gVar);
    }

    @Override // kg.f1, kg.j
    public String p2(Charset charset) {
        T2(this.f53874c);
        return super.p2(charset);
    }

    @Override // kg.f1, kg.j
    public ByteBuffer q1() {
        T2(this.f53874c);
        return super.q1();
    }

    @Override // kg.o0, kg.j
    public j q2() {
        this.f53874c.c();
        return this;
    }

    @Override // kg.f1, kg.j
    public ByteBuffer r1(int i9, int i10) {
        T2(this.f53874c);
        return super.r1(i9, i10);
    }

    @Override // kg.o0, kg.j, io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: r2 */
    public j touch(Object obj) {
        this.f53874c.a(obj);
        return this;
    }

    @Override // kg.o0, kg.f1, io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        this.f53874c.c();
        return super.release();
    }

    @Override // kg.f1, kg.j
    public int s1() {
        T2(this.f53874c);
        return super.s1();
    }

    @Override // kg.f1, kg.j
    public ByteBuffer[] t1() {
        T2(this.f53874c);
        return super.t1();
    }

    @Override // kg.f1, kg.j
    public byte u0(int i9) {
        T2(this.f53874c);
        return super.u0(i9);
    }

    @Override // kg.f1, kg.j
    public ByteBuffer[] u1(int i9, int i10) {
        T2(this.f53874c);
        return super.u1(i9, i10);
    }

    @Override // kg.f1, kg.j
    public j u2(int i9) {
        T2(this.f53874c);
        return super.u2(i9);
    }

    @Override // kg.f1, kg.j
    public int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException {
        T2(this.f53874c);
        return super.v0(i9, gatheringByteChannel, i10);
    }

    @Override // kg.f1, kg.j
    public int v2(ScatteringByteChannel scatteringByteChannel, int i9) throws IOException {
        T2(this.f53874c);
        return super.v2(scatteringByteChannel, i9);
    }

    @Override // kg.f1, kg.j
    public j w0(int i9, OutputStream outputStream, int i10) throws IOException {
        T2(this.f53874c);
        return super.w0(i9, outputStream, i10);
    }

    @Override // kg.o0, kg.f1, kg.j
    public j w1(ByteOrder byteOrder) {
        T2(this.f53874c);
        return super.w1(byteOrder);
    }

    @Override // kg.f1, kg.j
    public j w2(ByteBuffer byteBuffer) {
        T2(this.f53874c);
        return super.w2(byteBuffer);
    }

    @Override // kg.f1, kg.j
    public byte x1() {
        T2(this.f53874c);
        return super.x1();
    }

    @Override // kg.f1, kg.j
    public j x2(j jVar) {
        T2(this.f53874c);
        return super.x2(jVar);
    }

    @Override // kg.f1, kg.j
    public j y0(int i9, ByteBuffer byteBuffer) {
        T2(this.f53874c);
        return super.y0(i9, byteBuffer);
    }

    @Override // kg.f1, kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        T2(this.f53874c);
        return super.y1(gatheringByteChannel, i9);
    }

    @Override // kg.f1, kg.j
    public j y2(j jVar, int i9) {
        T2(this.f53874c);
        return super.y2(jVar, i9);
    }

    @Override // kg.f1, kg.j
    public j z1(int i9) {
        T2(this.f53874c);
        return super.z1(i9);
    }

    @Override // kg.f1, kg.j
    public j z2(j jVar, int i9, int i10) {
        T2(this.f53874c);
        return super.z2(jVar, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(j jVar, j jVar2, io.grpc.netty.shaded.io.netty.util.v<j> vVar) {
        super(jVar, jVar2, vVar);
    }

    @Override // kg.o0, kg.f1, io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        this.f53874c.c();
        return super.release(i9);
    }
}
