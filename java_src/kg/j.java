package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
/* loaded from: classes5.dex */
public abstract class j implements io.grpc.netty.shaded.io.netty.util.s, Comparable<j> {
    public abstract j A0(int i9, j jVar, int i10, int i11);

    public abstract j A1(OutputStream outputStream, int i9) throws IOException;

    public abstract j A2(byte[] bArr);

    public abstract j B();

    public abstract j B1(ByteBuffer byteBuffer);

    public abstract j B2(byte[] bArr, int i9, int i10);

    public abstract j C0(int i9, byte[] bArr);

    public abstract j C1(byte[] bArr);

    public abstract j C2(int i9);

    public abstract j D1(byte[] bArr, int i9, int i10);

    public abstract int D2(CharSequence charSequence, Charset charset);

    public abstract j E0(int i9, byte[] bArr, int i10, int i11);

    public abstract int E1();

    public abstract j E2(int i9);

    public abstract int F();

    public abstract int F0(int i9);

    public abstract int F1();

    public abstract j F2(int i9);

    public abstract long G0(int i9);

    public abstract long G1();

    public abstract j G2(long j10);

    public abstract int H0(int i9);

    public abstract int H1();

    public abstract j H2(int i9);

    public abstract j I(int i9);

    public abstract j I1(int i9);

    public abstract j I2(int i9);

    public abstract short J1();

    public abstract j J2(int i9);

    public abstract j K1(int i9);

    public abstract int K2();

    public abstract j L();

    public abstract short L1();

    public abstract j L2(int i9);

    @Override // java.lang.Comparable
    /* renamed from: M */
    public abstract int compareTo(j jVar);

    public abstract long M1();

    public abstract j N();

    public abstract int N1();

    public abstract int O1();

    public abstract k P();

    public abstract short P0(int i9);

    public abstract int P1();

    public abstract j Q(int i9, int i10);

    public abstract short Q0(int i9);

    public abstract int Q1();

    public abstract short R0(int i9);

    public abstract j R1(int i9);

    public abstract long S0(int i9);

    public abstract j S1();

    public abstract long T0(int i9);

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: T1 */
    public abstract j retain();

    public abstract j U1(int i9);

    public abstract j V1();

    public abstract j W1();

    public abstract int X0(int i9);

    public abstract j X1(int i9, int i10);

    public abstract int Y0(int i9);

    public abstract int Y1(int i9, ScatteringByteChannel scatteringByteChannel, int i10) throws IOException;

    public abstract j Z1(int i9, ByteBuffer byteBuffer);

    public abstract boolean a1();

    public abstract j a2(int i9, j jVar, int i10, int i11);

    public abstract boolean b1();

    public abstract j b2(int i9, byte[] bArr, int i10, int i11);

    public abstract j c0();

    public abstract int c2(int i9, CharSequence charSequence, Charset charset);

    public abstract int d1(int i9, int i10, byte b10);

    public abstract j d2(int i9, int i10);

    public abstract ByteBuffer e1(int i9, int i10);

    public abstract j e2(int i9, int i10);

    public abstract boolean equals(Object obj);

    public abstract j f0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f1() {
        return refCnt() != 0;
    }

    public abstract j f2(int i9, int i10);

    public boolean g1() {
        return false;
    }

    public abstract j g2(int i9, long j10);

    public abstract int getInt(int i9);

    public abstract long getLong(int i9);

    public abstract boolean h1();

    public abstract j h2(int i9, int i10);

    public abstract int hashCode();

    public abstract boolean i1();

    public abstract j i2(int i9, int i10);

    public abstract boolean j1();

    public abstract j j2(int i9, int i10);

    public abstract boolean k1(int i9);

    public abstract j k2(int i9, int i10);

    public abstract j l1();

    public abstract j l2(int i9);

    public abstract int m0(int i9, boolean z10);

    public abstract int m1();

    public abstract j m2();

    public abstract j n0(int i9);

    public int n1() {
        return t2();
    }

    public abstract j n2(int i9, int i10);

    public abstract int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar);

    public abstract int o1();

    public abstract String o2(int i9, int i10, Charset charset);

    public abstract int p0(io.grpc.netty.shaded.io.netty.util.g gVar);

    public abstract long p1();

    public abstract String p2(Charset charset);

    public abstract boolean q0();

    public abstract ByteBuffer q1();

    public abstract j q2();

    public abstract ByteBuffer r1(int i9, int i10);

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: r2 */
    public abstract j touch(Object obj);

    public abstract int s1();

    public abstract j s2();

    public abstract ByteBuffer[] t1();

    public abstract int t2();

    public abstract String toString();

    public abstract byte u0(int i9);

    public abstract ByteBuffer[] u1(int i9, int i10);

    public abstract j u2(int i9);

    public abstract int v0(int i9, GatheringByteChannel gatheringByteChannel, int i10) throws IOException;

    @Deprecated
    public abstract ByteOrder v1();

    public abstract int v2(ScatteringByteChannel scatteringByteChannel, int i9) throws IOException;

    public abstract j w0(int i9, OutputStream outputStream, int i10) throws IOException;

    @Deprecated
    public abstract j w1(ByteOrder byteOrder);

    public abstract j w2(ByteBuffer byteBuffer);

    public abstract byte x1();

    public abstract j x2(j jVar);

    public abstract byte[] y();

    public abstract j y0(int i9, ByteBuffer byteBuffer);

    public abstract int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException;

    public abstract j y2(j jVar, int i9);

    public abstract int z();

    public abstract j z1(int i9);

    public abstract j z2(j jVar, int i9, int i10);
}
