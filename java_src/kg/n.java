package kg;

import androidx.core.view.ViewCompat;
import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import io.grpc.netty.shaded.io.netty.util.internal.r;
import io.jsonwebtoken.JwtParser;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.util.Arrays;
import java.util.Locale;
import kotlin.UByte;
import okio.Utf8;
/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f53834a;

    /* renamed from: b  reason: collision with root package name */
    private static final ug.n<byte[]> f53835b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f53836c;

    /* renamed from: d  reason: collision with root package name */
    private static final int f53837d;

    /* renamed from: e  reason: collision with root package name */
    private static final int f53838e;

    /* renamed from: f  reason: collision with root package name */
    static final k f53839f;

    /* renamed from: g  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.g f53840g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a extends ug.n<byte[]> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // ug.n
        /* renamed from: o */
        public byte[] e() throws Exception {
            return io.grpc.netty.shaded.io.netty.util.internal.t.j(1024);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements io.grpc.netty.shaded.io.netty.util.g {
        b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) {
            return b10 >= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private static final char[] f53841a = new char[256];

        /* renamed from: b  reason: collision with root package name */
        private static final char[] f53842b = new char[1024];

        /* renamed from: c  reason: collision with root package name */
        private static final String[] f53843c = new String[16];

        /* renamed from: d  reason: collision with root package name */
        private static final String[] f53844d = new String[4096];

        /* renamed from: e  reason: collision with root package name */
        private static final String[] f53845e = new String[256];

        /* renamed from: f  reason: collision with root package name */
        private static final String[] f53846f = new String[16];

        static {
            char[] charArray = "0123456789abcdef".toCharArray();
            int i9 = 0;
            for (int i10 = 0; i10 < 256; i10++) {
                char[] cArr = f53842b;
                int i11 = i10 << 1;
                cArr[i11] = charArray[(i10 >>> 4) & 15];
                cArr[i11 + 1] = charArray[i10 & 15];
            }
            int i12 = 0;
            while (true) {
                String[] strArr = f53843c;
                if (i12 >= strArr.length) {
                    break;
                }
                int length = strArr.length - i12;
                StringBuilder sb2 = new StringBuilder(length * 3);
                for (int i13 = 0; i13 < length; i13++) {
                    sb2.append("   ");
                }
                f53843c[i12] = sb2.toString();
                i12++;
            }
            int i14 = 0;
            while (true) {
                String[] strArr2 = f53844d;
                if (i14 >= strArr2.length) {
                    break;
                }
                StringBuilder sb3 = new StringBuilder(12);
                sb3.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
                sb3.append(Long.toHexString(((i14 << 4) & 4294967295L) | 4294967296L));
                sb3.setCharAt(sb3.length() - 9, '|');
                sb3.append('|');
                strArr2[i14] = sb3.toString();
                i14++;
            }
            int i15 = 0;
            while (true) {
                String[] strArr3 = f53845e;
                if (i15 >= strArr3.length) {
                    break;
                }
                strArr3[i15] = ' ' + io.grpc.netty.shaded.io.netty.util.internal.b0.a(i15);
                i15++;
            }
            int i16 = 0;
            while (true) {
                String[] strArr4 = f53846f;
                if (i16 >= strArr4.length) {
                    break;
                }
                int length2 = strArr4.length - i16;
                StringBuilder sb4 = new StringBuilder(length2);
                for (int i17 = 0; i17 < length2; i17++) {
                    sb4.append(' ');
                }
                f53846f[i16] = sb4.toString();
                i16++;
            }
            while (true) {
                char[] cArr2 = f53841a;
                if (i9 >= cArr2.length) {
                    return;
                }
                if (i9 > 31 && i9 < 127) {
                    cArr2[i9] = (char) i9;
                } else {
                    cArr2[i9] = JwtParser.SEPARATOR_CHAR;
                }
                i9++;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String c(j jVar, int i9, int i10) {
            io.grpc.netty.shaded.io.netty.util.internal.s.n(i10, "length");
            if (i10 == 0) {
                return "";
            }
            int i11 = i9 + i10;
            char[] cArr = new char[i10 << 1];
            int i12 = 0;
            while (i9 < i11) {
                System.arraycopy(f53842b, jVar.R0(i9) << 1, cArr, i12, 2);
                i9++;
                i12 += 2;
            }
            return new String(cArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String d(byte[] bArr, int i9, int i10) {
            io.grpc.netty.shaded.io.netty.util.internal.s.n(i10, "length");
            if (i10 == 0) {
                return "";
            }
            int i11 = i9 + i10;
            char[] cArr = new char[i10 << 1];
            int i12 = 0;
            while (i9 < i11) {
                System.arraycopy(f53842b, (bArr[i9] & UByte.MAX_VALUE) << 1, cArr, i12, 2);
                i9++;
                i12 += 2;
            }
            return new String(cArr);
        }
    }

    /* loaded from: classes5.dex */
    private static final class d {
        /* JADX INFO: Access modifiers changed from: private */
        public static long c(byte b10) {
            return (b10 & 255) * 72340172838076673L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int d(long j10, long j11, boolean z10) {
            long j12 = j10 ^ j11;
            long j13 = ~(j12 | ((j12 & 9187201950435737471L) + 9187201950435737471L) | 9187201950435737471L);
            return (z10 ? Long.numberOfLeadingZeros(j13) : Long.numberOfTrailingZeros(j13)) >>> 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class e extends u0 {

        /* renamed from: t  reason: collision with root package name */
        private static final io.grpc.netty.shaded.io.netty.util.internal.r<e> f53847t = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

        /* renamed from: s  reason: collision with root package name */
        private final r.a<e> f53848s;

        /* loaded from: classes5.dex */
        static class a implements r.b<e> {
            a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
            /* renamed from: b */
            public e a(r.a<e> aVar) {
                return new e(aVar, null);
            }
        }

        /* synthetic */ e(r.a aVar, a aVar2) {
            this(aVar);
        }

        static e N3() {
            e a10 = f53847t.a();
            a10.E3();
            return a10;
        }

        @Override // kg.u0, kg.e
        protected void C3() {
            if (F() > n.f53837d) {
                super.C3();
                return;
            }
            L();
            this.f53848s.a(this);
        }

        private e(r.a<e> aVar) {
            super(t0.f53908g, 256, Integer.MAX_VALUE);
            this.f53848s = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f extends y0 {

        /* renamed from: u  reason: collision with root package name */
        private static final io.grpc.netty.shaded.io.netty.util.internal.r<f> f53849u = io.grpc.netty.shaded.io.netty.util.internal.r.b(new a());

        /* renamed from: t  reason: collision with root package name */
        private final r.a<f> f53850t;

        /* loaded from: classes5.dex */
        static class a implements r.b<f> {
            a() {
            }

            @Override // io.grpc.netty.shaded.io.netty.util.internal.r.b
            /* renamed from: b */
            public f a(r.a<f> aVar) {
                return new f(aVar, null);
            }
        }

        /* synthetic */ f(r.a aVar, a aVar2) {
            this(aVar);
        }

        static f O3() {
            f a10 = f53849u.a();
            a10.E3();
            return a10;
        }

        @Override // kg.u0, kg.e
        protected void C3() {
            if (F() > n.f53837d) {
                super.C3();
                return;
            }
            L();
            this.f53850t.a(this);
        }

        private f(r.a<f> aVar) {
            super(t0.f53908g, 256, Integer.MAX_VALUE);
            this.f53850t = aVar;
        }
    }

    static {
        k kVar;
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(n.class);
        f53834a = b10;
        f53835b = new a();
        f53838e = (int) io.grpc.netty.shaded.io.netty.util.h.a(io.grpc.netty.shaded.io.netty.util.h.f45016d).maxBytesPerChar();
        String trim = io.grpc.netty.shaded.io.netty.util.internal.c0.c("io.grpc.netty.shaded.io.netty.allocator.type", io.grpc.netty.shaded.io.netty.util.internal.t.c0() ? "unpooled" : "pooled").toLowerCase(Locale.US).trim();
        if ("unpooled".equals(trim)) {
            kVar = t0.f53908g;
            b10.debug("-Dio.netty.allocator.type: {}", trim);
        } else if ("pooled".equals(trim)) {
            kVar = d0.A;
            b10.debug("-Dio.netty.allocator.type: {}", trim);
        } else {
            kVar = d0.A;
            b10.debug("-Dio.netty.allocator.type: pooled (unknown: {})", trim);
        }
        f53839f = kVar;
        int e10 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.threadLocalDirectBufferSize", 0);
        f53837d = e10;
        b10.debug("-Dio.netty.threadLocalDirectBufferSize: {}", Integer.valueOf(e10));
        int e11 = io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.maxThreadLocalCharBufferSize", 16384);
        f53836c = e11;
        b10.debug("-Dio.netty.maxThreadLocalCharBufferSize: {}", Integer.valueOf(e11));
        f53840g = new b();
    }

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int A(kg.a aVar, int i9, int i10, byte b10) {
        int F = aVar.F();
        int min = Math.min(i9, F);
        if (min >= 0 && F != 0) {
            aVar.f3(i10, min - i10);
            for (int i11 = min - 1; i11 >= i10; i11--) {
                if (aVar.M2(i11) == b10) {
                    return i11;
                }
            }
        }
        return -1;
    }

    private static int B(kg.a aVar, int i9, int i10, byte b10) {
        while (i9 < i10) {
            if (aVar.M2(i9) == b10) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    private static long C(j jVar, int i9, int i10, boolean z10) {
        int i11 = -1;
        int i12 = 1;
        int i13 = 1;
        while (true) {
            int i14 = i10 + i12;
            if (i14 >= i9) {
                return (i11 << 32) + i13;
            }
            byte u02 = jVar.u0(i14);
            byte u03 = jVar.u0(i11 + i12);
            boolean z11 = false;
            if (!z10 ? u02 > u03 : u02 < u03) {
                z11 = true;
            }
            if (z11) {
                i13 = i14 - i11;
                i10 = i14;
            } else if (u02 != u03) {
                i12 = 1;
                i13 = 1;
                i11 = i10;
                i10++;
            } else if (i12 != i13) {
                i12++;
            } else {
                i10 += i13;
            }
            i12 = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void D(k kVar, ByteBuffer byteBuffer, int i9, int i10, OutputStream outputStream) throws IOException {
        if (byteBuffer.hasArray()) {
            outputStream.write(byteBuffer.array(), i9 + byteBuffer.arrayOffset(), i10);
            return;
        }
        int min = Math.min(i10, 8192);
        byteBuffer.clear().position(i9);
        if (i10 > 1024 && kVar.e()) {
            j b10 = kVar.b(min);
            try {
                q(byteBuffer, b10.y(), b10.z(), min, outputStream, i10);
                return;
            } finally {
                b10.release();
            }
        }
        q(byteBuffer, O(min), 0, min, outputStream, i10);
    }

    private static int E(j jVar, CharSequence charSequence, int i9, int i10, int i11) {
        while (true) {
            if (jVar instanceof g1) {
                jVar = jVar.s2();
            } else if (jVar instanceof kg.a) {
                kg.a aVar = (kg.a) jVar;
                aVar.q3(i11);
                int d02 = d0(aVar, aVar.f53718b, i11, charSequence, i9, i10);
                aVar.f53718b += d02;
                return d02;
            } else if (jVar instanceof f1) {
                jVar = jVar.s2();
            } else {
                byte[] bytes = charSequence.subSequence(i9, i10).toString().getBytes(io.grpc.netty.shaded.io.netty.util.h.f45016d);
                jVar.A2(bytes);
                return bytes.length;
            }
        }
    }

    private static int F(byte[] bArr, int i9, CharSequence charSequence, int i10, int i11) {
        int i12 = i9;
        while (true) {
            if (i10 >= i11) {
                break;
            }
            char charAt = charSequence.charAt(i10);
            if (charAt < 128) {
                bArr[i12] = (byte) charAt;
                i12++;
            } else if (charAt < 2048) {
                int i13 = i12 + 1;
                bArr[i12] = (byte) ((charAt >> 6) | 192);
                i12 = i13 + 1;
                bArr[i13] = (byte) ((charAt & '?') | 128);
            } else {
                if (io.grpc.netty.shaded.io.netty.util.internal.b0.j(charAt)) {
                    if (Character.isHighSurrogate(charAt)) {
                        i10++;
                        if (i10 == i11) {
                            bArr[i12] = Utf8.REPLACEMENT_BYTE;
                            i12++;
                            break;
                        }
                        char charAt2 = charSequence.charAt(i10);
                        if (!Character.isLowSurrogate(charAt2)) {
                            int i14 = i12 + 1;
                            bArr[i12] = Utf8.REPLACEMENT_BYTE;
                            i12 = i14 + 1;
                            bArr[i14] = (byte) (Character.isHighSurrogate(charAt2) ? '?' : charAt2);
                        } else {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            int i15 = i12 + 1;
                            bArr[i12] = (byte) ((codePoint >> 18) | 240);
                            int i16 = i15 + 1;
                            bArr[i15] = (byte) (((codePoint >> 12) & 63) | 128);
                            int i17 = i16 + 1;
                            bArr[i16] = (byte) (((codePoint >> 6) & 63) | 128);
                            i12 = i17 + 1;
                            bArr[i17] = (byte) ((codePoint & 63) | 128);
                        }
                    } else {
                        bArr[i12] = Utf8.REPLACEMENT_BYTE;
                        i12++;
                    }
                } else {
                    int i18 = i12 + 1;
                    bArr[i12] = (byte) ((charAt >> '\f') | 224);
                    int i19 = i18 + 1;
                    bArr[i18] = (byte) ((63 & (charAt >> 6)) | 128);
                    bArr[i19] = (byte) ((charAt & '?') | 128);
                    i12 = i19 + 1;
                }
            }
            i10++;
        }
        return i12 - i9;
    }

    private static int G(ByteBuffer byteBuffer, int i9, CharSequence charSequence, int i10, int i11) {
        int i12 = i9;
        while (true) {
            if (i10 >= i11) {
                break;
            }
            char charAt = charSequence.charAt(i10);
            if (charAt < 128) {
                byteBuffer.put(i12, (byte) charAt);
                i12++;
            } else if (charAt < 2048) {
                int i13 = i12 + 1;
                byteBuffer.put(i12, (byte) ((charAt >> 6) | 192));
                i12 = i13 + 1;
                byteBuffer.put(i13, (byte) ((charAt & '?') | 128));
            } else {
                boolean j10 = io.grpc.netty.shaded.io.netty.util.internal.b0.j(charAt);
                byte b10 = Utf8.REPLACEMENT_BYTE;
                if (j10) {
                    if (Character.isHighSurrogate(charAt)) {
                        i10++;
                        if (i10 == i11) {
                            byteBuffer.put(i12, Utf8.REPLACEMENT_BYTE);
                            i12++;
                            break;
                        }
                        char charAt2 = charSequence.charAt(i10);
                        if (!Character.isLowSurrogate(charAt2)) {
                            int i14 = i12 + 1;
                            byteBuffer.put(i12, Utf8.REPLACEMENT_BYTE);
                            i12 = i14 + 1;
                            if (!Character.isHighSurrogate(charAt2)) {
                                b10 = (byte) charAt2;
                            }
                            byteBuffer.put(i14, b10);
                        } else {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            int i15 = i12 + 1;
                            byteBuffer.put(i12, (byte) ((codePoint >> 18) | 240));
                            int i16 = i15 + 1;
                            byteBuffer.put(i15, (byte) (((codePoint >> 12) & 63) | 128));
                            int i17 = i16 + 1;
                            byteBuffer.put(i16, (byte) (((codePoint >> 6) & 63) | 128));
                            i12 = i17 + 1;
                            byteBuffer.put(i17, (byte) ((codePoint & 63) | 128));
                        }
                    } else {
                        byteBuffer.put(i12, Utf8.REPLACEMENT_BYTE);
                        i12++;
                    }
                } else {
                    int i18 = i12 + 1;
                    byteBuffer.put(i12, (byte) ((charAt >> '\f') | 224));
                    int i19 = i18 + 1;
                    byteBuffer.put(i18, (byte) ((63 & (charAt >> 6)) | 128));
                    byteBuffer.put(i19, (byte) ((charAt & '?') | 128));
                    i12 = i19 + 1;
                }
            }
            i10++;
        }
        return i12 - i9;
    }

    private static int H(kg.a aVar, int i9, CharSequence charSequence, int i10, int i11) {
        int i12 = i9;
        while (true) {
            if (i10 >= i11) {
                break;
            }
            char charAt = charSequence.charAt(i10);
            if (charAt < 128) {
                aVar.U2(i12, (byte) charAt);
                i12++;
            } else if (charAt < 2048) {
                int i13 = i12 + 1;
                aVar.U2(i12, (byte) ((charAt >> 6) | 192));
                i12 = i13 + 1;
                aVar.U2(i13, (byte) ((charAt & '?') | 128));
            } else {
                if (io.grpc.netty.shaded.io.netty.util.internal.b0.j(charAt)) {
                    if (Character.isHighSurrogate(charAt)) {
                        i10++;
                        if (i10 == i11) {
                            aVar.U2(i12, 63);
                            i12++;
                            break;
                        }
                        char charAt2 = charSequence.charAt(i10);
                        if (!Character.isLowSurrogate(charAt2)) {
                            int i14 = i12 + 1;
                            aVar.U2(i12, 63);
                            i12 = i14 + 1;
                            aVar.U2(i14, Character.isHighSurrogate(charAt2) ? '?' : charAt2);
                        } else {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            int i15 = i12 + 1;
                            aVar.U2(i12, (byte) ((codePoint >> 18) | 240));
                            int i16 = i15 + 1;
                            aVar.U2(i15, (byte) (((codePoint >> 12) & 63) | 128));
                            int i17 = i16 + 1;
                            aVar.U2(i16, (byte) (((codePoint >> 6) & 63) | 128));
                            i12 = i17 + 1;
                            aVar.U2(i17, (byte) ((codePoint & 63) | 128));
                        }
                    } else {
                        aVar.U2(i12, 63);
                        i12++;
                    }
                } else {
                    int i18 = i12 + 1;
                    aVar.U2(i12, (byte) ((charAt >> '\f') | 224));
                    int i19 = i18 + 1;
                    aVar.U2(i18, (byte) ((63 & (charAt >> 6)) | 128));
                    aVar.U2(i19, (byte) ((charAt & '?') | 128));
                    i12 = i19 + 1;
                }
            }
            i10++;
        }
        return i12 - i9;
    }

    public static j I(j jVar, int i9, int i10) {
        return jVar.v1() == ByteOrder.BIG_ENDIAN ? jVar.i2(i9, i10) : jVar.i2(i9, M((short) i10));
    }

    public static int J(int i9) {
        return Integer.reverseBytes(i9);
    }

    public static long K(long j10) {
        return Long.reverseBytes(j10);
    }

    public static int L(int i9) {
        int i10 = ((i9 >>> 16) & 255) | ((i9 << 16) & 16711680) | (65280 & i9);
        return (8388608 & i10) != 0 ? i10 | ViewCompat.MEASURED_STATE_MASK : i10;
    }

    public static short M(short s10) {
        return Short.reverseBytes(s10);
    }

    public static j N() {
        if (f53837d <= 0) {
            return null;
        }
        if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
            return f.O3();
        }
        return e.N3();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] O(int i9) {
        if (i9 <= 1024) {
            return f53835b.b();
        }
        return io.grpc.netty.shaded.io.netty.util.internal.t.j(i9);
    }

    private static long P(long j10) {
        return Long.reverseBytes(j10) >>> 32;
    }

    private static int Q(kg.a aVar, int i9, int i10, byte b10) {
        if (aVar.M2(i9) == b10) {
            return i9;
        }
        if (i10 == 1) {
            return -1;
        }
        int i11 = i9 + 1;
        if (aVar.M2(i11) == b10) {
            return i11;
        }
        if (i10 == 2) {
            return -1;
        }
        int i12 = i9 + 2;
        if (aVar.M2(i12) == b10) {
            return i12;
        }
        if (i10 == 3) {
            return -1;
        }
        int i13 = i9 + 3;
        if (aVar.M2(i13) == b10) {
            return i13;
        }
        if (i10 == 4) {
            return -1;
        }
        int i14 = i9 + 4;
        if (aVar.M2(i14) == b10) {
            return i14;
        }
        if (i10 == 5) {
            return -1;
        }
        int i15 = i9 + 5;
        if (aVar.M2(i15) == b10) {
            return i15;
        }
        if (i10 == 6) {
            return -1;
        }
        int i16 = i9 + 6;
        if (aVar.M2(i16) == b10) {
            return i16;
        }
        return -1;
    }

    private static int R(byte[] bArr, long j10, int i9, CharSequence charSequence, int i10, int i11) {
        long j11;
        long j12 = j10 + i9;
        long j13 = j12;
        while (true) {
            if (i10 >= i11) {
                break;
            }
            char charAt = charSequence.charAt(i10);
            if (charAt < 128) {
                j11 = 1 + j13;
                io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j13, (byte) charAt);
            } else if (charAt < 2048) {
                long j14 = j13 + 1;
                io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j13, (byte) ((charAt >> 6) | 192));
                j11 = 1 + j14;
                io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j14, (byte) ((charAt & '?') | 128));
            } else {
                if (io.grpc.netty.shaded.io.netty.util.internal.b0.j(charAt)) {
                    if (Character.isHighSurrogate(charAt)) {
                        i10++;
                        if (i10 == i11) {
                            io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j13, Utf8.REPLACEMENT_BYTE);
                            j13 = 1 + j13;
                            break;
                        }
                        char charAt2 = charSequence.charAt(i10);
                        if (!Character.isLowSurrogate(charAt2)) {
                            long j15 = j13 + 1;
                            io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j13, Utf8.REPLACEMENT_BYTE);
                            j11 = 1 + j15;
                            io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j15, (byte) (Character.isHighSurrogate(charAt2) ? '?' : charAt2));
                        } else {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            long j16 = j13 + 1;
                            io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j13, (byte) ((codePoint >> 18) | 240));
                            long j17 = j16 + 1;
                            io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j16, (byte) (((codePoint >> 12) & 63) | 128));
                            long j18 = j17 + 1;
                            io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j17, (byte) (((codePoint >> 6) & 63) | 128));
                            j11 = 1 + j18;
                            io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j18, (byte) ((codePoint & 63) | 128));
                        }
                    } else {
                        j11 = 1 + j13;
                        io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j13, Utf8.REPLACEMENT_BYTE);
                    }
                } else {
                    long j19 = j13 + 1;
                    io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j13, (byte) ((charAt >> '\f') | 224));
                    long j20 = j19 + 1;
                    io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j19, (byte) (((charAt >> 6) & 63) | 128));
                    j11 = 1 + j20;
                    io.grpc.netty.shaded.io.netty.util.internal.t.E0(bArr, j20, (byte) ((charAt & '?') | 128));
                }
            }
            j13 = j11;
            i10++;
        }
        return (int) (j13 - j12);
    }

    private static int S(CharSequence charSequence, int i9, int i10) {
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            return i10 - i9;
        }
        int i11 = i9;
        while (i11 < i10 && charSequence.charAt(i11) < 128) {
            i11++;
        }
        int i12 = i11 - i9;
        return i11 < i10 ? i12 + U(charSequence, i11, i10) : i12;
    }

    public static int T(CharSequence charSequence) {
        return S(charSequence, 0, charSequence.length());
    }

    private static int U(CharSequence charSequence, int i9, int i10) {
        int i11 = 0;
        while (i9 < i10) {
            char charAt = charSequence.charAt(i9);
            if (charAt < 2048) {
                i11 += ((127 - charAt) >>> 31) + 1;
            } else if (!io.grpc.netty.shaded.io.netty.util.internal.b0.j(charAt)) {
                i11 += 3;
            } else if (Character.isHighSurrogate(charAt)) {
                i9++;
                if (i9 == i10) {
                    return i11 + 1;
                }
                i11 = !Character.isLowSurrogate(charSequence.charAt(i9)) ? i11 + 2 : i11 + 4;
            } else {
                i11++;
            }
            i9++;
        }
        return i11;
    }

    public static int V(int i9) {
        return i9 * f53838e;
    }

    public static int W(CharSequence charSequence) {
        return V(charSequence.length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int X(kg.a aVar, int i9, CharSequence charSequence, int i10) {
        int i11 = 0;
        while (i11 < i10) {
            aVar.U2(i9, io.grpc.netty.shaded.io.netty.util.c.e(charSequence.charAt(i11)));
            i11++;
            i9++;
        }
        return i10;
    }

    public static int Y(j jVar, CharSequence charSequence) {
        while (true) {
            if (jVar instanceof g1) {
                jVar = jVar.s2();
            } else if (jVar instanceof kg.a) {
                int length = charSequence.length();
                kg.a aVar = (kg.a) jVar;
                aVar.q3(length);
                if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
                    Z(aVar, aVar.f53718b, (io.grpc.netty.shaded.io.netty.util.c) charSequence, 0, length);
                } else {
                    X(aVar, aVar.f53718b, charSequence, length);
                }
                aVar.f53718b += length;
                return length;
            } else if (jVar instanceof f1) {
                jVar = jVar.s2();
            } else {
                byte[] bytes = charSequence.toString().getBytes(io.grpc.netty.shaded.io.netty.util.h.f45018f);
                jVar.A2(bytes);
                return bytes.length;
            }
        }
    }

    static void Z(kg.a aVar, int i9, io.grpc.netty.shaded.io.netty.util.c cVar, int i10, int i11) {
        int b10 = cVar.b() + i10;
        int i12 = i11 - i10;
        if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
            if (aVar.a1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.r(cVar.a(), b10, aVar.y(), aVar.z() + i9, i12);
                return;
            } else if (aVar.b1()) {
                io.grpc.netty.shaded.io.netty.util.internal.t.q(cVar.a(), b10, aVar.p1() + i9, i12);
                return;
            }
        }
        if (aVar.a1()) {
            System.arraycopy(cVar.a(), b10, aVar.y(), aVar.z() + i9, i12);
        } else {
            aVar.b2(i9, cVar.a(), b10, i12);
        }
    }

    public static j a0(j jVar, int i9) {
        return jVar.v1() == ByteOrder.BIG_ENDIAN ? jVar.H2(i9) : jVar.H2(L(i9));
    }

    public static int b(j jVar, j jVar2) {
        long e10;
        if (jVar == jVar2) {
            return 0;
        }
        int P1 = jVar.P1();
        int P12 = jVar2.P1();
        int min = Math.min(P1, P12);
        int i9 = min >>> 2;
        int i10 = min & 3;
        int Q1 = jVar.Q1();
        int Q12 = jVar2.Q1();
        if (i9 > 0) {
            boolean z10 = jVar.v1() == ByteOrder.BIG_ENDIAN;
            int i11 = i9 << 2;
            if (jVar.v1() == jVar2.v1()) {
                if (z10) {
                    e10 = c(jVar, jVar2, Q1, Q12, i11);
                } else {
                    e10 = f(jVar, jVar2, Q1, Q12, i11);
                }
            } else if (z10) {
                e10 = d(jVar, jVar2, Q1, Q12, i11);
            } else {
                e10 = e(jVar, jVar2, Q1, Q12, i11);
            }
            if (e10 != 0) {
                return (int) Math.min(2147483647L, Math.max(-2147483648L, e10));
            }
            Q1 += i11;
            Q12 += i11;
        }
        int i12 = i10 + Q1;
        while (Q1 < i12) {
            int R0 = jVar.R0(Q1) - jVar2.R0(Q12);
            if (R0 != 0) {
                return R0;
            }
            Q1++;
            Q12++;
        }
        return P1 - P12;
    }

    public static j b0(j jVar, int i9) {
        return jVar.v1() == ByteOrder.BIG_ENDIAN ? jVar.I2(i9) : jVar.I2(M((short) i9));
    }

    private static long c(j jVar, j jVar2, int i9, int i10, int i11) {
        int i12 = i11 + i9;
        while (i9 < i12) {
            long S0 = jVar.S0(i9) - jVar2.S0(i10);
            if (S0 != 0) {
                return S0;
            }
            i9 += 4;
            i10 += 4;
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c0(kg.a aVar, int i9, int i10, CharSequence charSequence, int i11) {
        return d0(aVar, i9, i10, charSequence, 0, i11);
    }

    private static long d(j jVar, j jVar2, int i9, int i10, int i11) {
        int i12 = i11 + i9;
        while (i9 < i12) {
            long S0 = jVar.S0(i9) - P(jVar2.T0(i10));
            if (S0 != 0) {
                return S0;
            }
            i9 += 4;
            i10 += 4;
        }
        return 0L;
    }

    static int d0(kg.a aVar, int i9, int i10, CharSequence charSequence, int i11, int i12) {
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            Z(aVar, i9, (io.grpc.netty.shaded.io.netty.util.c) charSequence, i11, i12);
            return i12 - i11;
        }
        if (io.grpc.netty.shaded.io.netty.util.internal.t.T()) {
            if (aVar.a1()) {
                return R(aVar.y(), io.grpc.netty.shaded.io.netty.util.internal.t.l(), aVar.z() + i9, charSequence, i11, i12);
            }
            if (aVar.b1()) {
                return R(null, aVar.p1(), i9, charSequence, i11, i12);
            }
        } else if (aVar.a1()) {
            return F(aVar.y(), aVar.z() + i9, charSequence, i11, i12);
        } else {
            if (aVar.h1()) {
                ByteBuffer e12 = aVar.e1(i9, i10);
                return G(e12, e12.position(), charSequence, i11, i12);
            }
        }
        return H(aVar, i9, charSequence, i11, i12);
    }

    private static long e(j jVar, j jVar2, int i9, int i10, int i11) {
        int i12 = i11 + i9;
        while (i9 < i12) {
            long P = P(jVar.T0(i9)) - jVar2.S0(i10);
            if (P != 0) {
                return P;
            }
            i9 += 4;
            i10 += 4;
        }
        return 0L;
    }

    public static int e0(j jVar, CharSequence charSequence) {
        int length = charSequence.length();
        return E(jVar, charSequence, 0, length, V(length));
    }

    private static long f(j jVar, j jVar2, int i9, int i10, int i11) {
        int i12 = i11 + i9;
        while (i9 < i12) {
            long P = P(jVar.T0(i9)) - P(jVar2.T0(i10));
            if (P != 0) {
                return P;
            }
            i9 += 4;
            i10 += 4;
        }
        return 0L;
    }

    public static j f0(k kVar, CharSequence charSequence) {
        j l10 = kVar.l(W(charSequence));
        e0(l10, charSequence);
        return l10;
    }

    public static void g(io.grpc.netty.shaded.io.netty.util.c cVar, int i9, j jVar, int i10) {
        if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i10, cVar.length())) {
            ((j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "dst")).B2(cVar.a(), i9 + cVar.b(), i10);
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i9 + ") <= srcIdx + length(" + i10 + ") <= srcLen(" + cVar.length() + ')');
    }

    public static void h(io.grpc.netty.shaded.io.netty.util.c cVar, int i9, j jVar, int i10, int i11) {
        if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i11, cVar.length())) {
            ((j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "dst")).b2(i10, cVar.a(), i9 + cVar.b(), i11);
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i9 + ") <= srcIdx + length(" + i11 + ") <= srcLen(" + cVar.length() + ')');
    }

    public static void i(io.grpc.netty.shaded.io.netty.util.c cVar, j jVar) {
        g(cVar, 0, jVar, cVar.length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j(j jVar, int i9, int i10, Charset charset) {
        byte[] O;
        int i11;
        if (i10 == 0) {
            return "";
        }
        if (jVar.a1()) {
            O = jVar.y();
            i11 = jVar.z() + i9;
        } else {
            O = O(i10);
            jVar.E0(i9, O, 0, i10);
            i11 = 0;
        }
        if (io.grpc.netty.shaded.io.netty.util.h.f45018f.equals(charset)) {
            return new String(O, 0, i11, i10);
        }
        return new String(O, i11, i10, charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j k(k kVar, boolean z10, CharBuffer charBuffer, Charset charset, int i9) {
        j l10;
        CharsetEncoder a10 = io.grpc.netty.shaded.io.netty.util.h.a(charset);
        int remaining = ((int) (charBuffer.remaining() * a10.maxBytesPerChar())) + i9;
        if (z10) {
            l10 = kVar.b(remaining);
        } else {
            l10 = kVar.l(remaining);
        }
        try {
            try {
                ByteBuffer e12 = l10.e1(l10.Q1(), remaining);
                int position = e12.position();
                CoderResult encode = a10.encode(charBuffer, e12, true);
                if (!encode.isUnderflow()) {
                    encode.throwException();
                }
                CoderResult flush = a10.flush(e12);
                if (!flush.isUnderflow()) {
                    flush.throwException();
                }
                l10.L2((l10.K2() + e12.position()) - position);
                return l10;
            } catch (CharacterCodingException e10) {
                throw new IllegalStateException(e10);
            }
        } catch (Throwable th2) {
            l10.release();
            throw th2;
        }
    }

    public static j l(j jVar) {
        if (jVar.f1()) {
            return jVar;
        }
        throw new IllegalReferenceCountException(jVar.refCnt());
    }

    public static boolean m(int i9) {
        return i9 == 0 || i9 == 2;
    }

    public static boolean n(j jVar, int i9, j jVar2, int i10, int i11) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "a");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar2, "b");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "aStartIndex");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i10, "bStartIndex");
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i11, "length");
        if (jVar.K2() - i11 < i9 || jVar2.K2() - i11 < i10) {
            return false;
        }
        int i12 = i11 >>> 3;
        if (jVar.v1() == jVar2.v1()) {
            while (i12 > 0) {
                if (jVar.getLong(i9) != jVar2.getLong(i10)) {
                    return false;
                }
                i9 += 8;
                i10 += 8;
                i12--;
            }
        } else {
            while (i12 > 0) {
                if (jVar.getLong(i9) != K(jVar2.getLong(i10))) {
                    return false;
                }
                i9 += 8;
                i10 += 8;
                i12--;
            }
        }
        for (int i13 = i11 & 7; i13 > 0; i13--) {
            if (jVar.u0(i9) != jVar2.u0(i10)) {
                return false;
            }
            i9++;
            i10++;
        }
        return true;
    }

    public static boolean o(j jVar, j jVar2) {
        if (jVar == jVar2) {
            return true;
        }
        int P1 = jVar.P1();
        if (P1 != jVar2.P1()) {
            return false;
        }
        return n(jVar, jVar.Q1(), jVar2, jVar2.Q1(), P1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(kg.a aVar, int i9, int i10, byte b10) {
        int max = Math.max(i9, 0);
        if (max < i10 && aVar.F() != 0) {
            int i11 = i10 - max;
            aVar.f3(max, i11);
            if (!io.grpc.netty.shaded.io.netty.util.internal.t.i0()) {
                return B(aVar, max, i10, b10);
            }
            int i12 = i11 & 7;
            if (i12 > 0) {
                int Q = Q(aVar, max, i12, b10);
                if (Q != -1) {
                    return Q;
                }
                max += i12;
                if (max == i10) {
                    return -1;
                }
            }
            int i13 = i11 >>> 3;
            ByteOrder nativeOrder = ByteOrder.nativeOrder();
            boolean z10 = nativeOrder == aVar.v1();
            boolean z11 = nativeOrder == ByteOrder.LITTLE_ENDIAN;
            long c10 = d.c(b10);
            for (int i14 = 0; i14 < i13; i14++) {
                int d10 = d.d(z11 ? aVar.Q2(max) : aVar.P2(max), c10, z10);
                if (d10 < 8) {
                    return max + d10;
                }
                max += 8;
            }
        }
        return -1;
    }

    private static void q(ByteBuffer byteBuffer, byte[] bArr, int i9, int i10, OutputStream outputStream, int i11) throws IOException {
        do {
            int min = Math.min(i10, i11);
            byteBuffer.get(bArr, i9, min);
            outputStream.write(bArr, i9, min);
            i11 -= min;
        } while (i11 > 0);
    }

    public static byte[] r(j jVar) {
        return s(jVar, jVar.Q1(), jVar.P1());
    }

    public static byte[] s(j jVar, int i9, int i10) {
        return t(jVar, i9, i10, true);
    }

    public static byte[] t(j jVar, int i9, int i10, boolean z10) {
        int F = jVar.F();
        if (!io.grpc.netty.shaded.io.netty.util.internal.o.c(i9, i10, F)) {
            if (jVar.a1()) {
                int z11 = jVar.z() + i9;
                byte[] y10 = jVar.y();
                return (!z10 && z11 == 0 && i10 == y10.length) ? y10 : Arrays.copyOfRange(y10, z11, i10 + z11);
            }
            byte[] j10 = io.grpc.netty.shaded.io.netty.util.internal.t.j(i10);
            jVar.C0(i9, j10);
            return j10;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i9 + ") <= start + length(" + i10 + ") <= buf.capacity(" + F + ')');
    }

    public static int u(j jVar) {
        int i9;
        int P1 = jVar.P1();
        int i10 = P1 >>> 2;
        int i11 = P1 & 3;
        int Q1 = jVar.Q1();
        if (jVar.v1() == ByteOrder.BIG_ENDIAN) {
            i9 = 1;
            while (i10 > 0) {
                i9 = (i9 * 31) + jVar.getInt(Q1);
                Q1 += 4;
                i10--;
            }
        } else {
            i9 = 1;
            while (i10 > 0) {
                i9 = (i9 * 31) + J(jVar.getInt(Q1));
                Q1 += 4;
                i10--;
            }
        }
        while (i11 > 0) {
            i9 = (i9 * 31) + jVar.u0(Q1);
            i11--;
            Q1++;
        }
        if (i9 == 0) {
            return 1;
        }
        return i9;
    }

    public static String v(j jVar) {
        return w(jVar, jVar.Q1(), jVar.P1());
    }

    public static String w(j jVar, int i9, int i10) {
        return c.c(jVar, i9, i10);
    }

    public static String x(byte[] bArr, int i9, int i10) {
        return c.d(bArr, i9, i10);
    }

    public static int y(j jVar, j jVar2) {
        int max;
        if (jVar2 == null || jVar == null || jVar.P1() > jVar2.P1()) {
            return -1;
        }
        int P1 = jVar2.P1();
        int P12 = jVar.P1();
        int i9 = 0;
        if (P12 == 0) {
            return 0;
        }
        if (P12 == 1) {
            return jVar2.d1(jVar2.Q1(), jVar2.K2(), jVar.u0(jVar.Q1()));
        }
        int Q1 = jVar.Q1();
        int Q12 = jVar2.Q1();
        long C = C(jVar, P12, Q1, true);
        long C2 = C(jVar, P12, Q1, false);
        int max2 = Math.max((int) (C >> 32), (int) (C2 >> 32));
        int max3 = Math.max((int) C, (int) C2);
        int i10 = P12 - max3;
        int i11 = max2 + 1;
        if (n(jVar, Q1, jVar, Q1 + max3, Math.min(i10, i11))) {
            loop0: while (true) {
                int i12 = -1;
                while (i9 <= P1 - P12) {
                    max = Math.max(max2, i12) + 1;
                    while (max < P12 && jVar.u0(max + Q1) == jVar2.u0(max + i9 + Q12)) {
                        max++;
                    }
                    if (max > P1) {
                        return -1;
                    }
                    if (max >= P12) {
                        int i13 = max2;
                        while (i13 > i12 && jVar.u0(i13 + Q1) == jVar2.u0(i13 + i9 + Q12)) {
                            i13--;
                        }
                        if (i13 <= i12) {
                            return i9;
                        }
                        i9 += max3;
                        i12 = i10 - 1;
                    }
                }
                i9 += max - max2;
            }
        } else {
            int max4 = Math.max(i11, (P12 - max2) - 1) + 1;
            while (i9 <= P1 - P12) {
                int i14 = i11;
                while (i14 < P12 && jVar.u0(i14 + Q1) == jVar2.u0(i14 + i9 + Q12)) {
                    i14++;
                }
                if (i14 > P1) {
                    return -1;
                }
                if (i14 >= P12) {
                    int i15 = max2;
                    while (i15 >= 0 && jVar.u0(i15 + Q1) == jVar2.u0(i15 + i9 + Q12)) {
                        i15--;
                    }
                    if (i15 < 0) {
                        return i9;
                    }
                    i9 += max4;
                } else {
                    i9 += i14 - max2;
                }
            }
        }
        return -1;
    }

    public static boolean z(j jVar) {
        return jVar.f1();
    }
}
