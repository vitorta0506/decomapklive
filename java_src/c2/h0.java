package c2;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.vorbis.VorbisComment;
import com.google.android.exoplayer2.util.l0;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f1508a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1509b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f1510c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1511d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f1512e;

        public a(int i9, int i10, long[] jArr, int i11, boolean z10) {
            this.f1508a = i9;
            this.f1509b = i10;
            this.f1510c = jArr;
            this.f1511d = i11;
            this.f1512e = z10;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f1513a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f1514b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1515c;

        public b(String str, String[] strArr, int i9) {
            this.f1513a = str;
            this.f1514b = strArr;
            this.f1515c = i9;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f1516a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1517b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1518c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1519d;

        public c(boolean z10, int i9, int i10, int i11) {
            this.f1516a = z10;
            this.f1517b = i9;
            this.f1518c = i10;
            this.f1519d = i11;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f1520a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1521b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1522c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1523d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1524e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1525f;

        /* renamed from: g  reason: collision with root package name */
        public final int f1526g;

        /* renamed from: h  reason: collision with root package name */
        public final int f1527h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f1528i;

        /* renamed from: j  reason: collision with root package name */
        public final byte[] f1529j;

        public d(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, boolean z10, byte[] bArr) {
            this.f1520a = i9;
            this.f1521b = i10;
            this.f1522c = i11;
            this.f1523d = i12;
            this.f1524e = i13;
            this.f1525f = i14;
            this.f1526g = i15;
            this.f1527h = i16;
            this.f1528i = z10;
            this.f1529j = bArr;
        }
    }

    public static int a(int i9) {
        int i10 = 0;
        while (i9 > 0) {
            i10++;
            i9 >>>= 1;
        }
        return i10;
    }

    private static long b(long j10, long j11) {
        return (long) Math.floor(Math.pow(j10, 1.0d / j11));
    }

    @Nullable
    public static Metadata c(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            String str = list.get(i9);
            String[] H0 = l0.H0(str, ContainerUtils.KEY_VALUE_DELIMITER);
            if (H0.length != 2) {
                com.google.android.exoplayer2.util.r.i("VorbisUtil", "Failed to parse Vorbis comment: " + str);
            } else if (H0[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.a(new com.google.android.exoplayer2.util.b0(Base64.decode(H0[1], 0))));
                } catch (RuntimeException e10) {
                    com.google.android.exoplayer2.util.r.j("VorbisUtil", "Failed to parse vorbis picture", e10);
                }
            } else {
                arrayList.add(new VorbisComment(H0[0], H0[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static a d(g0 g0Var) throws ParserException {
        if (g0Var.d(24) == 5653314) {
            int d10 = g0Var.d(16);
            int d11 = g0Var.d(24);
            long[] jArr = new long[d11];
            boolean c10 = g0Var.c();
            long j10 = 0;
            if (!c10) {
                boolean c11 = g0Var.c();
                for (int i9 = 0; i9 < d11; i9++) {
                    if (c11) {
                        if (g0Var.c()) {
                            jArr[i9] = g0Var.d(5) + 1;
                        } else {
                            jArr[i9] = 0;
                        }
                    } else {
                        jArr[i9] = g0Var.d(5) + 1;
                    }
                }
            } else {
                int d12 = g0Var.d(5) + 1;
                int i10 = 0;
                while (i10 < d11) {
                    int d13 = g0Var.d(a(d11 - i10));
                    for (int i11 = 0; i11 < d13 && i10 < d11; i11++) {
                        jArr[i10] = d12;
                        i10++;
                    }
                    d12++;
                }
            }
            int d14 = g0Var.d(4);
            if (d14 <= 2) {
                if (d14 == 1 || d14 == 2) {
                    g0Var.e(32);
                    g0Var.e(32);
                    int d15 = g0Var.d(4) + 1;
                    g0Var.e(1);
                    if (d14 != 1) {
                        j10 = d11 * d10;
                    } else if (d10 != 0) {
                        j10 = b(d11, d10);
                    }
                    g0Var.e((int) (j10 * d15));
                }
                return new a(d10, d11, jArr, d14, c10);
            }
            throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + d14, null);
        }
        throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + g0Var.b(), null);
    }

    private static void e(g0 g0Var) throws ParserException {
        int d10 = g0Var.d(6) + 1;
        for (int i9 = 0; i9 < d10; i9++) {
            int d11 = g0Var.d(16);
            if (d11 == 0) {
                g0Var.e(8);
                g0Var.e(16);
                g0Var.e(16);
                g0Var.e(6);
                g0Var.e(8);
                int d12 = g0Var.d(4) + 1;
                for (int i10 = 0; i10 < d12; i10++) {
                    g0Var.e(8);
                }
            } else if (d11 != 1) {
                throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + d11, null);
            } else {
                int d13 = g0Var.d(5);
                int i11 = -1;
                int[] iArr = new int[d13];
                for (int i12 = 0; i12 < d13; i12++) {
                    iArr[i12] = g0Var.d(4);
                    if (iArr[i12] > i11) {
                        i11 = iArr[i12];
                    }
                }
                int i13 = i11 + 1;
                int[] iArr2 = new int[i13];
                for (int i14 = 0; i14 < i13; i14++) {
                    iArr2[i14] = g0Var.d(3) + 1;
                    int d14 = g0Var.d(2);
                    if (d14 > 0) {
                        g0Var.e(8);
                    }
                    for (int i15 = 0; i15 < (1 << d14); i15++) {
                        g0Var.e(8);
                    }
                }
                g0Var.e(2);
                int d15 = g0Var.d(4);
                int i16 = 0;
                int i17 = 0;
                for (int i18 = 0; i18 < d13; i18++) {
                    i16 += iArr2[iArr[i18]];
                    while (i17 < i16) {
                        g0Var.e(d15);
                        i17++;
                    }
                }
            }
        }
    }

    private static void f(int i9, g0 g0Var) throws ParserException {
        int d10 = g0Var.d(6) + 1;
        for (int i10 = 0; i10 < d10; i10++) {
            int d11 = g0Var.d(16);
            if (d11 != 0) {
                com.google.android.exoplayer2.util.r.c("VorbisUtil", "mapping type other than 0 not supported: " + d11);
            } else {
                int d12 = g0Var.c() ? g0Var.d(4) + 1 : 1;
                if (g0Var.c()) {
                    int d13 = g0Var.d(8) + 1;
                    for (int i11 = 0; i11 < d13; i11++) {
                        int i12 = i9 - 1;
                        g0Var.e(a(i12));
                        g0Var.e(a(i12));
                    }
                }
                if (g0Var.d(2) != 0) {
                    throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (d12 > 1) {
                    for (int i13 = 0; i13 < i9; i13++) {
                        g0Var.e(4);
                    }
                }
                for (int i14 = 0; i14 < d12; i14++) {
                    g0Var.e(8);
                    g0Var.e(8);
                    g0Var.e(8);
                }
            }
        }
    }

    private static c[] g(g0 g0Var) {
        int d10 = g0Var.d(6) + 1;
        c[] cVarArr = new c[d10];
        for (int i9 = 0; i9 < d10; i9++) {
            cVarArr[i9] = new c(g0Var.c(), g0Var.d(16), g0Var.d(16), g0Var.d(8));
        }
        return cVarArr;
    }

    private static void h(g0 g0Var) throws ParserException {
        int d10 = g0Var.d(6) + 1;
        for (int i9 = 0; i9 < d10; i9++) {
            if (g0Var.d(16) <= 2) {
                g0Var.e(24);
                g0Var.e(24);
                g0Var.e(24);
                int d11 = g0Var.d(6) + 1;
                g0Var.e(8);
                int[] iArr = new int[d11];
                for (int i10 = 0; i10 < d11; i10++) {
                    iArr[i10] = ((g0Var.c() ? g0Var.d(5) : 0) * 8) + g0Var.d(3);
                }
                for (int i11 = 0; i11 < d11; i11++) {
                    for (int i12 = 0; i12 < 8; i12++) {
                        if ((iArr[i11] & (1 << i12)) != 0) {
                            g0Var.e(8);
                        }
                    }
                }
            } else {
                throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
            }
        }
    }

    public static b i(com.google.android.exoplayer2.util.b0 b0Var) throws ParserException {
        return j(b0Var, true, true);
    }

    public static b j(com.google.android.exoplayer2.util.b0 b0Var, boolean z10, boolean z11) throws ParserException {
        if (z10) {
            m(3, b0Var, false);
        }
        String A = b0Var.A((int) b0Var.t());
        int length = 11 + A.length();
        long t10 = b0Var.t();
        String[] strArr = new String[(int) t10];
        int i9 = length + 4;
        for (int i10 = 0; i10 < t10; i10++) {
            strArr[i10] = b0Var.A((int) b0Var.t());
            i9 = i9 + 4 + strArr[i10].length();
        }
        if (z11 && (b0Var.D() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new b(A, strArr, i9 + 1);
    }

    public static d k(com.google.android.exoplayer2.util.b0 b0Var) throws ParserException {
        m(1, b0Var, false);
        int u10 = b0Var.u();
        int D = b0Var.D();
        int u11 = b0Var.u();
        int q10 = b0Var.q();
        if (q10 <= 0) {
            q10 = -1;
        }
        int q11 = b0Var.q();
        if (q11 <= 0) {
            q11 = -1;
        }
        int q12 = b0Var.q();
        if (q12 <= 0) {
            q12 = -1;
        }
        int D2 = b0Var.D();
        return new d(u10, D, u11, q10, q11, q12, (int) Math.pow(2.0d, D2 & 15), (int) Math.pow(2.0d, (D2 & 240) >> 4), (b0Var.D() & 1) > 0, Arrays.copyOf(b0Var.d(), b0Var.f()));
    }

    public static c[] l(com.google.android.exoplayer2.util.b0 b0Var, int i9) throws ParserException {
        m(5, b0Var, false);
        int D = b0Var.D() + 1;
        g0 g0Var = new g0(b0Var.d());
        g0Var.e(b0Var.e() * 8);
        for (int i10 = 0; i10 < D; i10++) {
            d(g0Var);
        }
        int d10 = g0Var.d(6) + 1;
        for (int i11 = 0; i11 < d10; i11++) {
            if (g0Var.d(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        e(g0Var);
        h(g0Var);
        f(i9, g0Var);
        c[] g10 = g(g0Var);
        if (g0Var.c()) {
            return g10;
        }
        throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
    }

    public static boolean m(int i9, com.google.android.exoplayer2.util.b0 b0Var, boolean z10) throws ParserException {
        if (b0Var.a() < 7) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + b0Var.a(), null);
        } else if (b0Var.D() != i9) {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i9), null);
        } else if (b0Var.D() == 118 && b0Var.D() == 111 && b0Var.D() == 114 && b0Var.D() == 98 && b0Var.D() == 105 && b0Var.D() == 115) {
            return true;
        } else {
            if (z10) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
        }
    }
}
