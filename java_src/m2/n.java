package m2;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.util.Arrays;
import m2.i0;
/* loaded from: classes.dex */
public final class n implements m {

    /* renamed from: q  reason: collision with root package name */
    private static final double[] f54583q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f54584a;

    /* renamed from: b  reason: collision with root package name */
    private c2.e0 f54585b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final k0 f54586c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54587d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final u f54588e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f54589f;

    /* renamed from: g  reason: collision with root package name */
    private final a f54590g;

    /* renamed from: h  reason: collision with root package name */
    private long f54591h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f54592i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54593j;

    /* renamed from: k  reason: collision with root package name */
    private long f54594k;

    /* renamed from: l  reason: collision with root package name */
    private long f54595l;

    /* renamed from: m  reason: collision with root package name */
    private long f54596m;

    /* renamed from: n  reason: collision with root package name */
    private long f54597n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f54598o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f54599p;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        private static final byte[] f54600e = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f54601a;

        /* renamed from: b  reason: collision with root package name */
        public int f54602b;

        /* renamed from: c  reason: collision with root package name */
        public int f54603c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f54604d;

        public a(int i9) {
            this.f54604d = new byte[i9];
        }

        public void a(byte[] bArr, int i9, int i10) {
            if (this.f54601a) {
                int i11 = i10 - i9;
                byte[] bArr2 = this.f54604d;
                int length = bArr2.length;
                int i12 = this.f54602b;
                if (length < i12 + i11) {
                    this.f54604d = Arrays.copyOf(bArr2, (i12 + i11) * 2);
                }
                System.arraycopy(bArr, i9, this.f54604d, this.f54602b, i11);
                this.f54602b += i11;
            }
        }

        public boolean b(int i9, int i10) {
            if (this.f54601a) {
                int i11 = this.f54602b - i10;
                this.f54602b = i11;
                if (this.f54603c == 0 && i9 == 181) {
                    this.f54603c = i11;
                } else {
                    this.f54601a = false;
                    return true;
                }
            } else if (i9 == 179) {
                this.f54601a = true;
            }
            byte[] bArr = f54600e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f54601a = false;
            this.f54602b = 0;
            this.f54603c = 0;
        }
    }

    public n() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair<com.google.android.exoplayer2.k1, java.lang.Long> a(m2.n.a r8, java.lang.String r9) {
        /*
            byte[] r0 = r8.f54604d
            int r1 = r8.f54602b
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r1 = 4
            r2 = r0[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 5
            r4 = r0[r3]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = 6
            r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r1
            int r6 = r4 >> 4
            r2 = r2 | r6
            r4 = r4 & 15
            int r4 = r4 << 8
            r4 = r4 | r5
            r5 = 7
            r6 = r0[r5]
            r6 = r6 & 240(0xf0, float:3.36E-43)
            int r6 = r6 >> r1
            r7 = 2
            if (r6 == r7) goto L3d
            r7 = 3
            if (r6 == r7) goto L37
            if (r6 == r1) goto L31
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L44
        L31:
            int r1 = r4 * 121
            float r1 = (float) r1
            int r6 = r2 * 100
            goto L42
        L37:
            int r1 = r4 * 16
            float r1 = (float) r1
            int r6 = r2 * 9
            goto L42
        L3d:
            int r1 = r4 * 4
            float r1 = (float) r1
            int r6 = r2 * 3
        L42:
            float r6 = (float) r6
            float r1 = r1 / r6
        L44:
            com.google.android.exoplayer2.k1$b r6 = new com.google.android.exoplayer2.k1$b
            r6.<init>()
            com.google.android.exoplayer2.k1$b r9 = r6.S(r9)
            java.lang.String r6 = "video/mpeg2"
            com.google.android.exoplayer2.k1$b r9 = r9.e0(r6)
            com.google.android.exoplayer2.k1$b r9 = r9.j0(r2)
            com.google.android.exoplayer2.k1$b r9 = r9.Q(r4)
            com.google.android.exoplayer2.k1$b r9 = r9.a0(r1)
            java.util.List r1 = java.util.Collections.singletonList(r0)
            com.google.android.exoplayer2.k1$b r9 = r9.T(r1)
            com.google.android.exoplayer2.k1 r9 = r9.E()
            r1 = 0
            r4 = r0[r5]
            r4 = r4 & 15
            int r4 = r4 + (-1)
            if (r4 < 0) goto L9e
            double[] r5 = m2.n.f54583q
            int r6 = r5.length
            if (r4 >= r6) goto L9e
            r1 = r5[r4]
            int r8 = r8.f54603c
            int r8 = r8 + 9
            r4 = r0[r8]
            r4 = r4 & 96
            int r3 = r4 >> 5
            r8 = r0[r8]
            r8 = r8 & 31
            if (r3 == r8) goto L97
            double r3 = (double) r3
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            int r8 = r8 + 1
            double r5 = (double) r8
            double r3 = r3 / r5
            double r1 = r1 * r3
        L97:
            r3 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r3 = r3 / r1
            long r1 = (long) r3
        L9e:
            java.lang.Long r8 = java.lang.Long.valueOf(r1)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.n.a(m2.n$a, java.lang.String):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0142  */
    @Override // m2.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(com.google.android.exoplayer2.util.b0 r21) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.n.b(com.google.android.exoplayer2.util.b0):void");
    }

    @Override // m2.m
    public void c() {
        com.google.android.exoplayer2.util.w.a(this.f54589f);
        this.f54590g.c();
        u uVar = this.f54588e;
        if (uVar != null) {
            uVar.d();
        }
        this.f54591h = 0L;
        this.f54592i = false;
        this.f54595l = -9223372036854775807L;
        this.f54597n = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54584a = dVar.b();
        this.f54585b = nVar.q(dVar.c(), 2);
        k0 k0Var = this.f54586c;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        this.f54595l = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(@Nullable k0 k0Var) {
        this.f54586c = k0Var;
        this.f54589f = new boolean[4];
        this.f54590g = new a(128);
        if (k0Var != null) {
            this.f54588e = new u(EventTrackingUtils.EVENT_TRACKING_RESULT_CODE, 128);
            this.f54587d = new com.google.android.exoplayer2.util.b0();
        } else {
            this.f54588e = null;
            this.f54587d = null;
        }
        this.f54595l = -9223372036854775807L;
        this.f54597n = -9223372036854775807L;
    }
}
