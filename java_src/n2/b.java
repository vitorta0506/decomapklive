package n2;

import android.net.Uri;
import android.util.Pair;
import c2.a0;
import c2.e0;
import c2.l;
import c2.m;
import c2.n;
import c2.q;
import c2.r;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.i0;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.io.IOException;
import java.util.Map;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class b implements l {

    /* renamed from: h  reason: collision with root package name */
    public static final r f55293h = new r() { // from class: n2.a
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            l[] e10;
            e10 = b.e();
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private n f55294a;

    /* renamed from: b  reason: collision with root package name */
    private e0 f55295b;

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC0579b f55298e;

    /* renamed from: c  reason: collision with root package name */
    private int f55296c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f55297d = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f55299f = -1;

    /* renamed from: g  reason: collision with root package name */
    private long f55300g = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0579b {

        /* renamed from: m  reason: collision with root package name */
        private static final int[] f55301m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: n  reason: collision with root package name */
        private static final int[] f55302n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_ORIGINAL_VIDEO_INFO_CALLBACK_FROM_SURFACE_LISTENER, 157, 173, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: a  reason: collision with root package name */
        private final n f55303a;

        /* renamed from: b  reason: collision with root package name */
        private final e0 f55304b;

        /* renamed from: c  reason: collision with root package name */
        private final n2.c f55305c;

        /* renamed from: d  reason: collision with root package name */
        private final int f55306d;

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f55307e;

        /* renamed from: f  reason: collision with root package name */
        private final b0 f55308f;

        /* renamed from: g  reason: collision with root package name */
        private final int f55309g;

        /* renamed from: h  reason: collision with root package name */
        private final k1 f55310h;

        /* renamed from: i  reason: collision with root package name */
        private int f55311i;

        /* renamed from: j  reason: collision with root package name */
        private long f55312j;

        /* renamed from: k  reason: collision with root package name */
        private int f55313k;

        /* renamed from: l  reason: collision with root package name */
        private long f55314l;

        public a(n nVar, e0 e0Var, n2.c cVar) throws ParserException {
            this.f55303a = nVar;
            this.f55304b = e0Var;
            this.f55305c = cVar;
            int max = Math.max(1, cVar.f55325c / 10);
            this.f55309g = max;
            b0 b0Var = new b0(cVar.f55329g);
            b0Var.v();
            int v10 = b0Var.v();
            this.f55306d = v10;
            int i9 = cVar.f55324b;
            int i10 = (((cVar.f55327e - (i9 * 4)) * 8) / (cVar.f55328f * i9)) + 1;
            if (v10 == i10) {
                int l10 = l0.l(max, v10);
                this.f55307e = new byte[cVar.f55327e * l10];
                this.f55308f = new b0(l10 * h(v10, i9));
                int i11 = ((cVar.f55325c * cVar.f55327e) * 8) / v10;
                this.f55310h = new k1.b().e0("audio/raw").G(i11).Z(i11).W(h(max, i9)).H(cVar.f55324b).f0(cVar.f55325c).Y(2).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected frames per block: " + i10 + "; got: " + v10, null);
        }

        private void d(byte[] bArr, int i9, b0 b0Var) {
            for (int i10 = 0; i10 < i9; i10++) {
                for (int i11 = 0; i11 < this.f55305c.f55324b; i11++) {
                    e(bArr, i10, i11, b0Var.d());
                }
            }
            int g10 = g(this.f55306d * i9);
            b0Var.P(0);
            b0Var.O(g10);
        }

        private void e(byte[] bArr, int i9, int i10, byte[] bArr2) {
            n2.c cVar = this.f55305c;
            int i11 = cVar.f55327e;
            int i12 = cVar.f55324b;
            int i13 = (i9 * i11) + (i10 * 4);
            int i14 = (i12 * 4) + i13;
            int i15 = (i11 / i12) - 4;
            int i16 = (short) (((bArr[i13 + 1] & UByte.MAX_VALUE) << 8) | (bArr[i13] & UByte.MAX_VALUE));
            int min = Math.min(bArr[i13 + 2] & UByte.MAX_VALUE, 88);
            int i17 = f55302n[min];
            int i18 = ((i9 * this.f55306d * i12) + i10) * 2;
            bArr2[i18] = (byte) (i16 & 255);
            bArr2[i18 + 1] = (byte) (i16 >> 8);
            for (int i19 = 0; i19 < i15 * 2; i19++) {
                int i20 = bArr[((i19 / 8) * i12 * 4) + i14 + ((i19 / 2) % 4)] & UByte.MAX_VALUE;
                int i21 = i19 % 2 == 0 ? i20 & 15 : i20 >> 4;
                int i22 = ((((i21 & 7) * 2) + 1) * i17) >> 3;
                if ((i21 & 8) != 0) {
                    i22 = -i22;
                }
                i16 = l0.p(i16 + i22, -32768, 32767);
                i18 += i12 * 2;
                bArr2[i18] = (byte) (i16 & 255);
                bArr2[i18 + 1] = (byte) (i16 >> 8);
                int i23 = min + f55301m[i21];
                int[] iArr = f55302n;
                min = l0.p(i23, 0, iArr.length - 1);
                i17 = iArr[min];
            }
        }

        private int f(int i9) {
            return i9 / (this.f55305c.f55324b * 2);
        }

        private int g(int i9) {
            return h(i9, this.f55305c.f55324b);
        }

        private static int h(int i9, int i10) {
            return i9 * 2 * i10;
        }

        private void i(int i9) {
            long E0 = this.f55312j + l0.E0(this.f55314l, 1000000L, this.f55305c.f55325c);
            int g10 = g(i9);
            this.f55304b.c(E0, 1, g10, this.f55313k - g10, null);
            this.f55314l += i9;
            this.f55313k -= g10;
        }

        @Override // n2.b.InterfaceC0579b
        public void a(int i9, long j10) {
            this.f55303a.l(new e(this.f55305c, this.f55306d, i9, j10));
            this.f55304b.d(this.f55310h);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0036 -> B:4:0x001c). Please submit an issue!!! */
        @Override // n2.b.InterfaceC0579b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean b(c2.m r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.f55309g
                int r1 = r6.f55313k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f55306d
                int r0 = com.google.android.exoplayer2.util.l0.l(r0, r1)
                n2.c r1 = r6.f55305c
                int r1 = r1.f55327e
                int r0 = r0 * r1
                r1 = 1
                r2 = 0
                int r4 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
                if (r4 != 0) goto L1e
            L1c:
                r2 = 1
                goto L1f
            L1e:
                r2 = 0
            L1f:
                if (r2 != 0) goto L3f
                int r3 = r6.f55311i
                if (r3 >= r0) goto L3f
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r4 = (int) r3
                byte[] r3 = r6.f55307e
                int r5 = r6.f55311i
                int r3 = r7.read(r3, r5, r4)
                r4 = -1
                if (r3 != r4) goto L39
                goto L1c
            L39:
                int r4 = r6.f55311i
                int r4 = r4 + r3
                r6.f55311i = r4
                goto L1f
            L3f:
                int r7 = r6.f55311i
                n2.c r8 = r6.f55305c
                int r8 = r8.f55327e
                int r7 = r7 / r8
                if (r7 <= 0) goto L77
                byte[] r8 = r6.f55307e
                com.google.android.exoplayer2.util.b0 r9 = r6.f55308f
                r6.d(r8, r7, r9)
                int r8 = r6.f55311i
                n2.c r9 = r6.f55305c
                int r9 = r9.f55327e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f55311i = r8
                com.google.android.exoplayer2.util.b0 r7 = r6.f55308f
                int r7 = r7.f()
                c2.e0 r8 = r6.f55304b
                com.google.android.exoplayer2.util.b0 r9 = r6.f55308f
                r8.a(r9, r7)
                int r8 = r6.f55313k
                int r8 = r8 + r7
                r6.f55313k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f55309g
                if (r7 < r8) goto L77
                r6.i(r8)
            L77:
                if (r2 == 0) goto L84
                int r7 = r6.f55313k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L84
                r6.i(r7)
            L84:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: n2.b.a.b(c2.m, long):boolean");
        }

        @Override // n2.b.InterfaceC0579b
        public void c(long j10) {
            this.f55311i = 0;
            this.f55312j = j10;
            this.f55313k = 0;
            this.f55314l = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0579b {
        void a(int i9, long j10) throws ParserException;

        boolean b(m mVar, long j10) throws IOException;

        void c(long j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements InterfaceC0579b {

        /* renamed from: a  reason: collision with root package name */
        private final n f55315a;

        /* renamed from: b  reason: collision with root package name */
        private final e0 f55316b;

        /* renamed from: c  reason: collision with root package name */
        private final n2.c f55317c;

        /* renamed from: d  reason: collision with root package name */
        private final k1 f55318d;

        /* renamed from: e  reason: collision with root package name */
        private final int f55319e;

        /* renamed from: f  reason: collision with root package name */
        private long f55320f;

        /* renamed from: g  reason: collision with root package name */
        private int f55321g;

        /* renamed from: h  reason: collision with root package name */
        private long f55322h;

        public c(n nVar, e0 e0Var, n2.c cVar, String str, int i9) throws ParserException {
            this.f55315a = nVar;
            this.f55316b = e0Var;
            this.f55317c = cVar;
            int i10 = (cVar.f55324b * cVar.f55328f) / 8;
            if (cVar.f55327e == i10) {
                int i11 = cVar.f55325c;
                int i12 = i11 * i10 * 8;
                int max = Math.max(i10, (i11 * i10) / 10);
                this.f55319e = max;
                this.f55318d = new k1.b().e0(str).G(i12).Z(i12).W(max).H(cVar.f55324b).f0(cVar.f55325c).Y(i9).E();
                return;
            }
            throw ParserException.createForMalformedContainer("Expected block size: " + i10 + "; got: " + cVar.f55327e, null);
        }

        @Override // n2.b.InterfaceC0579b
        public void a(int i9, long j10) {
            this.f55315a.l(new e(this.f55317c, 1, i9, j10));
            this.f55316b.d(this.f55318d);
        }

        @Override // n2.b.InterfaceC0579b
        public boolean b(m mVar, long j10) throws IOException {
            int i9;
            n2.c cVar;
            int i10;
            int i11;
            long j11 = j10;
            while (true) {
                i9 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
                if (i9 <= 0 || (i10 = this.f55321g) >= (i11 = this.f55319e)) {
                    break;
                }
                int b10 = this.f55316b.b(mVar, (int) Math.min(i11 - i10, j11), true);
                if (b10 == -1) {
                    j11 = 0;
                } else {
                    this.f55321g += b10;
                    j11 -= b10;
                }
            }
            int i12 = this.f55317c.f55327e;
            int i13 = this.f55321g / i12;
            if (i13 > 0) {
                int i14 = i13 * i12;
                int i15 = this.f55321g - i14;
                this.f55316b.c(this.f55320f + l0.E0(this.f55322h, 1000000L, cVar.f55325c), 1, i14, i15, null);
                this.f55322h += i13;
                this.f55321g = i15;
            }
            return i9 <= 0;
        }

        @Override // n2.b.InterfaceC0579b
        public void c(long j10) {
            this.f55320f = j10;
            this.f55321g = 0;
            this.f55322h = 0L;
        }
    }

    private void d() {
        com.google.android.exoplayer2.util.a.h(this.f55295b);
        l0.j(this.f55294a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] e() {
        return new l[]{new b()};
    }

    private void g(m mVar) throws IOException {
        com.google.android.exoplayer2.util.a.f(mVar.getPosition() == 0);
        int i9 = this.f55299f;
        if (i9 != -1) {
            mVar.k(i9);
            this.f55296c = 4;
        } else if (d.a(mVar)) {
            mVar.k((int) (mVar.h() - mVar.getPosition()));
            this.f55296c = 1;
        } else {
            throw ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
        }
    }

    private void i(m mVar) throws IOException {
        n2.c b10 = d.b(mVar);
        int i9 = b10.f55323a;
        if (i9 == 17) {
            this.f55298e = new a(this.f55294a, this.f55295b, b10);
        } else if (i9 == 6) {
            this.f55298e = new c(this.f55294a, this.f55295b, b10, "audio/g711-alaw", -1);
        } else if (i9 == 7) {
            this.f55298e = new c(this.f55294a, this.f55295b, b10, "audio/g711-mlaw", -1);
        } else {
            int a10 = i0.a(i9, b10.f55328f);
            if (a10 != 0) {
                this.f55298e = new c(this.f55294a, this.f55295b, b10, "audio/raw", a10);
            } else {
                throw ParserException.createForUnsupportedContainerFeature("Unsupported WAV format type: " + b10.f55323a);
            }
        }
        this.f55296c = 3;
    }

    private void j(m mVar) throws IOException {
        this.f55297d = d.c(mVar);
        this.f55296c = 2;
    }

    private int k(m mVar) throws IOException {
        com.google.android.exoplayer2.util.a.f(this.f55300g != -1);
        return ((InterfaceC0579b) com.google.android.exoplayer2.util.a.e(this.f55298e)).b(mVar, this.f55300g - mVar.getPosition()) ? -1 : 0;
    }

    private void l(m mVar) throws IOException {
        Pair<Long, Long> e10 = d.e(mVar);
        this.f55299f = ((Long) e10.first).intValue();
        long longValue = ((Long) e10.second).longValue();
        long j10 = this.f55297d;
        if (j10 != -1 && longValue == 4294967295L) {
            longValue = j10;
        }
        this.f55300g = this.f55299f + longValue;
        long a10 = mVar.a();
        if (a10 != -1 && this.f55300g > a10) {
            com.google.android.exoplayer2.util.r.i("WavExtractor", "Data exceeds input length: " + this.f55300g + ", " + a10);
            this.f55300g = a10;
        }
        ((InterfaceC0579b) com.google.android.exoplayer2.util.a.e(this.f55298e)).a(this.f55299f, this.f55300g);
        this.f55296c = 4;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        this.f55296c = j10 == 0 ? 0 : 4;
        InterfaceC0579b interfaceC0579b = this.f55298e;
        if (interfaceC0579b != null) {
            interfaceC0579b.c(j11);
        }
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        d();
        int i9 = this.f55296c;
        if (i9 == 0) {
            g(mVar);
            return 0;
        } else if (i9 == 1) {
            j(mVar);
            return 0;
        } else if (i9 == 2) {
            i(mVar);
            return 0;
        } else if (i9 == 3) {
            l(mVar);
            return 0;
        } else if (i9 == 4) {
            return k(mVar);
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f55294a = nVar;
        this.f55295b = nVar.q(0, 1);
        nVar.o();
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        return d.a(mVar);
    }

    @Override // c2.l
    public void release() {
    }
}
