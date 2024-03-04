package k2;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.annotation.Nullable;
import c2.a0;
import c2.b0;
import c2.e0;
import c2.f0;
import c2.x;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.w;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import k2.a;
/* loaded from: classes.dex */
public final class k implements c2.l, b0 {

    /* renamed from: y  reason: collision with root package name */
    public static final c2.r f53432y = new c2.r() { // from class: k2.i
        @Override // c2.r
        public /* synthetic */ c2.l[] a(Uri uri, Map map) {
            return c2.q.a(this, uri, map);
        }

        @Override // c2.r
        public final c2.l[] b() {
            c2.l[] s10;
            s10 = k.s();
            return s10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f53433a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f53434b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f53435c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f53436d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f53437e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<a.C0548a> f53438f;

    /* renamed from: g  reason: collision with root package name */
    private final m f53439g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Metadata.Entry> f53440h;

    /* renamed from: i  reason: collision with root package name */
    private int f53441i;

    /* renamed from: j  reason: collision with root package name */
    private int f53442j;

    /* renamed from: k  reason: collision with root package name */
    private long f53443k;

    /* renamed from: l  reason: collision with root package name */
    private int f53444l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private com.google.android.exoplayer2.util.b0 f53445m;

    /* renamed from: n  reason: collision with root package name */
    private int f53446n;

    /* renamed from: o  reason: collision with root package name */
    private int f53447o;

    /* renamed from: p  reason: collision with root package name */
    private int f53448p;

    /* renamed from: q  reason: collision with root package name */
    private int f53449q;

    /* renamed from: r  reason: collision with root package name */
    private c2.n f53450r;

    /* renamed from: s  reason: collision with root package name */
    private a[] f53451s;

    /* renamed from: t  reason: collision with root package name */
    private long[][] f53452t;

    /* renamed from: u  reason: collision with root package name */
    private int f53453u;

    /* renamed from: v  reason: collision with root package name */
    private long f53454v;

    /* renamed from: w  reason: collision with root package name */
    private int f53455w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private MotionPhotoMetadata f53456x;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final o f53457a;

        /* renamed from: b  reason: collision with root package name */
        public final r f53458b;

        /* renamed from: c  reason: collision with root package name */
        public final e0 f53459c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final f0 f53460d;

        /* renamed from: e  reason: collision with root package name */
        public int f53461e;

        public a(o oVar, r rVar, e0 e0Var) {
            this.f53457a = oVar;
            this.f53458b = rVar;
            this.f53459c = e0Var;
            this.f53460d = "audio/true-hd".equals(oVar.f53479f.f6111l) ? new f0() : null;
        }
    }

    public k() {
        this(0);
    }

    private boolean A(c2.m mVar) throws IOException {
        a.C0548a peek;
        if (this.f53444l == 0) {
            if (!mVar.g(this.f53437e.d(), 0, 8, true)) {
                w();
                return false;
            }
            this.f53444l = 8;
            this.f53437e.P(0);
            this.f53443k = this.f53437e.F();
            this.f53442j = this.f53437e.n();
        }
        long j10 = this.f53443k;
        if (j10 == 1) {
            mVar.readFully(this.f53437e.d(), 8, 8);
            this.f53444l += 8;
            this.f53443k = this.f53437e.I();
        } else if (j10 == 0) {
            long a10 = mVar.a();
            if (a10 == -1 && (peek = this.f53438f.peek()) != null) {
                a10 = peek.f53343b;
            }
            if (a10 != -1) {
                this.f53443k = (a10 - mVar.getPosition()) + this.f53444l;
            }
        }
        if (this.f53443k >= this.f53444l) {
            if (E(this.f53442j)) {
                long position = mVar.getPosition();
                long j11 = this.f53443k;
                int i9 = this.f53444l;
                long j12 = (position + j11) - i9;
                if (j11 != i9 && this.f53442j == 1835365473) {
                    u(mVar);
                }
                this.f53438f.push(new a.C0548a(this.f53442j, j12));
                if (this.f53443k == this.f53444l) {
                    v(j12);
                } else {
                    n();
                }
            } else if (F(this.f53442j)) {
                com.google.android.exoplayer2.util.a.f(this.f53444l == 8);
                com.google.android.exoplayer2.util.a.f(this.f53443k <= 2147483647L);
                com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0((int) this.f53443k);
                System.arraycopy(this.f53437e.d(), 0, b0Var.d(), 0, 8);
                this.f53445m = b0Var;
                this.f53441i = 1;
            } else {
                z(mVar.getPosition() - this.f53444l);
                this.f53445m = null;
                this.f53441i = 1;
            }
            return true;
        }
        throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
    }

    private boolean B(c2.m mVar, a0 a0Var) throws IOException {
        boolean z10;
        long j10 = this.f53443k - this.f53444l;
        long position = mVar.getPosition() + j10;
        com.google.android.exoplayer2.util.b0 b0Var = this.f53445m;
        if (b0Var != null) {
            mVar.readFully(b0Var.d(), this.f53444l, (int) j10);
            if (this.f53442j == 1718909296) {
                this.f53455w = x(b0Var);
            } else if (!this.f53438f.isEmpty()) {
                this.f53438f.peek().e(new a.b(this.f53442j, b0Var));
            }
        } else if (j10 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            mVar.k((int) j10);
        } else {
            a0Var.f1463a = mVar.getPosition() + j10;
            z10 = true;
            v(position);
            return (z10 || this.f53441i == 2) ? false : true;
        }
        z10 = false;
        v(position);
        if (z10) {
        }
    }

    private int C(c2.m mVar, a0 a0Var) throws IOException {
        int i9;
        a0 a0Var2;
        long position = mVar.getPosition();
        if (this.f53446n == -1) {
            int q10 = q(position);
            this.f53446n = q10;
            if (q10 == -1) {
                return -1;
            }
        }
        a aVar = this.f53451s[this.f53446n];
        e0 e0Var = aVar.f53459c;
        int i10 = aVar.f53461e;
        r rVar = aVar.f53458b;
        long j10 = rVar.f53510c[i10];
        int i11 = rVar.f53511d[i10];
        f0 f0Var = aVar.f53460d;
        long j11 = (j10 - position) + this.f53447o;
        if (j11 < 0) {
            i9 = 1;
            a0Var2 = a0Var;
        } else if (j11 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            if (aVar.f53457a.f53480g == 1) {
                j11 += 8;
                i11 -= 8;
            }
            mVar.k((int) j11);
            o oVar = aVar.f53457a;
            if (oVar.f53483j != 0) {
                byte[] d10 = this.f53435c.d();
                d10[0] = 0;
                d10[1] = 0;
                d10[2] = 0;
                int i12 = aVar.f53457a.f53483j;
                int i13 = 4 - i12;
                while (this.f53448p < i11) {
                    int i14 = this.f53449q;
                    if (i14 == 0) {
                        mVar.readFully(d10, i13, i12);
                        this.f53447o += i12;
                        this.f53435c.P(0);
                        int n9 = this.f53435c.n();
                        if (n9 >= 0) {
                            this.f53449q = n9;
                            this.f53434b.P(0);
                            e0Var.a(this.f53434b, 4);
                            this.f53448p += 4;
                            i11 += i13;
                        } else {
                            throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                        }
                    } else {
                        int b10 = e0Var.b(mVar, i14, false);
                        this.f53447o += b10;
                        this.f53448p += b10;
                        this.f53449q -= b10;
                    }
                }
            } else {
                if ("audio/ac4".equals(oVar.f53479f.f6111l)) {
                    if (this.f53448p == 0) {
                        com.google.android.exoplayer2.audio.c.a(i11, this.f53436d);
                        e0Var.a(this.f53436d, 7);
                        this.f53448p += 7;
                    }
                    i11 += 7;
                } else if (f0Var != null) {
                    f0Var.d(mVar);
                }
                while (true) {
                    int i15 = this.f53448p;
                    if (i15 >= i11) {
                        break;
                    }
                    int b11 = e0Var.b(mVar, i11 - i15, false);
                    this.f53447o += b11;
                    this.f53448p += b11;
                    this.f53449q -= b11;
                }
            }
            int i16 = i11;
            r rVar2 = aVar.f53458b;
            long j12 = rVar2.f53513f[i10];
            int i17 = rVar2.f53514g[i10];
            if (f0Var != null) {
                f0Var.c(e0Var, j12, i17, i16, 0, null);
                if (i10 + 1 == aVar.f53458b.f53509b) {
                    f0Var.a(e0Var, null);
                }
            } else {
                e0Var.c(j12, i17, i16, 0, null);
            }
            aVar.f53461e++;
            this.f53446n = -1;
            this.f53447o = 0;
            this.f53448p = 0;
            this.f53449q = 0;
            return 0;
        } else {
            a0Var2 = a0Var;
            i9 = 1;
        }
        a0Var2.f1463a = j10;
        return i9;
    }

    private int D(c2.m mVar, a0 a0Var) throws IOException {
        int c10 = this.f53439g.c(mVar, a0Var, this.f53440h);
        if (c10 == 1 && a0Var.f1463a == 0) {
            n();
        }
        return c10;
    }

    private static boolean E(int i9) {
        return i9 == 1836019574 || i9 == 1953653099 || i9 == 1835297121 || i9 == 1835626086 || i9 == 1937007212 || i9 == 1701082227 || i9 == 1835365473;
    }

    private static boolean F(int i9) {
        return i9 == 1835296868 || i9 == 1836476516 || i9 == 1751411826 || i9 == 1937011556 || i9 == 1937011827 || i9 == 1937011571 || i9 == 1668576371 || i9 == 1701606260 || i9 == 1937011555 || i9 == 1937011578 || i9 == 1937013298 || i9 == 1937007471 || i9 == 1668232756 || i9 == 1953196132 || i9 == 1718909296 || i9 == 1969517665 || i9 == 1801812339 || i9 == 1768715124;
    }

    private void G(a aVar, long j10) {
        r rVar = aVar.f53458b;
        int a10 = rVar.a(j10);
        if (a10 == -1) {
            a10 = rVar.b(j10);
        }
        aVar.f53461e = a10;
    }

    private static int l(int i9) {
        if (i9 != 1751476579) {
            return i9 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] m(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i9 = 0; i9 < aVarArr.length; i9++) {
            jArr[i9] = new long[aVarArr[i9].f53458b.f53509b];
            jArr2[i9] = aVarArr[i9].f53458b.f53513f[0];
        }
        long j10 = 0;
        int i10 = 0;
        while (i10 < aVarArr.length) {
            long j11 = Long.MAX_VALUE;
            int i11 = -1;
            for (int i12 = 0; i12 < aVarArr.length; i12++) {
                if (!zArr[i12] && jArr2[i12] <= j11) {
                    j11 = jArr2[i12];
                    i11 = i12;
                }
            }
            int i13 = iArr[i11];
            jArr[i11][i13] = j10;
            j10 += aVarArr[i11].f53458b.f53511d[i13];
            int i14 = i13 + 1;
            iArr[i11] = i14;
            if (i14 < jArr[i11].length) {
                jArr2[i11] = aVarArr[i11].f53458b.f53513f[i14];
            } else {
                zArr[i11] = true;
                i10++;
            }
        }
        return jArr;
    }

    private void n() {
        this.f53441i = 0;
        this.f53444l = 0;
    }

    private static int p(r rVar, long j10) {
        int a10 = rVar.a(j10);
        return a10 == -1 ? rVar.b(j10) : a10;
    }

    private int q(long j10) {
        int i9 = -1;
        int i10 = -1;
        int i11 = 0;
        long j11 = Long.MAX_VALUE;
        boolean z10 = true;
        long j12 = Long.MAX_VALUE;
        boolean z11 = true;
        long j13 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.f53451s;
            if (i11 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i11];
            int i12 = aVar.f53461e;
            r rVar = aVar.f53458b;
            if (i12 != rVar.f53509b) {
                long j14 = rVar.f53510c[i12];
                long j15 = ((long[][]) l0.j(this.f53452t))[i11][i12];
                long j16 = j14 - j10;
                boolean z12 = j16 < 0 || j16 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                if ((!z12 && z11) || (z12 == z11 && j16 < j13)) {
                    z11 = z12;
                    j13 = j16;
                    i10 = i11;
                    j12 = j15;
                }
                if (j15 < j11) {
                    z10 = z12;
                    i9 = i11;
                    j11 = j15;
                }
            }
            i11++;
        }
        return (j11 == Long.MAX_VALUE || !z10 || j12 < j11 + 10485760) ? i10 : i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o r(o oVar) {
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c2.l[] s() {
        return new c2.l[]{new k()};
    }

    private static long t(r rVar, long j10, long j11) {
        int p10 = p(rVar, j10);
        return p10 == -1 ? j11 : Math.min(rVar.f53510c[p10], j11);
    }

    private void u(c2.m mVar) throws IOException {
        this.f53436d.L(8);
        mVar.m(this.f53436d.d(), 0, 8);
        b.e(this.f53436d);
        mVar.k(this.f53436d.e());
        mVar.f();
    }

    private void v(long j10) throws ParserException {
        while (!this.f53438f.isEmpty() && this.f53438f.peek().f53343b == j10) {
            a.C0548a pop = this.f53438f.pop();
            if (pop.f53342a == 1836019574) {
                y(pop);
                this.f53438f.clear();
                this.f53441i = 2;
            } else if (!this.f53438f.isEmpty()) {
                this.f53438f.peek().d(pop);
            }
        }
        if (this.f53441i != 2) {
            n();
        }
    }

    private void w() {
        if (this.f53455w != 2 || (this.f53433a & 2) == 0) {
            return;
        }
        this.f53450r.q(0, 4).d(new k1.b().X(this.f53456x == null ? null : new Metadata(this.f53456x)).E());
        this.f53450r.o();
        this.f53450r.l(new b0.b(-9223372036854775807L));
    }

    private static int x(com.google.android.exoplayer2.util.b0 b0Var) {
        b0Var.P(8);
        int l10 = l(b0Var.n());
        if (l10 != 0) {
            return l10;
        }
        b0Var.Q(4);
        while (b0Var.a() > 0) {
            int l11 = l(b0Var.n());
            if (l11 != 0) {
                return l11;
            }
        }
        return 0;
    }

    private void y(a.C0548a c0548a) throws ParserException {
        Metadata metadata;
        Metadata metadata2;
        List<r> list;
        int i9;
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList();
        boolean z10 = this.f53455w == 1;
        x xVar = new x();
        a.b g10 = c0548a.g(1969517665);
        if (g10 != null) {
            Pair<Metadata, Metadata> B = b.B(g10);
            Metadata metadata3 = (Metadata) B.first;
            Metadata metadata4 = (Metadata) B.second;
            if (metadata3 != null) {
                xVar.c(metadata3);
            }
            metadata = metadata4;
            metadata2 = metadata3;
        } else {
            metadata = null;
            metadata2 = null;
        }
        a.C0548a f10 = c0548a.f(1835365473);
        long j10 = -9223372036854775807L;
        Metadata n9 = f10 != null ? b.n(f10) : null;
        List<r> A = b.A(c0548a, xVar, -9223372036854775807L, null, (this.f53433a & 1) != 0, z10, new com.google.common.base.h() { // from class: k2.j
            @Override // com.google.common.base.h, java.util.function.Function
            public final Object apply(Object obj) {
                o r10;
                r10 = k.r((o) obj);
                return r10;
            }
        });
        int size = A.size();
        long j11 = -9223372036854775807L;
        int i12 = 0;
        int i13 = -1;
        while (i12 < size) {
            r rVar = A.get(i12);
            if (rVar.f53509b == 0) {
                list = A;
                i9 = size;
            } else {
                o oVar = rVar.f53508a;
                list = A;
                i9 = size;
                long j12 = oVar.f53478e;
                if (j12 == j10) {
                    j12 = rVar.f53515h;
                }
                long max = Math.max(j11, j12);
                a aVar = new a(oVar, rVar, this.f53450r.q(i12, oVar.f53475b));
                if ("audio/true-hd".equals(oVar.f53479f.f6111l)) {
                    i10 = rVar.f53512e * 16;
                } else {
                    i10 = rVar.f53512e + 30;
                }
                k1.b b10 = oVar.f53479f.b();
                b10.W(i10);
                if (oVar.f53475b == 2 && j12 > 0 && (i11 = rVar.f53509b) > 1) {
                    b10.P(i11 / (((float) j12) / 1000000.0f));
                }
                h.k(oVar.f53475b, xVar, b10);
                int i14 = oVar.f53475b;
                Metadata[] metadataArr = new Metadata[2];
                metadataArr[0] = metadata;
                metadataArr[1] = this.f53440h.isEmpty() ? null : new Metadata(this.f53440h);
                h.l(i14, metadata2, n9, b10, metadataArr);
                aVar.f53459c.d(b10.E());
                if (oVar.f53475b == 2 && i13 == -1) {
                    i13 = arrayList.size();
                }
                arrayList.add(aVar);
                j11 = max;
            }
            i12++;
            A = list;
            size = i9;
            j10 = -9223372036854775807L;
        }
        this.f53453u = i13;
        this.f53454v = j11;
        a[] aVarArr = (a[]) arrayList.toArray(new a[0]);
        this.f53451s = aVarArr;
        this.f53452t = m(aVarArr);
        this.f53450r.o();
        this.f53450r.l(this);
    }

    private void z(long j10) {
        if (this.f53442j == 1836086884) {
            int i9 = this.f53444l;
            this.f53456x = new MotionPhotoMetadata(0L, j10, -9223372036854775807L, j10 + i9, this.f53443k - i9);
        }
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        a[] aVarArr;
        this.f53438f.clear();
        this.f53444l = 0;
        this.f53446n = -1;
        this.f53447o = 0;
        this.f53448p = 0;
        this.f53449q = 0;
        if (j10 == 0) {
            if (this.f53441i != 3) {
                n();
                return;
            }
            this.f53439g.g();
            this.f53440h.clear();
            return;
        }
        for (a aVar : this.f53451s) {
            G(aVar, j11);
            f0 f0Var = aVar.f53460d;
            if (f0Var != null) {
                f0Var.b();
            }
        }
    }

    @Override // c2.l
    public int b(c2.m mVar, a0 a0Var) throws IOException {
        while (true) {
            int i9 = this.f53441i;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 == 3) {
                            return D(mVar, a0Var);
                        }
                        throw new IllegalStateException();
                    }
                    return C(mVar, a0Var);
                } else if (B(mVar, a0Var)) {
                    return 1;
                }
            } else if (!A(mVar)) {
                return -1;
            }
        }
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        return o(j10, -1);
    }

    @Override // c2.b0
    public boolean e() {
        return true;
    }

    @Override // c2.l
    public void f(c2.n nVar) {
        this.f53450r = nVar;
    }

    @Override // c2.l
    public boolean h(c2.m mVar) throws IOException {
        return n.d(mVar, (this.f53433a & 2) != 0);
    }

    @Override // c2.b0
    public long i() {
        return this.f53454v;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c2.b0.a o(long r17, int r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r3 = r19
            k2.k$a[] r4 = r0.f53451s
            int r5 = r4.length
            if (r5 != 0) goto L13
            c2.b0$a r1 = new c2.b0$a
            c2.c0 r2 = c2.c0.f1468c
            r1.<init>(r2)
            return r1
        L13:
            r5 = -1
            r7 = -1
            if (r3 == r7) goto L1a
            r8 = r3
            goto L1c
        L1a:
            int r8 = r0.f53453u
        L1c:
            r9 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r8 == r7) goto L58
            r4 = r4[r8]
            k2.r r4 = r4.f53458b
            int r8 = p(r4, r1)
            if (r8 != r7) goto L35
            c2.b0$a r1 = new c2.b0$a
            c2.c0 r2 = c2.c0.f1468c
            r1.<init>(r2)
            return r1
        L35:
            long[] r11 = r4.f53513f
            r12 = r11[r8]
            long[] r11 = r4.f53510c
            r14 = r11[r8]
            int r11 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r11 >= 0) goto L5e
            int r11 = r4.f53509b
            int r11 = r11 + (-1)
            if (r8 >= r11) goto L5e
            int r1 = r4.b(r1)
            if (r1 == r7) goto L5e
            if (r1 == r8) goto L5e
            long[] r2 = r4.f53513f
            r5 = r2[r1]
            long[] r2 = r4.f53510c
            r1 = r2[r1]
            goto L60
        L58:
            r14 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r12 = r1
        L5e:
            r1 = r5
            r5 = r9
        L60:
            if (r3 != r7) goto L7f
            r3 = 0
        L63:
            k2.k$a[] r4 = r0.f53451s
            int r7 = r4.length
            if (r3 >= r7) goto L7f
            int r7 = r0.f53453u
            if (r3 == r7) goto L7c
            r4 = r4[r3]
            k2.r r4 = r4.f53458b
            long r14 = t(r4, r12, r14)
            int r7 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r7 == 0) goto L7c
            long r1 = t(r4, r5, r1)
        L7c:
            int r3 = r3 + 1
            goto L63
        L7f:
            c2.c0 r3 = new c2.c0
            r3.<init>(r12, r14)
            int r4 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r4 != 0) goto L8e
            c2.b0$a r1 = new c2.b0$a
            r1.<init>(r3)
            return r1
        L8e:
            c2.c0 r4 = new c2.c0
            r4.<init>(r5, r1)
            c2.b0$a r1 = new c2.b0$a
            r1.<init>(r3, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.k.o(long, int):c2.b0$a");
    }

    @Override // c2.l
    public void release() {
    }

    public k(int i9) {
        this.f53433a = i9;
        this.f53441i = (i9 & 4) != 0 ? 3 : 0;
        this.f53439g = new m();
        this.f53440h = new ArrayList();
        this.f53437e = new com.google.android.exoplayer2.util.b0(16);
        this.f53438f = new ArrayDeque<>();
        this.f53434b = new com.google.android.exoplayer2.util.b0(w.f7041a);
        this.f53435c = new com.google.android.exoplayer2.util.b0(4);
        this.f53436d = new com.google.android.exoplayer2.util.b0();
        this.f53446n = -1;
        this.f53450r = c2.n.S;
        this.f53451s = new a[0];
    }
}
