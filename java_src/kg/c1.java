package kg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;
import kotlin.UByte;
import kotlin.UShort;
/* loaded from: classes5.dex */
final class c1 {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f53770a = io.grpc.netty.shaded.io.netty.util.internal.t.i0();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void A(a aVar, long j10, int i9, j jVar, int i10, int i11) {
        aVar.f3(i9, i11);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "src");
        if (io.grpc.netty.shaded.io.netty.util.internal.o.c(i10, i11, jVar.F())) {
            throw new IndexOutOfBoundsException("srcIndex: " + i10);
        } else if (i11 != 0) {
            if (jVar.b1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.o(jVar.p1() + i10, j10, i11);
            } else if (jVar.a1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.q(jVar.y(), jVar.z() + i10, j10, i11);
            } else {
                jVar.A0(i10, aVar, i9, i11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void B(a aVar, long j10, int i9, byte[] bArr, int i10, int i11) {
        aVar.f3(i9, i11);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(bArr, "src");
        if (io.grpc.netty.shaded.io.netty.util.internal.o.c(i10, i11, bArr.length)) {
            throw new IndexOutOfBoundsException("srcIndex: " + i10);
        } else if (i11 != 0) {
            io.grpc.netty.shaded.io.netty.util.internal.t.q(bArr, i10, j10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void C(long j10, int i9) {
        if (f53770a) {
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                i9 = Integer.reverseBytes(i9);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.G0(j10, i9);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, (byte) (i9 >>> 24));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(1 + j10, (byte) (i9 >>> 16));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(2 + j10, (byte) (i9 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10 + 3, (byte) i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void D(byte[] bArr, int i9, int i10) {
        if (f53770a) {
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                i10 = Integer.reverseBytes(i10);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.H0(bArr, i9, i10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9, (byte) (i10 >>> 24));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 1, (byte) (i10 >>> 16));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 2, (byte) (i10 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 3, (byte) i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void E(long j10, int i9) {
        if (f53770a) {
            if (io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                i9 = Integer.reverseBytes(i9);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.G0(j10, i9);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, (byte) i9);
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(1 + j10, (byte) (i9 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(2 + j10, (byte) (i9 >>> 16));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10 + 3, (byte) (i9 >>> 24));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void F(byte[] bArr, int i9, int i10) {
        if (f53770a) {
            if (io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                i10 = Integer.reverseBytes(i10);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.H0(bArr, i9, i10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9, (byte) i10);
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 1, (byte) (i10 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 2, (byte) (i10 >>> 16));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 3, (byte) (i10 >>> 24));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void G(long j10, long j11) {
        if (f53770a) {
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                j11 = Long.reverseBytes(j11);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.I0(j10, j11);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, (byte) (j11 >>> 56));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(1 + j10, (byte) (j11 >>> 48));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(2 + j10, (byte) (j11 >>> 40));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(3 + j10, (byte) (j11 >>> 32));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(4 + j10, (byte) (j11 >>> 24));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(5 + j10, (byte) (j11 >>> 16));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(6 + j10, (byte) (j11 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10 + 7, (byte) j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void H(byte[] bArr, int i9, long j10) {
        if (f53770a) {
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                j10 = Long.reverseBytes(j10);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.J0(bArr, i9, j10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9, (byte) (j10 >>> 56));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 1, (byte) (j10 >>> 48));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 2, (byte) (j10 >>> 40));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 3, (byte) (j10 >>> 32));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 4, (byte) (j10 >>> 24));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 5, (byte) (j10 >>> 16));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 6, (byte) (j10 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 7, (byte) j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void I(long j10, int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, (byte) (i9 >>> 16));
        if (f53770a) {
            long j11 = j10 + 1;
            short s10 = (short) i9;
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                s10 = Short.reverseBytes(s10);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.L0(j11, s10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(1 + j10, (byte) (i9 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10 + 2, (byte) i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void J(byte[] bArr, int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9, (byte) (i10 >>> 16));
        if (f53770a) {
            int i11 = i9 + 1;
            short s10 = (short) i10;
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                s10 = Short.reverseBytes(s10);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.M0(bArr, i11, s10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 1, (byte) (i10 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 2, (byte) i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void K(long j10, int i9) {
        if (f53770a) {
            short s10 = (short) i9;
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                s10 = Short.reverseBytes(s10);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.L0(j10, s10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, (byte) (i9 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10 + 1, (byte) i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void L(byte[] bArr, int i9, int i10) {
        if (f53770a) {
            short s10 = (short) i10;
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                s10 = Short.reverseBytes(s10);
            }
            io.grpc.netty.shaded.io.netty.util.internal.t.M0(bArr, i9, s10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9, (byte) (i10 >>> 8));
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 1, (byte) i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void M(long j10, int i9) {
        if (f53770a) {
            io.grpc.netty.shaded.io.netty.util.internal.t.L0(j10, io.grpc.netty.shaded.io.netty.util.internal.t.A ? Short.reverseBytes((short) i9) : (short) i9);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, (byte) i9);
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10 + 1, (byte) (i9 >>> 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void N(byte[] bArr, int i9, int i10) {
        if (f53770a) {
            io.grpc.netty.shaded.io.netty.util.internal.t.M0(bArr, i9, io.grpc.netty.shaded.io.netty.util.internal.t.A ? Short.reverseBytes((short) i10) : (short) i10);
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9, (byte) i10);
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9 + 1, (byte) (i10 >>> 8));
    }

    private static void O(a aVar, long j10, int i9, ByteBuffer byteBuffer, int i10) {
        aVar.f3(i9, i10);
        int limit = byteBuffer.limit();
        for (int position = byteBuffer.position(); position < limit; position++) {
            io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, byteBuffer.get(position));
            j10++;
        }
        byteBuffer.position(limit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void P(long j10, int i9) {
        if (i9 == 0) {
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.O0(j10, i9, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Q(byte[] bArr, int i9, int i10) {
        if (i10 == 0) {
            return;
        }
        io.grpc.netty.shaded.io.netty.util.internal.t.P0(bArr, i9, i10, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(a aVar, long j10, int i9, int i10) {
        aVar.f3(i9, i10);
        j i11 = aVar.P().i(i10, aVar.m1());
        if (i10 != 0) {
            if (i11.b1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.o(j10, i11.p1(), i10);
                i11.d2(0, i10);
            } else {
                i11.z2(aVar, i9, i10);
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte b(long j10) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.B(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte c(byte[] bArr, int i9) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9);
    }

    private static void d(long j10, byte[] bArr, int i9, int i10, OutputStream outputStream, int i11) throws IOException {
        do {
            int min = Math.min(i10, i11);
            long j11 = min;
            io.grpc.netty.shaded.io.netty.util.internal.t.p(j10, bArr, i9, j11);
            outputStream.write(bArr, i9, min);
            i11 -= min;
            j10 += j11;
        } while (i11 > 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(a aVar, long j10, int i9, OutputStream outputStream, int i10) throws IOException {
        aVar.f3(i9, i10);
        if (i10 != 0) {
            int min = Math.min(i10, 8192);
            if (min > 1024 && aVar.P().e()) {
                j b10 = aVar.P().b(min);
                try {
                    d(j10, b10.y(), b10.z(), min, outputStream, i10);
                    return;
                } finally {
                    b10.release();
                }
            }
            d(j10, n.O(min), 0, min, outputStream, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(a aVar, long j10, int i9, ByteBuffer byteBuffer) {
        aVar.f3(i9, byteBuffer.remaining());
        if (byteBuffer.remaining() == 0) {
            return;
        }
        if (byteBuffer.isDirect()) {
            if (!byteBuffer.isReadOnly()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.o(j10, io.grpc.netty.shaded.io.netty.util.internal.t.u(byteBuffer) + byteBuffer.position(), byteBuffer.remaining());
                byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
                return;
            }
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            io.grpc.netty.shaded.io.netty.util.internal.t.p(j10, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
        } else {
            byteBuffer.put(aVar.q1());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(a aVar, long j10, int i9, j jVar, int i10, int i11) {
        aVar.f3(i9, i11);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "dst");
        if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i10, i11, jVar.F())) {
            if (jVar.b1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.o(j10, jVar.p1() + i10, i11);
                return;
            } else if (jVar.a1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.p(j10, jVar.y(), jVar.z() + i10, i11);
                return;
            } else {
                jVar.a2(i10, aVar, i9, i11);
                return;
            }
        }
        throw new IndexOutOfBoundsException("dstIndex: " + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(a aVar, long j10, int i9, byte[] bArr, int i10, int i11) {
        aVar.f3(i9, i11);
        io.grpc.netty.shaded.io.netty.util.internal.s.h(bArr, "dst");
        if (io.grpc.netty.shaded.io.netty.util.internal.o.c(i10, i11, bArr.length)) {
            throw new IndexOutOfBoundsException("dstIndex: " + i10);
        } else if (i11 != 0) {
            io.grpc.netty.shaded.io.netty.util.internal.t.p(j10, bArr, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(long j10) {
        if (f53770a) {
            int E = io.grpc.netty.shaded.io.netty.util.internal.t.E(j10);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? E : Integer.reverseBytes(E);
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10 + 3) & UByte.MAX_VALUE) | (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) << 24) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(1 + j10) & UByte.MAX_VALUE) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(2 + j10) & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(byte[] bArr, int i9) {
        if (f53770a) {
            int G = io.grpc.netty.shaded.io.netty.util.internal.t.G(bArr, i9);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? G : Integer.reverseBytes(G);
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 3) & UByte.MAX_VALUE) | (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) << 24) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 1) & UByte.MAX_VALUE) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 2) & UByte.MAX_VALUE) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(long j10) {
        if (f53770a) {
            int E = io.grpc.netty.shaded.io.netty.util.internal.t.E(j10);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? Integer.reverseBytes(E) : E;
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10 + 3) << 24) | (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) & UByte.MAX_VALUE) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(1 + j10) & UByte.MAX_VALUE) << 8) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(2 + j10) & UByte.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(byte[] bArr, int i9) {
        if (f53770a) {
            int G = io.grpc.netty.shaded.io.netty.util.internal.t.G(bArr, i9);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? Integer.reverseBytes(G) : G;
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 3) << 24) | (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) & UByte.MAX_VALUE) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 1) & UByte.MAX_VALUE) << 8) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 2) & UByte.MAX_VALUE) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long m(long j10) {
        if (f53770a) {
            long I = io.grpc.netty.shaded.io.netty.util.internal.t.I(j10);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? I : Long.reverseBytes(I);
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10 + 7) & 255) | (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) << 56) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(1 + j10) & 255) << 48) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(2 + j10) & 255) << 40) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(3 + j10) & 255) << 32) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(4 + j10) & 255) << 24) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(5 + j10) & 255) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(6 + j10) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long n(byte[] bArr, int i9) {
        if (f53770a) {
            long J = io.grpc.netty.shaded.io.netty.util.internal.t.J(bArr, i9);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? J : Long.reverseBytes(J);
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 7) & 255) | (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) << 56) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 1) & 255) << 48) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 2) & 255) << 40) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 3) & 255) << 32) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 4) & 255) << 24) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 5) & 255) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 6) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long o(long j10) {
        if (f53770a) {
            long I = io.grpc.netty.shaded.io.netty.util.internal.t.I(j10);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? Long.reverseBytes(I) : I;
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10 + 7) << 56) | (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) & 255) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(1 + j10) & 255) << 8) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(2 + j10) & 255) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(3 + j10) & 255) << 24) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(4 + j10) & 255) << 32) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(5 + j10) & 255) << 40) | ((255 & io.grpc.netty.shaded.io.netty.util.internal.t.B(6 + j10)) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long p(byte[] bArr, int i9) {
        if (f53770a) {
            long J = io.grpc.netty.shaded.io.netty.util.internal.t.J(bArr, i9);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? Long.reverseBytes(J) : J;
        }
        return (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 7) << 56) | (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) & 255) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 1) & 255) << 8) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 2) & 255) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 3) & 255) << 24) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 4) & 255) << 32) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 5) & 255) << 40) | ((255 & io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 6)) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short q(long j10) {
        if (f53770a) {
            short M = io.grpc.netty.shaded.io.netty.util.internal.t.M(j10);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? M : Short.reverseBytes(M);
        }
        return (short) ((io.grpc.netty.shaded.io.netty.util.internal.t.B(j10 + 1) & UByte.MAX_VALUE) | (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short r(byte[] bArr, int i9) {
        if (f53770a) {
            short N = io.grpc.netty.shaded.io.netty.util.internal.t.N(bArr, i9);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? N : Short.reverseBytes(N);
        }
        return (short) ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 1) & UByte.MAX_VALUE) | (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short s(long j10) {
        if (!f53770a) {
            return (short) ((io.grpc.netty.shaded.io.netty.util.internal.t.B(j10 + 1) << 8) | (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) & UByte.MAX_VALUE));
        }
        short M = io.grpc.netty.shaded.io.netty.util.internal.t.M(j10);
        return io.grpc.netty.shaded.io.netty.util.internal.t.A ? Short.reverseBytes(M) : M;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short t(byte[] bArr, int i9) {
        if (f53770a) {
            short N = io.grpc.netty.shaded.io.netty.util.internal.t.N(bArr, i9);
            return io.grpc.netty.shaded.io.netty.util.internal.t.A ? Short.reverseBytes(N) : N;
        }
        return (short) ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 1) << 8) | (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) & UByte.MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(long j10) {
        int B;
        int B2;
        short reverseBytes;
        if (f53770a) {
            B = (io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) & UByte.MAX_VALUE) << 16;
            if (io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                reverseBytes = io.grpc.netty.shaded.io.netty.util.internal.t.M(j10 + 1);
            } else {
                reverseBytes = Short.reverseBytes(io.grpc.netty.shaded.io.netty.util.internal.t.M(j10 + 1));
            }
            B2 = reverseBytes & UShort.MAX_VALUE;
        } else {
            B = ((io.grpc.netty.shaded.io.netty.util.internal.t.B(j10) & UByte.MAX_VALUE) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.B(1 + j10) & UByte.MAX_VALUE) << 8);
            B2 = io.grpc.netty.shaded.io.netty.util.internal.t.B(j10 + 2) & UByte.MAX_VALUE;
        }
        return B2 | B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(byte[] bArr, int i9) {
        int C;
        int C2;
        short reverseBytes;
        if (f53770a) {
            C = (io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) & UByte.MAX_VALUE) << 16;
            if (io.grpc.netty.shaded.io.netty.util.internal.t.A) {
                reverseBytes = io.grpc.netty.shaded.io.netty.util.internal.t.N(bArr, i9 + 1);
            } else {
                reverseBytes = Short.reverseBytes(io.grpc.netty.shaded.io.netty.util.internal.t.N(bArr, i9 + 1));
            }
            C2 = reverseBytes & UShort.MAX_VALUE;
        } else {
            C = ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9) & UByte.MAX_VALUE) << 16) | ((io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 1) & UByte.MAX_VALUE) << 8);
            C2 = io.grpc.netty.shaded.io.netty.util.internal.t.C(bArr, i9 + 2) & UByte.MAX_VALUE;
        }
        return C2 | C;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0 w(k kVar, int i9, int i10) {
        if (io.grpc.netty.shaded.io.netty.util.internal.t.X0()) {
            return new a1(kVar, i9, i10);
        }
        return new y0(kVar, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void x(long j10, int i9) {
        io.grpc.netty.shaded.io.netty.util.internal.t.D0(j10, (byte) i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void y(byte[] bArr, int i9, int i10) {
        io.grpc.netty.shaded.io.netty.util.internal.t.F0(bArr, i9, (byte) i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void z(a aVar, long j10, int i9, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return;
        }
        if (byteBuffer.isDirect()) {
            aVar.f3(i9, remaining);
            io.grpc.netty.shaded.io.netty.util.internal.t.o(io.grpc.netty.shaded.io.netty.util.internal.t.u(byteBuffer) + byteBuffer.position(), j10, remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
        } else if (byteBuffer.hasArray()) {
            aVar.f3(i9, remaining);
            io.grpc.netty.shaded.io.netty.util.internal.t.q(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), j10, remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
        } else if (remaining < 8) {
            O(aVar, j10, i9, byteBuffer, remaining);
        } else {
            aVar.e1(i9, remaining).put(byteBuffer);
        }
    }
}
