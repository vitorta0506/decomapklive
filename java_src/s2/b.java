package s2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.BinaryFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterFrame;
import com.google.android.exoplayer2.metadata.id3.ChapterTocFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.GeobFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.metadata.id3.UrlLinkFrame;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.google.common.base.c;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import kotlin.UByte;
import o2.d;
import o2.f;
/* loaded from: classes.dex */
public final class b extends f {

    /* renamed from: b  reason: collision with root package name */
    public static final a f57642b = new a() { // from class: s2.a
        @Override // s2.b.a
        public final boolean a(int i9, int i10, int i11, int i12, int i13) {
            boolean z10;
            z10 = b.z(i9, i10, i11, i12, i13);
            return z10;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final a f57643a;

    /* loaded from: classes.dex */
    public interface a {
        boolean a(int i9, int i10, int i11, int i12, int i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0636b {

        /* renamed from: a  reason: collision with root package name */
        private final int f57644a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f57645b;

        /* renamed from: c  reason: collision with root package name */
        private final int f57646c;

        public C0636b(int i9, boolean z10, int i10) {
            this.f57644a = i9;
            this.f57645b = z10;
            this.f57646c = i10;
        }
    }

    public b() {
        this(null);
    }

    private static int A(b0 b0Var, int i9) {
        byte[] d10 = b0Var.d();
        int e10 = b0Var.e();
        int i10 = e10;
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= e10 + i9) {
                return i9;
            }
            if ((d10[i10] & UByte.MAX_VALUE) == 255 && d10[i11] == 0) {
                System.arraycopy(d10, i10 + 2, d10, i11, (i9 - (i10 - e10)) - 2);
                i9--;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        if ((r10 & 1) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
        if ((r10 & 128) != 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean B(com.google.android.exoplayer2.util.b0 r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.e()
        L8:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lab
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L22
            int r7 = r18.n()     // Catch: java.lang.Throwable -> Laf
            long r8 = r18.F()     // Catch: java.lang.Throwable -> Laf
            int r10 = r18.J()     // Catch: java.lang.Throwable -> Laf
            goto L2c
        L22:
            int r7 = r18.G()     // Catch: java.lang.Throwable -> Laf
            int r8 = r18.G()     // Catch: java.lang.Throwable -> Laf
            long r8 = (long) r8
            r10 = 0
        L2c:
            r11 = 0
            if (r7 != 0) goto L3a
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3a
            if (r10 != 0) goto L3a
            r1.P(r2)
            return r4
        L3a:
            r7 = 4
            if (r0 != r7) goto L6b
            if (r21 != 0) goto L6b
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r15 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r15 == 0) goto L4b
            r1.P(r2)
            return r6
        L4b:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6b:
            if (r0 != r7) goto L7b
            r3 = r10 & 64
            if (r3 == 0) goto L73
            r3 = 1
            goto L74
        L73:
            r3 = 0
        L74:
            r7 = r10 & 1
            if (r7 == 0) goto L79
            goto L8b
        L79:
            r4 = 0
            goto L8b
        L7b:
            if (r0 != r3) goto L89
            r3 = r10 & 32
            if (r3 == 0) goto L83
            r3 = 1
            goto L84
        L83:
            r3 = 0
        L84:
            r7 = r10 & 128(0x80, float:1.8E-43)
            if (r7 == 0) goto L79
            goto L8b
        L89:
            r3 = 0
            goto L79
        L8b:
            if (r4 == 0) goto L8f
            int r3 = r3 + 4
        L8f:
            long r3 = (long) r3
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 >= 0) goto L98
            r1.P(r2)
            return r6
        L98:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            long r3 = (long) r3
            int r7 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r7 >= 0) goto La5
            r1.P(r2)
            return r6
        La5:
            int r3 = (int) r8
            r1.Q(r3)     // Catch: java.lang.Throwable -> Laf
            goto L8
        Lab:
            r1.P(r2)
            return r4
        Laf:
            r0 = move-exception
            r1.P(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: s2.b.B(com.google.android.exoplayer2.util.b0, int, int, boolean):boolean");
    }

    private static byte[] d(byte[] bArr, int i9, int i10) {
        if (i10 <= i9) {
            return l0.f6990f;
        }
        return Arrays.copyOfRange(bArr, i9, i10);
    }

    private static ApicFrame f(b0 b0Var, int i9, int i10) throws UnsupportedEncodingException {
        int y10;
        String str;
        int D = b0Var.D();
        String v10 = v(D);
        int i11 = i9 - 1;
        byte[] bArr = new byte[i11];
        b0Var.j(bArr, 0, i11);
        if (i10 == 2) {
            str = "image/" + c.f(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            y10 = 2;
        } else {
            y10 = y(bArr, 0);
            String f10 = c.f(new String(bArr, 0, y10, "ISO-8859-1"));
            if (f10.indexOf(47) == -1) {
                str = "image/" + f10;
            } else {
                str = f10;
            }
        }
        int i12 = bArr[y10 + 1] & UByte.MAX_VALUE;
        int i13 = y10 + 2;
        int x10 = x(bArr, i13, D);
        return new ApicFrame(str, new String(bArr, i13, x10 - i13, v10), i12, d(bArr, x10 + u(D), i11));
    }

    private static BinaryFrame g(b0 b0Var, int i9, String str) {
        byte[] bArr = new byte[i9];
        b0Var.j(bArr, 0, i9);
        return new BinaryFrame(str, bArr);
    }

    private static ChapterFrame h(b0 b0Var, int i9, int i10, boolean z10, int i11, @Nullable a aVar) throws UnsupportedEncodingException {
        int e10 = b0Var.e();
        int y10 = y(b0Var.d(), e10);
        String str = new String(b0Var.d(), e10, y10 - e10, "ISO-8859-1");
        b0Var.P(y10 + 1);
        int n9 = b0Var.n();
        int n10 = b0Var.n();
        long F = b0Var.F();
        long j10 = F == 4294967295L ? -1L : F;
        long F2 = b0Var.F();
        long j11 = F2 == 4294967295L ? -1L : F2;
        ArrayList arrayList = new ArrayList();
        int i12 = e10 + i9;
        while (b0Var.e() < i12) {
            Id3Frame k10 = k(i10, b0Var, z10, i11, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new ChapterFrame(str, n9, n10, j10, j11, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    private static ChapterTocFrame i(b0 b0Var, int i9, int i10, boolean z10, int i11, @Nullable a aVar) throws UnsupportedEncodingException {
        int e10 = b0Var.e();
        int y10 = y(b0Var.d(), e10);
        String str = new String(b0Var.d(), e10, y10 - e10, "ISO-8859-1");
        b0Var.P(y10 + 1);
        int D = b0Var.D();
        boolean z11 = (D & 2) != 0;
        boolean z12 = (D & 1) != 0;
        int D2 = b0Var.D();
        String[] strArr = new String[D2];
        for (int i12 = 0; i12 < D2; i12++) {
            int e11 = b0Var.e();
            int y11 = y(b0Var.d(), e11);
            strArr[i12] = new String(b0Var.d(), e11, y11 - e11, "ISO-8859-1");
            b0Var.P(y11 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i13 = e10 + i9;
        while (b0Var.e() < i13) {
            Id3Frame k10 = k(i10, b0Var, z10, i11, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new ChapterTocFrame(str, z11, z12, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    @Nullable
    private static CommentFrame j(b0 b0Var, int i9) throws UnsupportedEncodingException {
        if (i9 < 4) {
            return null;
        }
        int D = b0Var.D();
        String v10 = v(D);
        byte[] bArr = new byte[3];
        b0Var.j(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i10 = i9 - 4;
        byte[] bArr2 = new byte[i10];
        b0Var.j(bArr2, 0, i10);
        int x10 = x(bArr2, 0, D);
        String str2 = new String(bArr2, 0, x10, v10);
        int u10 = x10 + u(D);
        return new CommentFrame(str, str2, p(bArr2, u10, x(bArr2, u10, D), v10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0190, code lost:
        if (r13 == 67) goto L98;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.exoplayer2.metadata.id3.Id3Frame k(int r19, com.google.android.exoplayer2.util.b0 r20, boolean r21, int r22, @androidx.annotation.Nullable s2.b.a r23) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s2.b.k(int, com.google.android.exoplayer2.util.b0, boolean, int, s2.b$a):com.google.android.exoplayer2.metadata.id3.Id3Frame");
    }

    private static GeobFrame l(b0 b0Var, int i9) throws UnsupportedEncodingException {
        int D = b0Var.D();
        String v10 = v(D);
        int i10 = i9 - 1;
        byte[] bArr = new byte[i10];
        b0Var.j(bArr, 0, i10);
        int y10 = y(bArr, 0);
        String str = new String(bArr, 0, y10, "ISO-8859-1");
        int i11 = y10 + 1;
        int x10 = x(bArr, i11, D);
        String p10 = p(bArr, i11, x10, v10);
        int u10 = x10 + u(D);
        int x11 = x(bArr, u10, D);
        return new GeobFrame(str, p10, p(bArr, u10, x11, v10), d(bArr, x11 + u(D), i10));
    }

    @Nullable
    private static C0636b m(b0 b0Var) {
        int G;
        if (b0Var.a() < 10) {
            r.i("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        boolean z10 = false;
        if (b0Var.G() != 4801587) {
            r.i("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(G)));
            return null;
        }
        int D = b0Var.D();
        b0Var.Q(1);
        int D2 = b0Var.D();
        int C = b0Var.C();
        if (D == 2) {
            if ((D2 & 64) != 0) {
                r.i("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (D == 3) {
            if ((D2 & 64) != 0) {
                int n9 = b0Var.n();
                b0Var.Q(n9);
                C -= n9 + 4;
            }
        } else if (D != 4) {
            r.i("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + D);
            return null;
        } else {
            if ((D2 & 64) != 0) {
                int C2 = b0Var.C();
                b0Var.Q(C2 - 4);
                C -= C2;
            }
            if ((D2 & 16) != 0) {
                C -= 10;
            }
        }
        if (D < 4 && (D2 & 128) != 0) {
            z10 = true;
        }
        return new C0636b(D, z10, C);
    }

    private static MlltFrame n(b0 b0Var, int i9) {
        int J = b0Var.J();
        int G = b0Var.G();
        int G2 = b0Var.G();
        int D = b0Var.D();
        int D2 = b0Var.D();
        a0 a0Var = new a0();
        a0Var.m(b0Var);
        int i10 = ((i9 - 10) * 8) / (D + D2);
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int h10 = a0Var.h(D);
            int h11 = a0Var.h(D2);
            iArr[i11] = h10;
            iArr2[i11] = h11;
        }
        return new MlltFrame(J, G, G2, iArr, iArr2);
    }

    private static PrivFrame o(b0 b0Var, int i9) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i9];
        b0Var.j(bArr, 0, i9);
        int y10 = y(bArr, 0);
        return new PrivFrame(new String(bArr, 0, y10, "ISO-8859-1"), d(bArr, y10 + 1, i9));
    }

    private static String p(byte[] bArr, int i9, int i10, String str) throws UnsupportedEncodingException {
        return (i10 <= i9 || i10 > bArr.length) ? "" : new String(bArr, i9, i10 - i9, str);
    }

    @Nullable
    private static TextInformationFrame q(b0 b0Var, int i9, String str) throws UnsupportedEncodingException {
        if (i9 < 1) {
            return null;
        }
        int D = b0Var.D();
        String v10 = v(D);
        int i10 = i9 - 1;
        byte[] bArr = new byte[i10];
        b0Var.j(bArr, 0, i10);
        return new TextInformationFrame(str, null, new String(bArr, 0, x(bArr, 0, D), v10));
    }

    @Nullable
    private static TextInformationFrame r(b0 b0Var, int i9) throws UnsupportedEncodingException {
        if (i9 < 1) {
            return null;
        }
        int D = b0Var.D();
        String v10 = v(D);
        int i10 = i9 - 1;
        byte[] bArr = new byte[i10];
        b0Var.j(bArr, 0, i10);
        int x10 = x(bArr, 0, D);
        String str = new String(bArr, 0, x10, v10);
        int u10 = x10 + u(D);
        return new TextInformationFrame("TXXX", str, p(bArr, u10, x(bArr, u10, D), v10));
    }

    private static UrlLinkFrame s(b0 b0Var, int i9, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i9];
        b0Var.j(bArr, 0, i9);
        return new UrlLinkFrame(str, null, new String(bArr, 0, y(bArr, 0), "ISO-8859-1"));
    }

    @Nullable
    private static UrlLinkFrame t(b0 b0Var, int i9) throws UnsupportedEncodingException {
        if (i9 < 1) {
            return null;
        }
        int D = b0Var.D();
        String v10 = v(D);
        int i10 = i9 - 1;
        byte[] bArr = new byte[i10];
        b0Var.j(bArr, 0, i10);
        int x10 = x(bArr, 0, D);
        String str = new String(bArr, 0, x10, v10);
        int u10 = x10 + u(D);
        return new UrlLinkFrame("WXXX", str, p(bArr, u10, y(bArr, u10), "ISO-8859-1"));
    }

    private static int u(int i9) {
        return (i9 == 0 || i9 == 3) ? 1 : 2;
    }

    private static String v(int i9) {
        return i9 != 1 ? i9 != 2 ? i9 != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    private static String w(int i9, int i10, int i11, int i12, int i13) {
        return i9 == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
    }

    private static int x(byte[] bArr, int i9, int i10) {
        int y10 = y(bArr, i9);
        if (i10 == 0 || i10 == 3) {
            return y10;
        }
        while (y10 < bArr.length - 1) {
            if ((y10 - i9) % 2 == 0 && bArr[y10 + 1] == 0) {
                return y10;
            }
            y10 = y(bArr, y10 + 1);
        }
        return bArr.length;
    }

    private static int y(byte[] bArr, int i9) {
        while (i9 < bArr.length) {
            if (bArr[i9] == 0) {
                return i9;
            }
            i9++;
        }
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean z(int i9, int i10, int i11, int i12, int i13) {
        return false;
    }

    @Override // o2.f
    @Nullable
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    @Nullable
    public Metadata e(byte[] bArr, int i9) {
        ArrayList arrayList = new ArrayList();
        b0 b0Var = new b0(bArr, i9);
        C0636b m10 = m(b0Var);
        if (m10 == null) {
            return null;
        }
        int e10 = b0Var.e();
        int i10 = m10.f57644a == 2 ? 6 : 10;
        int i11 = m10.f57646c;
        if (m10.f57645b) {
            i11 = A(b0Var, m10.f57646c);
        }
        b0Var.O(e10 + i11);
        boolean z10 = false;
        if (!B(b0Var, m10.f57644a, i10, false)) {
            if (m10.f57644a != 4 || !B(b0Var, 4, i10, true)) {
                r.i("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + m10.f57644a);
                return null;
            }
            z10 = true;
        }
        while (b0Var.a() >= i10) {
            Id3Frame k10 = k(m10.f57644a, b0Var, z10, i10, this.f57643a);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new Metadata(arrayList);
    }

    public b(@Nullable a aVar) {
        this.f57643a = aVar;
    }
}
