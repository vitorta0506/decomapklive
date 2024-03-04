package k2;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import c2.a0;
import c2.b0;
import c2.e0;
import c2.x;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.i0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.w;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import k2.a;
import kotlin.UByte;
/* loaded from: classes.dex */
public class g implements c2.l {
    public static final c2.r I = new c2.r() { // from class: k2.e
        @Override // c2.r
        public /* synthetic */ c2.l[] a(Uri uri, Map map) {
            return c2.q.a(this, uri, map);
        }

        @Override // c2.r
        public final c2.l[] b() {
            c2.l[] l10;
            l10 = g.l();
            return l10;
        }
    };
    private static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final k1 K = new k1.b().e0("application/x-emsg").E();
    private int A;
    private int B;
    private int C;
    private boolean D;
    private c2.n E;
    private e0[] F;
    private e0[] G;
    private boolean H;

    /* renamed from: a  reason: collision with root package name */
    private final int f53388a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final o f53389b;

    /* renamed from: c  reason: collision with root package name */
    private final List<k1> f53390c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseArray<b> f53391d;

    /* renamed from: e  reason: collision with root package name */
    private final b0 f53392e;

    /* renamed from: f  reason: collision with root package name */
    private final b0 f53393f;

    /* renamed from: g  reason: collision with root package name */
    private final b0 f53394g;

    /* renamed from: h  reason: collision with root package name */
    private final byte[] f53395h;

    /* renamed from: i  reason: collision with root package name */
    private final b0 f53396i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final i0 f53397j;

    /* renamed from: k  reason: collision with root package name */
    private final q2.b f53398k;

    /* renamed from: l  reason: collision with root package name */
    private final b0 f53399l;

    /* renamed from: m  reason: collision with root package name */
    private final ArrayDeque<a.C0548a> f53400m;

    /* renamed from: n  reason: collision with root package name */
    private final ArrayDeque<a> f53401n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final e0 f53402o;

    /* renamed from: p  reason: collision with root package name */
    private int f53403p;

    /* renamed from: q  reason: collision with root package name */
    private int f53404q;

    /* renamed from: r  reason: collision with root package name */
    private long f53405r;

    /* renamed from: s  reason: collision with root package name */
    private int f53406s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private b0 f53407t;

    /* renamed from: u  reason: collision with root package name */
    private long f53408u;

    /* renamed from: v  reason: collision with root package name */
    private int f53409v;

    /* renamed from: w  reason: collision with root package name */
    private long f53410w;

    /* renamed from: x  reason: collision with root package name */
    private long f53411x;

    /* renamed from: y  reason: collision with root package name */
    private long f53412y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private b f53413z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f53414a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f53415b;

        /* renamed from: c  reason: collision with root package name */
        public final int f53416c;

        public a(long j10, boolean z10, int i9) {
            this.f53414a = j10;
            this.f53415b = z10;
            this.f53416c = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final e0 f53417a;

        /* renamed from: d  reason: collision with root package name */
        public r f53420d;

        /* renamed from: e  reason: collision with root package name */
        public c f53421e;

        /* renamed from: f  reason: collision with root package name */
        public int f53422f;

        /* renamed from: g  reason: collision with root package name */
        public int f53423g;

        /* renamed from: h  reason: collision with root package name */
        public int f53424h;

        /* renamed from: i  reason: collision with root package name */
        public int f53425i;

        /* renamed from: l  reason: collision with root package name */
        private boolean f53428l;

        /* renamed from: b  reason: collision with root package name */
        public final q f53418b = new q();

        /* renamed from: c  reason: collision with root package name */
        public final b0 f53419c = new b0();

        /* renamed from: j  reason: collision with root package name */
        private final b0 f53426j = new b0(1);

        /* renamed from: k  reason: collision with root package name */
        private final b0 f53427k = new b0();

        public b(e0 e0Var, r rVar, c cVar) {
            this.f53417a = e0Var;
            this.f53420d = rVar;
            this.f53421e = cVar;
            j(rVar, cVar);
        }

        public int c() {
            int i9;
            if (!this.f53428l) {
                i9 = this.f53420d.f53514g[this.f53422f];
            } else {
                i9 = this.f53418b.f53500k[this.f53422f] ? 1 : 0;
            }
            return g() != null ? i9 | BasicMeasure.EXACTLY : i9;
        }

        public long d() {
            if (!this.f53428l) {
                return this.f53420d.f53510c[this.f53422f];
            }
            return this.f53418b.f53496g[this.f53424h];
        }

        public long e() {
            if (!this.f53428l) {
                return this.f53420d.f53513f[this.f53422f];
            }
            return this.f53418b.c(this.f53422f);
        }

        public int f() {
            if (!this.f53428l) {
                return this.f53420d.f53511d[this.f53422f];
            }
            return this.f53418b.f53498i[this.f53422f];
        }

        @Nullable
        public p g() {
            if (this.f53428l) {
                int i9 = ((c) l0.j(this.f53418b.f53490a)).f53376a;
                p pVar = this.f53418b.f53503n;
                if (pVar == null) {
                    pVar = this.f53420d.f53508a.a(i9);
                }
                if (pVar == null || !pVar.f53485a) {
                    return null;
                }
                return pVar;
            }
            return null;
        }

        public boolean h() {
            this.f53422f++;
            if (this.f53428l) {
                int i9 = this.f53423g + 1;
                this.f53423g = i9;
                int[] iArr = this.f53418b.f53497h;
                int i10 = this.f53424h;
                if (i9 == iArr[i10]) {
                    this.f53424h = i10 + 1;
                    this.f53423g = 0;
                    return false;
                }
                return true;
            }
            return false;
        }

        public int i(int i9, int i10) {
            b0 b0Var;
            p g10 = g();
            if (g10 == null) {
                return 0;
            }
            int i11 = g10.f53488d;
            if (i11 != 0) {
                b0Var = this.f53418b.f53504o;
            } else {
                byte[] bArr = (byte[]) l0.j(g10.f53489e);
                this.f53427k.N(bArr, bArr.length);
                b0 b0Var2 = this.f53427k;
                i11 = bArr.length;
                b0Var = b0Var2;
            }
            boolean g11 = this.f53418b.g(this.f53422f);
            boolean z10 = g11 || i10 != 0;
            this.f53426j.d()[0] = (byte) ((z10 ? 128 : 0) | i11);
            this.f53426j.P(0);
            this.f53417a.f(this.f53426j, 1, 1);
            this.f53417a.f(b0Var, i11, 1);
            if (z10) {
                if (!g11) {
                    this.f53419c.L(8);
                    byte[] d10 = this.f53419c.d();
                    d10[0] = 0;
                    d10[1] = 1;
                    d10[2] = (byte) ((i10 >> 8) & 255);
                    d10[3] = (byte) (i10 & 255);
                    d10[4] = (byte) ((i9 >> 24) & 255);
                    d10[5] = (byte) ((i9 >> 16) & 255);
                    d10[6] = (byte) ((i9 >> 8) & 255);
                    d10[7] = (byte) (i9 & 255);
                    this.f53417a.f(this.f53419c, 8, 1);
                    return i11 + 1 + 8;
                }
                b0 b0Var3 = this.f53418b.f53504o;
                int J = b0Var3.J();
                b0Var3.Q(-2);
                int i12 = (J * 6) + 2;
                if (i10 != 0) {
                    this.f53419c.L(i12);
                    byte[] d11 = this.f53419c.d();
                    b0Var3.j(d11, 0, i12);
                    int i13 = (((d11[2] & UByte.MAX_VALUE) << 8) | (d11[3] & UByte.MAX_VALUE)) + i10;
                    d11[2] = (byte) ((i13 >> 8) & 255);
                    d11[3] = (byte) (i13 & 255);
                    b0Var3 = this.f53419c;
                }
                this.f53417a.f(b0Var3, i12, 1);
                return i11 + 1 + i12;
            }
            return i11 + 1;
        }

        public void j(r rVar, c cVar) {
            this.f53420d = rVar;
            this.f53421e = cVar;
            this.f53417a.d(rVar.f53508a.f53479f);
            k();
        }

        public void k() {
            this.f53418b.f();
            this.f53422f = 0;
            this.f53424h = 0;
            this.f53423g = 0;
            this.f53425i = 0;
            this.f53428l = false;
        }

        public void l(long j10) {
            int i9 = this.f53422f;
            while (true) {
                q qVar = this.f53418b;
                if (i9 >= qVar.f53495f || qVar.c(i9) >= j10) {
                    return;
                }
                if (this.f53418b.f53500k[i9]) {
                    this.f53425i = i9;
                }
                i9++;
            }
        }

        public void m() {
            p g10 = g();
            if (g10 == null) {
                return;
            }
            b0 b0Var = this.f53418b.f53504o;
            int i9 = g10.f53488d;
            if (i9 != 0) {
                b0Var.Q(i9);
            }
            if (this.f53418b.g(this.f53422f)) {
                b0Var.Q(b0Var.J() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            p a10 = this.f53420d.f53508a.a(((c) l0.j(this.f53418b.f53490a)).f53376a);
            this.f53417a.d(this.f53420d.f53508a.f53479f.b().M(drmInitData.b(a10 != null ? a10.f53486b : null)).E());
        }
    }

    public g() {
        this(0);
    }

    private static Pair<Long, c2.d> A(b0 b0Var, long j10) throws ParserException {
        long I2;
        long I3;
        b0Var.P(8);
        int c10 = k2.a.c(b0Var.n());
        b0Var.Q(4);
        long F = b0Var.F();
        if (c10 == 0) {
            I2 = b0Var.F();
            I3 = b0Var.F();
        } else {
            I2 = b0Var.I();
            I3 = b0Var.I();
        }
        long j11 = I2;
        long j12 = j10 + I3;
        long E0 = l0.E0(j11, 1000000L, F);
        b0Var.Q(2);
        int J2 = b0Var.J();
        int[] iArr = new int[J2];
        long[] jArr = new long[J2];
        long[] jArr2 = new long[J2];
        long[] jArr3 = new long[J2];
        long j13 = j11;
        long j14 = E0;
        int i9 = 0;
        while (i9 < J2) {
            int n9 = b0Var.n();
            if ((n9 & Integer.MIN_VALUE) == 0) {
                long F2 = b0Var.F();
                iArr[i9] = n9 & Integer.MAX_VALUE;
                jArr[i9] = j12;
                jArr3[i9] = j14;
                long j15 = j13 + F2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i10 = J2;
                int[] iArr2 = iArr;
                long E02 = l0.E0(j15, 1000000L, F);
                jArr4[i9] = E02 - jArr5[i9];
                b0Var.Q(4);
                j12 += iArr2[i9];
                i9++;
                iArr = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                J2 = i10;
                j13 = j15;
                j14 = E02;
            } else {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
        }
        return Pair.create(Long.valueOf(E0), new c2.d(iArr, jArr, jArr2, jArr3));
    }

    private static long B(b0 b0Var) {
        b0Var.P(8);
        return k2.a.c(b0Var.n()) == 1 ? b0Var.I() : b0Var.F();
    }

    @Nullable
    private static b C(b0 b0Var, SparseArray<b> sparseArray, boolean z10) {
        int i9;
        int i10;
        int i11;
        int i12;
        b0Var.P(8);
        int b10 = k2.a.b(b0Var.n());
        b valueAt = z10 ? sparseArray.valueAt(0) : sparseArray.get(b0Var.n());
        if (valueAt == null) {
            return null;
        }
        if ((b10 & 1) != 0) {
            long I2 = b0Var.I();
            q qVar = valueAt.f53418b;
            qVar.f53492c = I2;
            qVar.f53493d = I2;
        }
        c cVar = valueAt.f53421e;
        if ((b10 & 2) != 0) {
            i9 = b0Var.n() - 1;
        } else {
            i9 = cVar.f53376a;
        }
        if ((b10 & 8) != 0) {
            i10 = b0Var.n();
        } else {
            i10 = cVar.f53377b;
        }
        if ((b10 & 16) != 0) {
            i11 = b0Var.n();
        } else {
            i11 = cVar.f53378c;
        }
        if ((b10 & 32) != 0) {
            i12 = b0Var.n();
        } else {
            i12 = cVar.f53379d;
        }
        valueAt.f53418b.f53490a = new c(i9, i10, i11, i12);
        return valueAt;
    }

    private static void D(a.C0548a c0548a, SparseArray<b> sparseArray, boolean z10, int i9, byte[] bArr) throws ParserException {
        b C = C(((a.b) com.google.android.exoplayer2.util.a.e(c0548a.g(1952868452))).f53346b, sparseArray, z10);
        if (C == null) {
            return;
        }
        q qVar = C.f53418b;
        long j10 = qVar.f53506q;
        boolean z11 = qVar.f53507r;
        C.k();
        C.f53428l = true;
        a.b g10 = c0548a.g(1952867444);
        if (g10 != null && (i9 & 2) == 0) {
            qVar.f53506q = B(g10.f53346b);
            qVar.f53507r = true;
        } else {
            qVar.f53506q = j10;
            qVar.f53507r = z11;
        }
        G(c0548a, C, i9);
        p a10 = C.f53420d.f53508a.a(((c) com.google.android.exoplayer2.util.a.e(qVar.f53490a)).f53376a);
        a.b g11 = c0548a.g(1935763834);
        if (g11 != null) {
            w((p) com.google.android.exoplayer2.util.a.e(a10), g11.f53346b, qVar);
        }
        a.b g12 = c0548a.g(1935763823);
        if (g12 != null) {
            v(g12.f53346b, qVar);
        }
        a.b g13 = c0548a.g(1936027235);
        if (g13 != null) {
            z(g13.f53346b, qVar);
        }
        x(c0548a, a10 != null ? a10.f53486b : null, qVar);
        int size = c0548a.f53344c.size();
        for (int i10 = 0; i10 < size; i10++) {
            a.b bVar = c0548a.f53344c.get(i10);
            if (bVar.f53342a == 1970628964) {
                H(bVar.f53346b, qVar, bArr);
            }
        }
    }

    private static Pair<Integer, c> E(b0 b0Var) {
        b0Var.P(12);
        return Pair.create(Integer.valueOf(b0Var.n()), new c(b0Var.n() - 1, b0Var.n(), b0Var.n(), b0Var.n()));
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int F(k2.g.b r34, int r35, int r36, com.google.android.exoplayer2.util.b0 r37, int r38) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k2.g.F(k2.g$b, int, int, com.google.android.exoplayer2.util.b0, int):int");
    }

    private static void G(a.C0548a c0548a, b bVar, int i9) throws ParserException {
        List<a.b> list = c0548a.f53344c;
        int size = list.size();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            a.b bVar2 = list.get(i12);
            if (bVar2.f53342a == 1953658222) {
                b0 b0Var = bVar2.f53346b;
                b0Var.P(12);
                int H = b0Var.H();
                if (H > 0) {
                    i11 += H;
                    i10++;
                }
            }
        }
        bVar.f53424h = 0;
        bVar.f53423g = 0;
        bVar.f53422f = 0;
        bVar.f53418b.e(i10, i11);
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < size; i15++) {
            a.b bVar3 = list.get(i15);
            if (bVar3.f53342a == 1953658222) {
                i14 = F(bVar, i13, i9, bVar3.f53346b, i14);
                i13++;
            }
        }
    }

    private static void H(b0 b0Var, q qVar, byte[] bArr) throws ParserException {
        b0Var.P(8);
        b0Var.j(bArr, 0, 16);
        if (Arrays.equals(bArr, J)) {
            y(b0Var, 16, qVar);
        }
    }

    private void I(long j10) throws ParserException {
        while (!this.f53400m.isEmpty() && this.f53400m.peek().f53343b == j10) {
            n(this.f53400m.pop());
        }
        e();
    }

    private boolean J(c2.m mVar) throws IOException {
        if (this.f53406s == 0) {
            if (!mVar.g(this.f53399l.d(), 0, 8, true)) {
                return false;
            }
            this.f53406s = 8;
            this.f53399l.P(0);
            this.f53405r = this.f53399l.F();
            this.f53404q = this.f53399l.n();
        }
        long j10 = this.f53405r;
        if (j10 == 1) {
            mVar.readFully(this.f53399l.d(), 8, 8);
            this.f53406s += 8;
            this.f53405r = this.f53399l.I();
        } else if (j10 == 0) {
            long a10 = mVar.a();
            if (a10 == -1 && !this.f53400m.isEmpty()) {
                a10 = this.f53400m.peek().f53343b;
            }
            if (a10 != -1) {
                this.f53405r = (a10 - mVar.getPosition()) + this.f53406s;
            }
        }
        if (this.f53405r >= this.f53406s) {
            long position = mVar.getPosition() - this.f53406s;
            int i9 = this.f53404q;
            if ((i9 == 1836019558 || i9 == 1835295092) && !this.H) {
                this.E.l(new b0.b(this.f53411x, position));
                this.H = true;
            }
            if (this.f53404q == 1836019558) {
                int size = this.f53391d.size();
                for (int i10 = 0; i10 < size; i10++) {
                    q qVar = this.f53391d.valueAt(i10).f53418b;
                    qVar.f53491b = position;
                    qVar.f53493d = position;
                    qVar.f53492c = position;
                }
            }
            int i11 = this.f53404q;
            if (i11 == 1835295092) {
                this.f53413z = null;
                this.f53408u = position + this.f53405r;
                this.f53403p = 2;
                return true;
            }
            if (N(i11)) {
                long position2 = (mVar.getPosition() + this.f53405r) - 8;
                this.f53400m.push(new a.C0548a(this.f53404q, position2));
                if (this.f53405r == this.f53406s) {
                    I(position2);
                } else {
                    e();
                }
            } else if (O(this.f53404q)) {
                if (this.f53406s == 8) {
                    long j11 = this.f53405r;
                    if (j11 <= 2147483647L) {
                        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0((int) j11);
                        System.arraycopy(this.f53399l.d(), 0, b0Var.d(), 0, 8);
                        this.f53407t = b0Var;
                        this.f53403p = 1;
                    } else {
                        throw ParserException.createForUnsupportedContainerFeature("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw ParserException.createForUnsupportedContainerFeature("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.f53405r <= 2147483647L) {
                this.f53407t = null;
                this.f53403p = 1;
            } else {
                throw ParserException.createForUnsupportedContainerFeature("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
    }

    private void K(c2.m mVar) throws IOException {
        int i9 = ((int) this.f53405r) - this.f53406s;
        com.google.android.exoplayer2.util.b0 b0Var = this.f53407t;
        if (b0Var != null) {
            mVar.readFully(b0Var.d(), 8, i9);
            p(new a.b(this.f53404q, b0Var), mVar.getPosition());
        } else {
            mVar.k(i9);
        }
        I(mVar.getPosition());
    }

    private void L(c2.m mVar) throws IOException {
        int size = this.f53391d.size();
        long j10 = Long.MAX_VALUE;
        b bVar = null;
        for (int i9 = 0; i9 < size; i9++) {
            q qVar = this.f53391d.valueAt(i9).f53418b;
            if (qVar.f53505p) {
                long j11 = qVar.f53493d;
                if (j11 < j10) {
                    bVar = this.f53391d.valueAt(i9);
                    j10 = j11;
                }
            }
        }
        if (bVar == null) {
            this.f53403p = 3;
            return;
        }
        int position = (int) (j10 - mVar.getPosition());
        if (position >= 0) {
            mVar.k(position);
            bVar.f53418b.a(mVar);
            return;
        }
        throw ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
    }

    private boolean M(c2.m mVar) throws IOException {
        int b10;
        b bVar = this.f53413z;
        Throwable th2 = null;
        if (bVar == null) {
            bVar = j(this.f53391d);
            if (bVar == null) {
                int position = (int) (this.f53408u - mVar.getPosition());
                if (position >= 0) {
                    mVar.k(position);
                    e();
                    return false;
                }
                throw ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
            }
            int d10 = (int) (bVar.d() - mVar.getPosition());
            if (d10 < 0) {
                com.google.android.exoplayer2.util.r.i("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                d10 = 0;
            }
            mVar.k(d10);
            this.f53413z = bVar;
        }
        int i9 = 4;
        int i10 = 1;
        if (this.f53403p == 3) {
            int f10 = bVar.f();
            this.A = f10;
            if (bVar.f53422f < bVar.f53425i) {
                mVar.k(f10);
                bVar.m();
                if (!bVar.h()) {
                    this.f53413z = null;
                }
                this.f53403p = 3;
                return true;
            }
            if (bVar.f53420d.f53508a.f53480g == 1) {
                this.A = f10 - 8;
                mVar.k(8);
            }
            if ("audio/ac4".equals(bVar.f53420d.f53508a.f53479f.f6111l)) {
                this.B = bVar.i(this.A, 7);
                com.google.android.exoplayer2.audio.c.a(this.A, this.f53396i);
                bVar.f53417a.a(this.f53396i, 7);
                this.B += 7;
            } else {
                this.B = bVar.i(this.A, 0);
            }
            this.A += this.B;
            this.f53403p = 4;
            this.C = 0;
        }
        o oVar = bVar.f53420d.f53508a;
        e0 e0Var = bVar.f53417a;
        long e10 = bVar.e();
        i0 i0Var = this.f53397j;
        if (i0Var != null) {
            e10 = i0Var.a(e10);
        }
        long j10 = e10;
        if (oVar.f53483j == 0) {
            while (true) {
                int i11 = this.B;
                int i12 = this.A;
                if (i11 >= i12) {
                    break;
                }
                this.B += e0Var.b(mVar, i12 - i11, false);
            }
        } else {
            byte[] d11 = this.f53393f.d();
            d11[0] = 0;
            d11[1] = 0;
            d11[2] = 0;
            int i13 = oVar.f53483j;
            int i14 = i13 + 1;
            int i15 = 4 - i13;
            while (this.B < this.A) {
                int i16 = this.C;
                if (i16 == 0) {
                    mVar.readFully(d11, i15, i14);
                    this.f53393f.P(0);
                    int n9 = this.f53393f.n();
                    if (n9 >= i10) {
                        this.C = n9 - 1;
                        this.f53392e.P(0);
                        e0Var.a(this.f53392e, i9);
                        e0Var.a(this.f53393f, i10);
                        this.D = this.G.length > 0 && w.g(oVar.f53479f.f6111l, d11[i9]);
                        this.B += 5;
                        this.A += i15;
                    } else {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", th2);
                    }
                } else {
                    if (this.D) {
                        this.f53394g.L(i16);
                        mVar.readFully(this.f53394g.d(), 0, this.C);
                        e0Var.a(this.f53394g, this.C);
                        b10 = this.C;
                        int q10 = w.q(this.f53394g.d(), this.f53394g.f());
                        this.f53394g.P("video/hevc".equals(oVar.f53479f.f6111l) ? 1 : 0);
                        this.f53394g.O(q10);
                        c2.c.a(j10, this.f53394g, this.G);
                    } else {
                        b10 = e0Var.b(mVar, i16, false);
                    }
                    this.B += b10;
                    this.C -= b10;
                    th2 = null;
                    i9 = 4;
                    i10 = 1;
                }
            }
        }
        int c10 = bVar.c();
        p g10 = bVar.g();
        e0Var.c(j10, c10, this.A, 0, g10 != null ? g10.f53487c : null);
        s(j10);
        if (!bVar.h()) {
            this.f53413z = null;
        }
        this.f53403p = 3;
        return true;
    }

    private static boolean N(int i9) {
        return i9 == 1836019574 || i9 == 1953653099 || i9 == 1835297121 || i9 == 1835626086 || i9 == 1937007212 || i9 == 1836019558 || i9 == 1953653094 || i9 == 1836475768 || i9 == 1701082227;
    }

    private static boolean O(int i9) {
        return i9 == 1751411826 || i9 == 1835296868 || i9 == 1836476516 || i9 == 1936286840 || i9 == 1937011556 || i9 == 1937011827 || i9 == 1668576371 || i9 == 1937011555 || i9 == 1937011578 || i9 == 1937013298 || i9 == 1937007471 || i9 == 1668232756 || i9 == 1937011571 || i9 == 1952867444 || i9 == 1952868452 || i9 == 1953196132 || i9 == 1953654136 || i9 == 1953658222 || i9 == 1886614376 || i9 == 1935763834 || i9 == 1935763823 || i9 == 1936027235 || i9 == 1970628964 || i9 == 1935828848 || i9 == 1936158820 || i9 == 1701606260 || i9 == 1835362404 || i9 == 1701671783;
    }

    private static int d(int i9) throws ParserException {
        if (i9 >= 0) {
            return i9;
        }
        throw ParserException.createForMalformedContainer("Unexpected negative value: " + i9, null);
    }

    private void e() {
        this.f53403p = 0;
        this.f53406s = 0;
    }

    private c g(SparseArray<c> sparseArray, int i9) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (c) com.google.android.exoplayer2.util.a.e(sparseArray.get(i9));
    }

    @Nullable
    private static DrmInitData i(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i9 = 0; i9 < size; i9++) {
            a.b bVar = list.get(i9);
            if (bVar.f53342a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] d10 = bVar.f53346b.d();
                UUID f10 = l.f(d10);
                if (f10 == null) {
                    com.google.android.exoplayer2.util.r.i("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(f10, "video/mp4", d10));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    @Nullable
    private static b j(SparseArray<b> sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j10 = Long.MAX_VALUE;
        for (int i9 = 0; i9 < size; i9++) {
            b valueAt = sparseArray.valueAt(i9);
            if ((valueAt.f53428l || valueAt.f53422f != valueAt.f53420d.f53509b) && (!valueAt.f53428l || valueAt.f53424h != valueAt.f53418b.f53494e)) {
                long d10 = valueAt.d();
                if (d10 < j10) {
                    bVar = valueAt;
                    j10 = d10;
                }
            }
        }
        return bVar;
    }

    private void k() {
        int i9;
        e0[] e0VarArr = new e0[2];
        this.F = e0VarArr;
        e0 e0Var = this.f53402o;
        int i10 = 0;
        if (e0Var != null) {
            e0VarArr[0] = e0Var;
            i9 = 1;
        } else {
            i9 = 0;
        }
        int i11 = 100;
        if ((this.f53388a & 4) != 0) {
            e0VarArr[i9] = this.E.q(100, 5);
            i9++;
            i11 = 101;
        }
        e0[] e0VarArr2 = (e0[]) l0.A0(this.F, i9);
        this.F = e0VarArr2;
        for (e0 e0Var2 : e0VarArr2) {
            e0Var2.d(K);
        }
        this.G = new e0[this.f53390c.size()];
        while (i10 < this.G.length) {
            e0 q10 = this.E.q(i11, 3);
            q10.d(this.f53390c.get(i10));
            this.G[i10] = q10;
            i10++;
            i11++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c2.l[] l() {
        return new c2.l[]{new g()};
    }

    private void n(a.C0548a c0548a) throws ParserException {
        int i9 = c0548a.f53342a;
        if (i9 == 1836019574) {
            r(c0548a);
        } else if (i9 == 1836019558) {
            q(c0548a);
        } else if (this.f53400m.isEmpty()) {
        } else {
            this.f53400m.peek().d(c0548a);
        }
    }

    private void o(com.google.android.exoplayer2.util.b0 b0Var) {
        long E0;
        String str;
        long E02;
        String str2;
        long F;
        long j10;
        e0[] e0VarArr;
        if (this.F.length == 0) {
            return;
        }
        b0Var.P(8);
        int c10 = k2.a.c(b0Var.n());
        if (c10 == 0) {
            String str3 = (String) com.google.android.exoplayer2.util.a.e(b0Var.x());
            String str4 = (String) com.google.android.exoplayer2.util.a.e(b0Var.x());
            long F2 = b0Var.F();
            E0 = l0.E0(b0Var.F(), 1000000L, F2);
            long j11 = this.f53412y;
            long j12 = j11 != -9223372036854775807L ? j11 + E0 : -9223372036854775807L;
            str = str3;
            E02 = l0.E0(b0Var.F(), 1000L, F2);
            str2 = str4;
            F = b0Var.F();
            j10 = j12;
        } else if (c10 != 1) {
            com.google.android.exoplayer2.util.r.i("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + c10);
            return;
        } else {
            long F3 = b0Var.F();
            j10 = l0.E0(b0Var.I(), 1000000L, F3);
            long E03 = l0.E0(b0Var.F(), 1000L, F3);
            long F4 = b0Var.F();
            str = (String) com.google.android.exoplayer2.util.a.e(b0Var.x());
            E02 = E03;
            F = F4;
            str2 = (String) com.google.android.exoplayer2.util.a.e(b0Var.x());
            E0 = -9223372036854775807L;
        }
        byte[] bArr = new byte[b0Var.a()];
        b0Var.j(bArr, 0, b0Var.a());
        com.google.android.exoplayer2.util.b0 b0Var2 = new com.google.android.exoplayer2.util.b0(this.f53398k.a(new EventMessage(str, str2, E02, F, bArr)));
        int a10 = b0Var2.a();
        for (e0 e0Var : this.F) {
            b0Var2.P(0);
            e0Var.a(b0Var2, a10);
        }
        if (j10 == -9223372036854775807L) {
            this.f53401n.addLast(new a(E0, true, a10));
            this.f53409v += a10;
        } else if (!this.f53401n.isEmpty()) {
            this.f53401n.addLast(new a(j10, false, a10));
            this.f53409v += a10;
        } else {
            i0 i0Var = this.f53397j;
            if (i0Var != null) {
                j10 = i0Var.a(j10);
            }
            for (e0 e0Var2 : this.F) {
                e0Var2.c(j10, 1, a10, 0, null);
            }
        }
    }

    private void p(a.b bVar, long j10) throws ParserException {
        if (!this.f53400m.isEmpty()) {
            this.f53400m.peek().e(bVar);
            return;
        }
        int i9 = bVar.f53342a;
        if (i9 != 1936286840) {
            if (i9 == 1701671783) {
                o(bVar.f53346b);
                return;
            }
            return;
        }
        Pair<Long, c2.d> A = A(bVar.f53346b, j10);
        this.f53412y = ((Long) A.first).longValue();
        this.E.l((c2.b0) A.second);
        this.H = true;
    }

    private void q(a.C0548a c0548a) throws ParserException {
        u(c0548a, this.f53391d, this.f53389b != null, this.f53388a, this.f53395h);
        DrmInitData i9 = i(c0548a.f53344c);
        if (i9 != null) {
            int size = this.f53391d.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f53391d.valueAt(i10).n(i9);
            }
        }
        if (this.f53410w != -9223372036854775807L) {
            int size2 = this.f53391d.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.f53391d.valueAt(i11).l(this.f53410w);
            }
            this.f53410w = -9223372036854775807L;
        }
    }

    private void r(a.C0548a c0548a) throws ParserException {
        int i9 = 0;
        com.google.android.exoplayer2.util.a.g(this.f53389b == null, "Unexpected moov box.");
        DrmInitData i10 = i(c0548a.f53344c);
        a.C0548a c0548a2 = (a.C0548a) com.google.android.exoplayer2.util.a.e(c0548a.f(1836475768));
        SparseArray<c> sparseArray = new SparseArray<>();
        int size = c0548a2.f53344c.size();
        long j10 = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            a.b bVar = c0548a2.f53344c.get(i11);
            int i12 = bVar.f53342a;
            if (i12 == 1953654136) {
                Pair<Integer, c> E = E(bVar.f53346b);
                sparseArray.put(((Integer) E.first).intValue(), (c) E.second);
            } else if (i12 == 1835362404) {
                j10 = t(bVar.f53346b);
            }
        }
        List<r> A = k2.b.A(c0548a, new x(), j10, i10, (this.f53388a & 16) != 0, false, new com.google.common.base.h() { // from class: k2.f
            @Override // com.google.common.base.h, java.util.function.Function
            public final Object apply(Object obj) {
                return g.this.m((o) obj);
            }
        });
        int size2 = A.size();
        if (this.f53391d.size() == 0) {
            while (i9 < size2) {
                r rVar = A.get(i9);
                o oVar = rVar.f53508a;
                this.f53391d.put(oVar.f53474a, new b(this.E.q(i9, oVar.f53475b), rVar, g(sparseArray, oVar.f53474a)));
                this.f53411x = Math.max(this.f53411x, oVar.f53478e);
                i9++;
            }
            this.E.o();
            return;
        }
        com.google.android.exoplayer2.util.a.f(this.f53391d.size() == size2);
        while (i9 < size2) {
            r rVar2 = A.get(i9);
            o oVar2 = rVar2.f53508a;
            this.f53391d.get(oVar2.f53474a).j(rVar2, g(sparseArray, oVar2.f53474a));
            i9++;
        }
    }

    private void s(long j10) {
        while (!this.f53401n.isEmpty()) {
            a removeFirst = this.f53401n.removeFirst();
            this.f53409v -= removeFirst.f53416c;
            long j11 = removeFirst.f53414a;
            if (removeFirst.f53415b) {
                j11 += j10;
            }
            i0 i0Var = this.f53397j;
            if (i0Var != null) {
                j11 = i0Var.a(j11);
            }
            for (e0 e0Var : this.F) {
                e0Var.c(j11, 1, removeFirst.f53416c, this.f53409v, null);
            }
        }
    }

    private static long t(com.google.android.exoplayer2.util.b0 b0Var) {
        b0Var.P(8);
        return k2.a.c(b0Var.n()) == 0 ? b0Var.F() : b0Var.I();
    }

    private static void u(a.C0548a c0548a, SparseArray<b> sparseArray, boolean z10, int i9, byte[] bArr) throws ParserException {
        int size = c0548a.f53345d.size();
        for (int i10 = 0; i10 < size; i10++) {
            a.C0548a c0548a2 = c0548a.f53345d.get(i10);
            if (c0548a2.f53342a == 1953653094) {
                D(c0548a2, sparseArray, z10, i9, bArr);
            }
        }
    }

    private static void v(com.google.android.exoplayer2.util.b0 b0Var, q qVar) throws ParserException {
        b0Var.P(8);
        int n9 = b0Var.n();
        if ((k2.a.b(n9) & 1) == 1) {
            b0Var.Q(8);
        }
        int H = b0Var.H();
        if (H == 1) {
            qVar.f53493d += k2.a.c(n9) == 0 ? b0Var.F() : b0Var.I();
            return;
        }
        throw ParserException.createForMalformedContainer("Unexpected saio entry count: " + H, null);
    }

    private static void w(p pVar, com.google.android.exoplayer2.util.b0 b0Var, q qVar) throws ParserException {
        int i9;
        int i10 = pVar.f53488d;
        b0Var.P(8);
        if ((k2.a.b(b0Var.n()) & 1) == 1) {
            b0Var.Q(8);
        }
        int D = b0Var.D();
        int H = b0Var.H();
        if (H <= qVar.f53495f) {
            if (D == 0) {
                boolean[] zArr = qVar.f53502m;
                i9 = 0;
                for (int i11 = 0; i11 < H; i11++) {
                    int D2 = b0Var.D();
                    i9 += D2;
                    zArr[i11] = D2 > i10;
                }
            } else {
                i9 = (D * H) + 0;
                Arrays.fill(qVar.f53502m, 0, H, D > i10);
            }
            Arrays.fill(qVar.f53502m, H, qVar.f53495f, false);
            if (i9 > 0) {
                qVar.d(i9);
                return;
            }
            return;
        }
        throw ParserException.createForMalformedContainer("Saiz sample count " + H + " is greater than fragment sample count" + qVar.f53495f, null);
    }

    private static void x(a.C0548a c0548a, @Nullable String str, q qVar) throws ParserException {
        byte[] bArr = null;
        com.google.android.exoplayer2.util.b0 b0Var = null;
        com.google.android.exoplayer2.util.b0 b0Var2 = null;
        for (int i9 = 0; i9 < c0548a.f53344c.size(); i9++) {
            a.b bVar = c0548a.f53344c.get(i9);
            com.google.android.exoplayer2.util.b0 b0Var3 = bVar.f53346b;
            int i10 = bVar.f53342a;
            if (i10 == 1935828848) {
                b0Var3.P(12);
                if (b0Var3.n() == 1936025959) {
                    b0Var = b0Var3;
                }
            } else if (i10 == 1936158820) {
                b0Var3.P(12);
                if (b0Var3.n() == 1936025959) {
                    b0Var2 = b0Var3;
                }
            }
        }
        if (b0Var == null || b0Var2 == null) {
            return;
        }
        b0Var.P(8);
        int c10 = k2.a.c(b0Var.n());
        b0Var.Q(4);
        if (c10 == 1) {
            b0Var.Q(4);
        }
        if (b0Var.n() == 1) {
            b0Var2.P(8);
            int c11 = k2.a.c(b0Var2.n());
            b0Var2.Q(4);
            if (c11 == 1) {
                if (b0Var2.F() == 0) {
                    throw ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
                }
            } else if (c11 >= 2) {
                b0Var2.Q(4);
            }
            if (b0Var2.F() == 1) {
                b0Var2.Q(1);
                int D = b0Var2.D();
                int i11 = (D & 240) >> 4;
                int i12 = D & 15;
                boolean z10 = b0Var2.D() == 1;
                if (z10) {
                    int D2 = b0Var2.D();
                    byte[] bArr2 = new byte[16];
                    b0Var2.j(bArr2, 0, 16);
                    if (D2 == 0) {
                        int D3 = b0Var2.D();
                        bArr = new byte[D3];
                        b0Var2.j(bArr, 0, D3);
                    }
                    qVar.f53501l = true;
                    qVar.f53503n = new p(z10, str, D2, bArr2, i11, i12, bArr);
                    return;
                }
                return;
            }
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        throw ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
    }

    private static void y(com.google.android.exoplayer2.util.b0 b0Var, int i9, q qVar) throws ParserException {
        b0Var.P(i9 + 8);
        int b10 = k2.a.b(b0Var.n());
        if ((b10 & 1) == 0) {
            boolean z10 = (b10 & 2) != 0;
            int H = b0Var.H();
            if (H == 0) {
                Arrays.fill(qVar.f53502m, 0, qVar.f53495f, false);
                return;
            } else if (H == qVar.f53495f) {
                Arrays.fill(qVar.f53502m, 0, H, z10);
                qVar.d(b0Var.a());
                qVar.b(b0Var);
                return;
            } else {
                throw ParserException.createForMalformedContainer("Senc sample count " + H + " is different from fragment sample count" + qVar.f53495f, null);
            }
        }
        throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static void z(com.google.android.exoplayer2.util.b0 b0Var, q qVar) throws ParserException {
        y(b0Var, 0, qVar);
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        int size = this.f53391d.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.f53391d.valueAt(i9).k();
        }
        this.f53401n.clear();
        this.f53409v = 0;
        this.f53410w = j11;
        this.f53400m.clear();
        e();
    }

    @Override // c2.l
    public int b(c2.m mVar, a0 a0Var) throws IOException {
        while (true) {
            int i9 = this.f53403p;
            if (i9 != 0) {
                if (i9 == 1) {
                    K(mVar);
                } else if (i9 != 2) {
                    if (M(mVar)) {
                        return 0;
                    }
                } else {
                    L(mVar);
                }
            } else if (!J(mVar)) {
                return -1;
            }
        }
    }

    @Override // c2.l
    public void f(c2.n nVar) {
        this.E = nVar;
        e();
        k();
        o oVar = this.f53389b;
        if (oVar != null) {
            this.f53391d.put(0, new b(nVar.q(0, oVar.f53475b), new r(this.f53389b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.E.o();
        }
    }

    @Override // c2.l
    public boolean h(c2.m mVar) throws IOException {
        return n.b(mVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public o m(@Nullable o oVar) {
        return oVar;
    }

    @Override // c2.l
    public void release() {
    }

    public g(int i9) {
        this(i9, null);
    }

    public g(int i9, @Nullable i0 i0Var) {
        this(i9, i0Var, null, Collections.emptyList());
    }

    public g(int i9, @Nullable i0 i0Var, @Nullable o oVar, List<k1> list) {
        this(i9, i0Var, oVar, list, null);
    }

    public g(int i9, @Nullable i0 i0Var, @Nullable o oVar, List<k1> list, @Nullable e0 e0Var) {
        this.f53388a = i9;
        this.f53397j = i0Var;
        this.f53389b = oVar;
        this.f53390c = Collections.unmodifiableList(list);
        this.f53402o = e0Var;
        this.f53398k = new q2.b();
        this.f53399l = new com.google.android.exoplayer2.util.b0(16);
        this.f53392e = new com.google.android.exoplayer2.util.b0(w.f7041a);
        this.f53393f = new com.google.android.exoplayer2.util.b0(5);
        this.f53394g = new com.google.android.exoplayer2.util.b0();
        byte[] bArr = new byte[16];
        this.f53395h = bArr;
        this.f53396i = new com.google.android.exoplayer2.util.b0(bArr);
        this.f53400m = new ArrayDeque<>();
        this.f53401n = new ArrayDeque<>();
        this.f53391d = new SparseArray<>();
        this.f53411x = -9223372036854775807L;
        this.f53410w = -9223372036854775807L;
        this.f53412y = -9223372036854775807L;
        this.E = c2.n.S;
        this.F = new e0[0];
        this.G = new e0[0];
    }
}
