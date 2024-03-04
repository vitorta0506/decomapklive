package kg;

import androidx.core.view.ViewCompat;
import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import kotlin.UByte;
import kotlin.UShort;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public abstract class a extends j {

    /* renamed from: f  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f53713f;

    /* renamed from: g  reason: collision with root package name */
    static final boolean f53714g;

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f53715h;

    /* renamed from: i  reason: collision with root package name */
    static final ResourceLeakDetector<j> f53716i;

    /* renamed from: a  reason: collision with root package name */
    int f53717a;

    /* renamed from: b  reason: collision with root package name */
    int f53718b;

    /* renamed from: c  reason: collision with root package name */
    private int f53719c;

    /* renamed from: d  reason: collision with root package name */
    private int f53720d;

    /* renamed from: e  reason: collision with root package name */
    private int f53721e;

    static {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(a.class);
        f53713f = b10;
        if (io.grpc.netty.shaded.io.netty.util.internal.c0.a("io.grpc.netty.shaded.io.netty.buffer.checkAccessible")) {
            f53714g = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.buffer.checkAccessible", true);
        } else {
            f53714g = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.buffer.bytebuf.checkAccessible", true);
        }
        boolean d10 = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.buffer.checkBounds", true);
        f53715h = d10;
        if (b10.isDebugEnabled()) {
            b10.debug("-D{}: {}", "io.grpc.netty.shaded.io.netty.buffer.checkAccessible", Boolean.valueOf(f53714g));
            b10.debug("-D{}: {}", "io.grpc.netty.shaded.io.netty.buffer.checkBounds", Boolean.valueOf(d10));
        }
        f53716i = io.grpc.netty.shaded.io.netty.util.t.b().c(j.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "maxCapacity");
        this.f53721e = i9;
    }

    private static void h3(int i9, int i10, int i11) {
        if (i9 < 0 || i9 > i10 || i10 > i11) {
            throw new IndexOutOfBoundsException(String.format("readerIndex: %d, writerIndex: %d (expected: 0 <= readerIndex <= writerIndex <= capacity(%d))", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
    }

    private static void j3(String str, int i9, int i10, int i11) {
        if (io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i10, i11)) {
            throw new IndexOutOfBoundsException(String.format("%s: %d, length: %d (expected: range(0, %d))", str, Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
    }

    private static void k3(j jVar, int i9) {
        if (i9 > jVar.P1()) {
            throw new IndexOutOfBoundsException(String.format("length(%d) exceeds src.readableBytes(%d) where src is: %s", Integer.valueOf(i9), Integer.valueOf(jVar.P1()), jVar));
        }
    }

    private void m3(int i9) {
        p3();
        if (f53715h && this.f53717a > this.f53718b - i9) {
            throw new IndexOutOfBoundsException(String.format("readerIndex(%d) + length(%d) exceeds writerIndex(%d): %s", Integer.valueOf(this.f53717a), Integer.valueOf(i9), Integer.valueOf(this.f53718b), this));
        }
    }

    private int x3(int i9, CharSequence charSequence, Charset charset, boolean z10) {
        if (charset.equals(io.grpc.netty.shaded.io.netty.util.h.f45016d)) {
            int W = n.W(charSequence);
            if (z10) {
                q3(W);
                g3(i9, W);
            } else {
                f3(i9, W);
            }
            return n.c0(this, i9, W, charSequence, charSequence.length());
        } else if (!charset.equals(io.grpc.netty.shaded.io.netty.util.h.f45018f) && !charset.equals(io.grpc.netty.shaded.io.netty.util.h.f45017e)) {
            byte[] bytes = charSequence.toString().getBytes(charset);
            if (z10) {
                q3(bytes.length);
            }
            w3(i9, bytes);
            return bytes.length;
        } else {
            int length = charSequence.length();
            if (z10) {
                q3(length);
                g3(i9, length);
            } else {
                f3(i9, length);
            }
            return n.X(this, i9, charSequence, length);
        }
    }

    @Override // kg.j
    public j A1(OutputStream outputStream, int i9) throws IOException {
        l3(i9);
        w0(this.f53717a, outputStream, i9);
        this.f53717a += i9;
        return this;
    }

    @Override // kg.j
    public j A2(byte[] bArr) {
        B2(bArr, 0, bArr.length);
        return this;
    }

    @Override // kg.j
    public j B() {
        return i1() ? this : s0.h(this);
    }

    @Override // kg.j
    public j B1(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        l3(remaining);
        y0(this.f53717a, byteBuffer);
        this.f53717a += remaining;
        return this;
    }

    @Override // kg.j
    public j B2(byte[] bArr, int i9, int i10) {
        n0(i10);
        b2(this.f53718b, bArr, i9, i10);
        this.f53718b += i10;
        return this;
    }

    @Override // kg.j
    public j C0(int i9, byte[] bArr) {
        E0(i9, bArr, 0, bArr.length);
        return this;
    }

    @Override // kg.j
    public j C1(byte[] bArr) {
        D1(bArr, 0, bArr.length);
        return this;
    }

    @Override // kg.j
    public j C2(int i9) {
        I2(i9);
        return this;
    }

    @Override // kg.j
    public j D1(byte[] bArr, int i9, int i10) {
        l3(i10);
        E0(this.f53717a, bArr, i9, i10);
        this.f53717a += i10;
        return this;
    }

    @Override // kg.j
    public int D2(CharSequence charSequence, Charset charset) {
        int x32 = x3(this.f53718b, charSequence, charset, true);
        this.f53718b += x32;
        return x32;
    }

    @Override // kg.j
    public int E1() {
        m3(4);
        int N2 = N2(this.f53717a);
        this.f53717a += 4;
        return N2;
    }

    @Override // kg.j
    public j E2(int i9) {
        q3(4);
        V2(this.f53718b, i9);
        this.f53718b += 4;
        return this;
    }

    @Override // kg.j
    public int F0(int i9) {
        f3(i9, 4);
        return O2(i9);
    }

    @Override // kg.j
    public int F1() {
        m3(4);
        int O2 = O2(this.f53717a);
        this.f53717a += 4;
        return O2;
    }

    @Override // kg.j
    public j F2(int i9) {
        q3(4);
        W2(this.f53718b, i9);
        this.f53718b += 4;
        return this;
    }

    @Override // kg.j
    public long G0(int i9) {
        f3(i9, 8);
        return Q2(i9);
    }

    @Override // kg.j
    public long G1() {
        m3(8);
        long P2 = P2(this.f53717a);
        this.f53717a += 8;
        return P2;
    }

    @Override // kg.j
    public j G2(long j10) {
        q3(8);
        X2(this.f53718b, j10);
        this.f53718b += 8;
        return this;
    }

    @Override // kg.j
    public int H0(int i9) {
        int X0 = X0(i9);
        return (8388608 & X0) != 0 ? X0 | ViewCompat.MEASURED_STATE_MASK : X0;
    }

    @Override // kg.j
    public int H1() {
        int N1 = N1();
        return (8388608 & N1) != 0 ? N1 | ViewCompat.MEASURED_STATE_MASK : N1;
    }

    @Override // kg.j
    public j H2(int i9) {
        q3(3);
        Y2(this.f53718b, i9);
        this.f53718b += 3;
        return this;
    }

    @Override // kg.j
    public j I1(int i9) {
        l3(i9);
        j v32 = v3(this.f53717a, i9);
        this.f53717a += i9;
        return v32;
    }

    @Override // kg.j
    public j I2(int i9) {
        q3(2);
        Z2(this.f53718b, i9);
        this.f53718b += 2;
        return this;
    }

    @Override // kg.j
    public short J1() {
        m3(2);
        short R2 = R2(this.f53717a);
        this.f53717a += 2;
        return R2;
    }

    @Override // kg.j
    public j J2(int i9) {
        if (i9 == 0) {
            return this;
        }
        n0(i9);
        int i10 = this.f53718b;
        g3(i10, i9);
        int i11 = i9 & 7;
        for (int i12 = i9 >>> 3; i12 > 0; i12--) {
            X2(i10, 0L);
            i10 += 8;
        }
        if (i11 == 4) {
            V2(i10, 0);
            i10 += 4;
        } else if (i11 < 4) {
            while (i11 > 0) {
                U2(i10, 0);
                i10++;
                i11--;
            }
        } else {
            V2(i10, 0);
            i10 += 4;
            for (int i13 = i11 - 4; i13 > 0; i13--) {
                U2(i10, 0);
                i10++;
            }
        }
        this.f53718b = i10;
        return this;
    }

    @Override // kg.j
    public j K1(int i9) {
        l3(i9);
        j n22 = n2(this.f53717a, i9);
        this.f53717a += i9;
        return n22;
    }

    @Override // kg.j
    public int K2() {
        return this.f53718b;
    }

    @Override // kg.j
    public j L() {
        this.f53718b = 0;
        this.f53717a = 0;
        return this;
    }

    @Override // kg.j
    public short L1() {
        return (short) (x1() & UByte.MAX_VALUE);
    }

    @Override // kg.j
    public j L2(int i9) {
        if (f53715h) {
            h3(this.f53717a, i9, F());
        }
        this.f53718b = i9;
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

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract byte M2(int i9);

    @Override // kg.j
    public j N() {
        return Q(this.f53717a, P1());
    }

    @Override // kg.j
    public int N1() {
        m3(3);
        int T2 = T2(this.f53717a);
        this.f53717a += 3;
        return T2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int N2(int i9);

    @Override // kg.j
    public int O1() {
        return J1() & UShort.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int O2(int i9);

    @Override // kg.j
    public short P0(int i9) {
        f3(i9, 2);
        return R2(i9);
    }

    @Override // kg.j
    public int P1() {
        return this.f53718b - this.f53717a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long P2(int i9);

    @Override // kg.j
    public short Q0(int i9) {
        f3(i9, 2);
        return S2(i9);
    }

    @Override // kg.j
    public int Q1() {
        return this.f53717a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long Q2(int i9);

    @Override // kg.j
    public short R0(int i9) {
        return (short) (u0(i9) & UByte.MAX_VALUE);
    }

    @Override // kg.j
    public j R1(int i9) {
        if (f53715h) {
            h3(i9, this.f53718b, F());
        }
        this.f53717a = i9;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract short R2(int i9);

    @Override // kg.j
    public long S0(int i9) {
        return getInt(i9) & 4294967295L;
    }

    @Override // kg.j
    public j S1() {
        R1(this.f53719c);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract short S2(int i9);

    @Override // kg.j
    public long T0(int i9) {
        return F0(i9) & 4294967295L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int T2(int i9);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void U2(int i9, int i10);

    @Override // kg.j
    public j V1() {
        return f0().retain();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void V2(int i9, int i10);

    @Override // kg.j
    public j W1() {
        return m2().retain();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void W2(int i9, int i10);

    @Override // kg.j
    public int X0(int i9) {
        f3(i9, 3);
        return T2(i9);
    }

    @Override // kg.j
    public j X1(int i9, int i10) {
        e3(i9);
        U2(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void X2(int i9, long j10);

    @Override // kg.j
    public int Y0(int i9) {
        return P0(i9) & UShort.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void Y2(int i9, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void Z2(int i9, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a3(int i9, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b3(int i9) {
        int i10 = this.f53719c;
        if (i10 <= i9) {
            this.f53719c = 0;
            int i11 = this.f53720d;
            if (i11 <= i9) {
                this.f53720d = 0;
                return;
            } else {
                this.f53720d = i11 - i9;
                return;
            }
        }
        this.f53719c = i10 - i9;
        this.f53720d -= i9;
    }

    @Override // kg.j
    public j c0() {
        int i9 = this.f53717a;
        if (i9 > 0) {
            if (i9 == this.f53718b) {
                p3();
                b3(this.f53717a);
                this.f53717a = 0;
                this.f53718b = 0;
                return this;
            } else if (i9 >= (F() >>> 1)) {
                int i10 = this.f53717a;
                a2(0, this, i10, this.f53718b - i10);
                int i11 = this.f53718b;
                int i12 = this.f53717a;
                this.f53718b = i11 - i12;
                b3(i12);
                this.f53717a = 0;
                return this;
            }
        }
        p3();
        return this;
    }

    @Override // kg.j
    public int c2(int i9, CharSequence charSequence, Charset charset) {
        return x3(i9, charSequence, charset, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c3(int i9, int i10, int i11) {
        l3(i9);
        if (f53715h) {
            j3("dstIndex", i10, i9, i11);
        }
    }

    @Override // kg.j
    public int d1(int i9, int i10, byte b10) {
        if (i9 <= i10) {
            return n.p(this, i9, i10, b10);
        }
        return n.A(this, i9, i10, b10);
    }

    @Override // kg.j
    public j d2(int i9, int i10) {
        if (f53715h) {
            h3(i9, i10, F());
        }
        y3(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d3(int i9, int i10, int i11, int i12) {
        f3(i9, i10);
        if (f53715h) {
            j3("dstIndex", i11, i10, i12);
        }
    }

    @Override // kg.j
    public j e2(int i9, int i10) {
        f3(i9, 4);
        V2(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e3(int i9) {
        f3(i9, 1);
    }

    @Override // kg.j
    public boolean equals(Object obj) {
        return (obj instanceof j) && n.o(this, (j) obj);
    }

    @Override // kg.j
    public j f0() {
        p3();
        return new v0(this);
    }

    @Override // kg.j
    public j f2(int i9, int i10) {
        f3(i9, 4);
        W2(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f3(int i9, int i10) {
        p3();
        g3(i9, i10);
    }

    @Override // kg.j
    public j g2(int i9, long j10) {
        f3(i9, 8);
        X2(i9, j10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g3(int i9, int i10) {
        if (f53715h) {
            j3("index", i9, i10, F());
        }
    }

    @Override // kg.j
    public int getInt(int i9) {
        f3(i9, 4);
        return N2(i9);
    }

    @Override // kg.j
    public long getLong(int i9) {
        f3(i9, 8);
        return P2(i9);
    }

    @Override // kg.j
    public j h2(int i9, int i10) {
        f3(i9, 3);
        Y2(i9, i10);
        return this;
    }

    @Override // kg.j
    public int hashCode() {
        return n.u(this);
    }

    @Override // kg.j
    public boolean i1() {
        return false;
    }

    @Override // kg.j
    public j i2(int i9, int i10) {
        f3(i9, 2);
        Z2(i9, i10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void i3(int i9) {
        p3();
        if (f53715h) {
            if (i9 < 0 || i9 > m1()) {
                throw new IllegalArgumentException("newCapacity: " + i9 + " (expected: 0-" + m1() + ')');
            }
        }
    }

    @Override // kg.j
    public boolean j1() {
        return this.f53718b > this.f53717a;
    }

    @Override // kg.j
    public j j2(int i9, int i10) {
        f3(i9, 2);
        a3(i9, i10);
        return this;
    }

    @Override // kg.j
    public boolean k1(int i9) {
        return F() - this.f53718b >= i9;
    }

    @Override // kg.j
    public j k2(int i9, int i10) {
        if (i10 == 0) {
            return this;
        }
        f3(i9, i10);
        int i11 = i10 & 7;
        for (int i12 = i10 >>> 3; i12 > 0; i12--) {
            X2(i9, 0L);
            i9 += 8;
        }
        if (i11 == 4) {
            V2(i9, 0);
        } else if (i11 < 4) {
            while (i11 > 0) {
                U2(i9, 0);
                i9++;
                i11--;
            }
        } else {
            V2(i9, 0);
            int i13 = i9 + 4;
            for (int i14 = i11 - 4; i14 > 0; i14--) {
                U2(i13, 0);
                i13++;
            }
        }
        return this;
    }

    @Override // kg.j
    public j l1() {
        this.f53719c = this.f53717a;
        return this;
    }

    @Override // kg.j
    public j l2(int i9) {
        l3(i9);
        this.f53717a += i9;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l3(int i9) {
        m3(io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "minimumReadableBytes"));
    }

    @Override // kg.j
    public int m0(int i9, boolean z10) {
        p3();
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "minWritableBytes");
        if (i9 <= t2()) {
            return 0;
        }
        int m12 = m1();
        int K2 = K2();
        if (i9 > m12 - K2) {
            if (!z10 || F() == m12) {
                return 1;
            }
            I(m12);
            return 3;
        }
        int n12 = n1();
        I(n12 >= i9 ? K2 + n12 : P().c(K2 + i9, m12));
        return 2;
    }

    @Override // kg.j
    public int m1() {
        return this.f53721e;
    }

    @Override // kg.j
    public j m2() {
        return n2(this.f53717a, P1());
    }

    @Override // kg.j
    public j n0(int i9) {
        q3(io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "minWritableBytes"));
        return this;
    }

    @Override // kg.j
    public j n2(int i9, int i10) {
        p3();
        return new x0(this, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n3(int i9, int i10, int i11, int i12) {
        f3(i9, i10);
        if (f53715h) {
            j3("srcIndex", i11, i10, i12);
        }
    }

    @Override // kg.j
    public int o0(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) {
        f3(i9, i10);
        try {
            return r3(i9, i10 + i9, gVar);
        } catch (Exception e10) {
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
            return -1;
        }
    }

    @Override // kg.j
    public int o1() {
        return m1() - this.f53718b;
    }

    @Override // kg.j
    public String o2(int i9, int i10, Charset charset) {
        return n.j(this, i9, i10, charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o3() {
        this.f53720d = 0;
        this.f53719c = 0;
    }

    @Override // kg.j
    public int p0(io.grpc.netty.shaded.io.netty.util.g gVar) {
        p3();
        try {
            return r3(this.f53717a, this.f53718b, gVar);
        } catch (Exception e10) {
            io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
            return -1;
        }
    }

    @Override // kg.j
    public String p2(Charset charset) {
        return o2(this.f53717a, P1(), charset);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void p3() {
        if (f53714g && !f1()) {
            throw new IllegalReferenceCountException(0);
        }
    }

    @Override // kg.j
    public boolean q0() {
        return F() > this.f53718b;
    }

    @Override // kg.j
    public ByteBuffer q1() {
        return r1(this.f53717a, P1());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q3(int i9) {
        int K2 = K2();
        int i10 = K2 + i9;
        if ((i10 >= 0) & (i10 <= F())) {
            p3();
        } else if (f53715h && (i10 < 0 || i10 > this.f53721e)) {
            p3();
            throw new IndexOutOfBoundsException(String.format("writerIndex(%d) + minWritableBytes(%d) exceeds maxCapacity(%d): %s", Integer.valueOf(K2), Integer.valueOf(i9), Integer.valueOf(this.f53721e), this));
        } else {
            int n12 = n1();
            I(n12 >= i9 ? K2 + n12 : P().c(i10, this.f53721e));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int r3(int i9, int i10, io.grpc.netty.shaded.io.netty.util.g gVar) throws Exception {
        while (i9 < i10) {
            if (!gVar.a(M2(i9))) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    public j s3() {
        this.f53720d = this.f53718b;
        return this;
    }

    @Override // kg.j
    public ByteBuffer[] t1() {
        return u1(this.f53717a, P1());
    }

    @Override // kg.j
    public int t2() {
        return F() - this.f53718b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t3(int i9) {
        this.f53721e = i9;
    }

    @Override // kg.j
    public String toString() {
        if (refCnt() == 0) {
            return io.grpc.netty.shaded.io.netty.util.internal.b0.m(this) + "(freed)";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.m(this));
        sb2.append("(ridx: ");
        sb2.append(this.f53717a);
        sb2.append(", widx: ");
        sb2.append(this.f53718b);
        sb2.append(", cap: ");
        sb2.append(F());
        if (this.f53721e != Integer.MAX_VALUE) {
            sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb2.append(this.f53721e);
        }
        j s22 = s2();
        if (s22 != null) {
            sb2.append(", unwrapped: ");
            sb2.append(s22);
        }
        sb2.append(')');
        return sb2.toString();
    }

    @Override // kg.j
    public byte u0(int i9) {
        e3(i9);
        return M2(i9);
    }

    @Override // kg.j
    public j u2(int i9) {
        q3(1);
        int i10 = this.f53718b;
        this.f53718b = i10 + 1;
        U2(i10, i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public r0 u3() {
        return new r0(this);
    }

    @Override // kg.j
    public int v2(ScatteringByteChannel scatteringByteChannel, int i9) throws IOException {
        n0(i9);
        int Y1 = Y1(this.f53718b, scatteringByteChannel, i9);
        if (Y1 > 0) {
            this.f53718b += Y1;
        }
        return Y1;
    }

    public j v3(int i9, int i10) {
        return n2(i9, i10).retain();
    }

    @Override // kg.j
    public j w1(ByteOrder byteOrder) {
        if (byteOrder == v1()) {
            return this;
        }
        io.grpc.netty.shaded.io.netty.util.internal.s.h(byteOrder, "endianness");
        return u3();
    }

    @Override // kg.j
    public j w2(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        q3(remaining);
        Z1(this.f53718b, byteBuffer);
        this.f53718b += remaining;
        return this;
    }

    public j w3(int i9, byte[] bArr) {
        b2(i9, bArr, 0, bArr.length);
        return this;
    }

    @Override // kg.j
    public byte x1() {
        m3(1);
        int i9 = this.f53717a;
        byte M2 = M2(i9);
        this.f53717a = i9 + 1;
        return M2;
    }

    @Override // kg.j
    public j x2(j jVar) {
        y2(jVar, jVar.P1());
        return this;
    }

    @Override // kg.j
    public int y1(GatheringByteChannel gatheringByteChannel, int i9) throws IOException {
        l3(i9);
        int v02 = v0(this.f53717a, gatheringByteChannel, i9);
        this.f53717a += v02;
        return v02;
    }

    @Override // kg.j
    public j y2(j jVar, int i9) {
        if (f53715h) {
            k3(jVar, i9);
        }
        z2(jVar, jVar.Q1(), i9);
        jVar.R1(jVar.Q1() + i9);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void y3(int i9, int i10) {
        this.f53717a = i9;
        this.f53718b = i10;
    }

    @Override // kg.j
    public j z1(int i9) {
        l3(i9);
        if (i9 == 0) {
            return s0.f53902d;
        }
        j j10 = P().j(i9, this.f53721e);
        j10.z2(this, this.f53717a, i9);
        this.f53717a += i9;
        return j10;
    }

    @Override // kg.j
    public j z2(j jVar, int i9, int i10) {
        n0(i10);
        a2(this.f53718b, jVar, i9, i10);
        this.f53718b += i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void z3(int i9) {
        if (K2() > i9) {
            y3(Math.min(Q1(), i9), i9);
        }
    }
}
