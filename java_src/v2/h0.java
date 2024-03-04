package v2;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import c2.e0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.drm.u;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l1;
import java.io.IOException;
import v2.h0;
/* loaded from: classes.dex */
public class h0 implements c2.e0 {
    @Nullable
    private k1 A;
    @Nullable
    private k1 B;
    private int C;
    private boolean D;
    private boolean E;
    private long F;
    private boolean G;

    /* renamed from: a  reason: collision with root package name */
    private final f0 f58811a;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f58814d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final s.a f58815e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private d f58816f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private k1 f58817g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private DrmSession f58818h;

    /* renamed from: p  reason: collision with root package name */
    private int f58826p;

    /* renamed from: q  reason: collision with root package name */
    private int f58827q;

    /* renamed from: r  reason: collision with root package name */
    private int f58828r;

    /* renamed from: s  reason: collision with root package name */
    private int f58829s;

    /* renamed from: w  reason: collision with root package name */
    private boolean f58833w;

    /* renamed from: z  reason: collision with root package name */
    private boolean f58836z;

    /* renamed from: b  reason: collision with root package name */
    private final b f58812b = new b();

    /* renamed from: i  reason: collision with root package name */
    private int f58819i = 1000;

    /* renamed from: j  reason: collision with root package name */
    private int[] f58820j = new int[1000];

    /* renamed from: k  reason: collision with root package name */
    private long[] f58821k = new long[1000];

    /* renamed from: n  reason: collision with root package name */
    private long[] f58824n = new long[1000];

    /* renamed from: m  reason: collision with root package name */
    private int[] f58823m = new int[1000];

    /* renamed from: l  reason: collision with root package name */
    private int[] f58822l = new int[1000];

    /* renamed from: o  reason: collision with root package name */
    private e0.a[] f58825o = new e0.a[1000];

    /* renamed from: c  reason: collision with root package name */
    private final m0<c> f58813c = new m0<>(new com.google.android.exoplayer2.util.h() { // from class: v2.g0
        @Override // com.google.android.exoplayer2.util.h
        public final void accept(Object obj) {
            h0.E((h0.c) obj);
        }
    });

    /* renamed from: t  reason: collision with root package name */
    private long f58830t = Long.MIN_VALUE;

    /* renamed from: u  reason: collision with root package name */
    private long f58831u = Long.MIN_VALUE;

    /* renamed from: v  reason: collision with root package name */
    private long f58832v = Long.MIN_VALUE;

    /* renamed from: y  reason: collision with root package name */
    private boolean f58835y = true;

    /* renamed from: x  reason: collision with root package name */
    private boolean f58834x = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f58837a;

        /* renamed from: b  reason: collision with root package name */
        public long f58838b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public e0.a f58839c;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final k1 f58840a;

        /* renamed from: b  reason: collision with root package name */
        public final u.b f58841b;

        private c(k1 k1Var, u.b bVar) {
            this.f58840a = k1Var;
            this.f58841b = bVar;
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void c(k1 k1Var);
    }

    protected h0(j3.b bVar, @Nullable com.google.android.exoplayer2.drm.u uVar, @Nullable s.a aVar) {
        this.f58814d = uVar;
        this.f58815e = aVar;
        this.f58811a = new f0(bVar);
    }

    private boolean B() {
        return this.f58829s != this.f58826p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void E(c cVar) {
        cVar.f58841b.release();
    }

    private boolean F(int i9) {
        DrmSession drmSession = this.f58818h;
        return drmSession == null || drmSession.getState() == 4 || ((this.f58823m[i9] & BasicMeasure.EXACTLY) == 0 && this.f58818h.d());
    }

    private void H(k1 k1Var, l1 l1Var) {
        k1 k1Var2 = this.f58817g;
        boolean z10 = k1Var2 == null;
        DrmInitData drmInitData = z10 ? null : k1Var2.f6114o;
        this.f58817g = k1Var;
        DrmInitData drmInitData2 = k1Var.f6114o;
        com.google.android.exoplayer2.drm.u uVar = this.f58814d;
        l1Var.f6166b = uVar != null ? k1Var.c(uVar.a(k1Var)) : k1Var;
        l1Var.f6165a = this.f58818h;
        if (this.f58814d == null) {
            return;
        }
        if (z10 || !com.google.android.exoplayer2.util.l0.c(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f58818h;
            DrmSession c10 = this.f58814d.c(this.f58815e, k1Var);
            this.f58818h = c10;
            l1Var.f6165a = c10;
            if (drmSession != null) {
                drmSession.b(this.f58815e);
            }
        }
    }

    private synchronized int I(l1 l1Var, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, b bVar) {
        decoderInputBuffer.f5709d = false;
        if (!B()) {
            if (!z11 && !this.f58833w) {
                k1 k1Var = this.B;
                if (k1Var == null || (!z10 && k1Var == this.f58817g)) {
                    return -3;
                }
                H((k1) com.google.android.exoplayer2.util.a.e(k1Var), l1Var);
                return -5;
            }
            decoderInputBuffer.o(4);
            return -4;
        }
        k1 k1Var2 = this.f58813c.e(w()).f58840a;
        if (!z10 && k1Var2 == this.f58817g) {
            int x10 = x(this.f58829s);
            if (!F(x10)) {
                decoderInputBuffer.f5709d = true;
                return -3;
            }
            decoderInputBuffer.o(this.f58823m[x10]);
            long j10 = this.f58824n[x10];
            decoderInputBuffer.f5710e = j10;
            if (j10 < this.f58830t) {
                decoderInputBuffer.e(Integer.MIN_VALUE);
            }
            bVar.f58837a = this.f58822l[x10];
            bVar.f58838b = this.f58821k[x10];
            bVar.f58839c = this.f58825o[x10];
            return -4;
        }
        H(k1Var2, l1Var);
        return -5;
    }

    private void M() {
        DrmSession drmSession = this.f58818h;
        if (drmSession != null) {
            drmSession.b(this.f58815e);
            this.f58818h = null;
            this.f58817g = null;
        }
    }

    private synchronized void P() {
        this.f58829s = 0;
        this.f58811a.n();
    }

    private synchronized boolean S(k1 k1Var) {
        this.f58835y = false;
        if (com.google.android.exoplayer2.util.l0.c(k1Var, this.B)) {
            return false;
        }
        if (!this.f58813c.g() && this.f58813c.f().f58840a.equals(k1Var)) {
            this.B = this.f58813c.f().f58840a;
        } else {
            this.B = k1Var;
        }
        k1 k1Var2 = this.B;
        this.D = com.google.android.exoplayer2.util.v.a(k1Var2.f6111l, k1Var2.f6108i);
        this.E = false;
        return true;
    }

    private synchronized boolean h(long j10) {
        if (this.f58826p == 0) {
            return j10 > this.f58831u;
        } else if (u() >= j10) {
            return false;
        } else {
            q(this.f58827q + j(j10));
            return true;
        }
    }

    private synchronized void i(long j10, int i9, long j11, int i10, @Nullable e0.a aVar) {
        u.b bVar;
        int i11 = this.f58826p;
        if (i11 > 0) {
            int x10 = x(i11 - 1);
            com.google.android.exoplayer2.util.a.a(this.f58821k[x10] + ((long) this.f58822l[x10]) <= j11);
        }
        this.f58833w = (536870912 & i9) != 0;
        this.f58832v = Math.max(this.f58832v, j10);
        int x11 = x(this.f58826p);
        this.f58824n[x11] = j10;
        this.f58821k[x11] = j11;
        this.f58822l[x11] = i10;
        this.f58823m[x11] = i9;
        this.f58825o[x11] = aVar;
        this.f58820j[x11] = this.C;
        if (this.f58813c.g() || !this.f58813c.f().f58840a.equals(this.B)) {
            com.google.android.exoplayer2.drm.u uVar = this.f58814d;
            if (uVar != null) {
                bVar = uVar.d(this.f58815e, this.B);
            } else {
                bVar = u.b.f5849a;
            }
            this.f58813c.a(A(), new c((k1) com.google.android.exoplayer2.util.a.e(this.B), bVar));
        }
        int i12 = this.f58826p + 1;
        this.f58826p = i12;
        int i13 = this.f58819i;
        if (i12 == i13) {
            int i14 = i13 + 1000;
            int[] iArr = new int[i14];
            long[] jArr = new long[i14];
            long[] jArr2 = new long[i14];
            int[] iArr2 = new int[i14];
            int[] iArr3 = new int[i14];
            e0.a[] aVarArr = new e0.a[i14];
            int i15 = this.f58828r;
            int i16 = i13 - i15;
            System.arraycopy(this.f58821k, i15, jArr, 0, i16);
            System.arraycopy(this.f58824n, this.f58828r, jArr2, 0, i16);
            System.arraycopy(this.f58823m, this.f58828r, iArr2, 0, i16);
            System.arraycopy(this.f58822l, this.f58828r, iArr3, 0, i16);
            System.arraycopy(this.f58825o, this.f58828r, aVarArr, 0, i16);
            System.arraycopy(this.f58820j, this.f58828r, iArr, 0, i16);
            int i17 = this.f58828r;
            System.arraycopy(this.f58821k, 0, jArr, i16, i17);
            System.arraycopy(this.f58824n, 0, jArr2, i16, i17);
            System.arraycopy(this.f58823m, 0, iArr2, i16, i17);
            System.arraycopy(this.f58822l, 0, iArr3, i16, i17);
            System.arraycopy(this.f58825o, 0, aVarArr, i16, i17);
            System.arraycopy(this.f58820j, 0, iArr, i16, i17);
            this.f58821k = jArr;
            this.f58824n = jArr2;
            this.f58823m = iArr2;
            this.f58822l = iArr3;
            this.f58825o = aVarArr;
            this.f58820j = iArr;
            this.f58828r = 0;
            this.f58819i = i14;
        }
    }

    private int j(long j10) {
        int i9 = this.f58826p;
        int x10 = x(i9 - 1);
        while (i9 > this.f58829s && this.f58824n[x10] >= j10) {
            i9--;
            x10--;
            if (x10 == -1) {
                x10 = this.f58819i - 1;
            }
        }
        return i9;
    }

    public static h0 k(j3.b bVar, com.google.android.exoplayer2.drm.u uVar, s.a aVar) {
        return new h0(bVar, (com.google.android.exoplayer2.drm.u) com.google.android.exoplayer2.util.a.e(uVar), (s.a) com.google.android.exoplayer2.util.a.e(aVar));
    }

    private synchronized long l(long j10, boolean z10, boolean z11) {
        int i9;
        int i10 = this.f58826p;
        if (i10 != 0) {
            long[] jArr = this.f58824n;
            int i11 = this.f58828r;
            if (j10 >= jArr[i11]) {
                if (z11 && (i9 = this.f58829s) != i10) {
                    i10 = i9 + 1;
                }
                int r10 = r(i11, i10, j10, z10);
                if (r10 == -1) {
                    return -1L;
                }
                return n(r10);
            }
        }
        return -1L;
    }

    private synchronized long m() {
        int i9 = this.f58826p;
        if (i9 == 0) {
            return -1L;
        }
        return n(i9);
    }

    @GuardedBy("this")
    private long n(int i9) {
        int i10;
        this.f58831u = Math.max(this.f58831u, v(i9));
        this.f58826p -= i9;
        int i11 = this.f58827q + i9;
        this.f58827q = i11;
        int i12 = this.f58828r + i9;
        this.f58828r = i12;
        int i13 = this.f58819i;
        if (i12 >= i13) {
            this.f58828r = i12 - i13;
        }
        int i14 = this.f58829s - i9;
        this.f58829s = i14;
        if (i14 < 0) {
            this.f58829s = 0;
        }
        this.f58813c.d(i11);
        if (this.f58826p == 0) {
            int i15 = this.f58828r;
            if (i15 == 0) {
                i15 = this.f58819i;
            }
            return this.f58821k[i15 - 1] + this.f58822l[i10];
        }
        return this.f58821k[this.f58828r];
    }

    private long q(int i9) {
        int A = A() - i9;
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.a(A >= 0 && A <= this.f58826p - this.f58829s);
        int i10 = this.f58826p - A;
        this.f58826p = i10;
        this.f58832v = Math.max(this.f58831u, v(i10));
        if (A == 0 && this.f58833w) {
            z10 = true;
        }
        this.f58833w = z10;
        this.f58813c.c(i9);
        int i11 = this.f58826p;
        if (i11 != 0) {
            int x10 = x(i11 - 1);
            return this.f58821k[x10] + this.f58822l[x10];
        }
        return 0L;
    }

    private int r(int i9, int i10, long j10, boolean z10) {
        int i11 = -1;
        for (int i12 = 0; i12 < i10; i12++) {
            long[] jArr = this.f58824n;
            if (jArr[i9] > j10) {
                return i11;
            }
            if (!z10 || (this.f58823m[i9] & 1) != 0) {
                if (jArr[i9] == j10) {
                    return i12;
                }
                i11 = i12;
            }
            i9++;
            if (i9 == this.f58819i) {
                i9 = 0;
            }
        }
        return i11;
    }

    private long v(int i9) {
        long j10 = Long.MIN_VALUE;
        if (i9 == 0) {
            return Long.MIN_VALUE;
        }
        int x10 = x(i9 - 1);
        for (int i10 = 0; i10 < i9; i10++) {
            j10 = Math.max(j10, this.f58824n[x10]);
            if ((this.f58823m[x10] & 1) != 0) {
                break;
            }
            x10--;
            if (x10 == -1) {
                x10 = this.f58819i - 1;
            }
        }
        return j10;
    }

    private int x(int i9) {
        int i10 = this.f58828r + i9;
        int i11 = this.f58819i;
        return i10 < i11 ? i10 : i10 - i11;
    }

    public final int A() {
        return this.f58827q + this.f58826p;
    }

    public final synchronized boolean C() {
        return this.f58833w;
    }

    @CallSuper
    public synchronized boolean D(boolean z10) {
        k1 k1Var;
        boolean z11 = true;
        if (!B()) {
            if (!z10 && !this.f58833w && ((k1Var = this.B) == null || k1Var == this.f58817g)) {
                z11 = false;
            }
            return z11;
        } else if (this.f58813c.e(w()).f58840a != this.f58817g) {
            return true;
        } else {
            return F(x(this.f58829s));
        }
    }

    @CallSuper
    public void G() throws IOException {
        DrmSession drmSession = this.f58818h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(this.f58818h.e()));
        }
    }

    @CallSuper
    public void J() {
        p();
        M();
    }

    @CallSuper
    public int K(l1 l1Var, DecoderInputBuffer decoderInputBuffer, int i9, boolean z10) {
        int I = I(l1Var, decoderInputBuffer, (i9 & 2) != 0, z10, this.f58812b);
        if (I == -4 && !decoderInputBuffer.k()) {
            boolean z11 = (i9 & 1) != 0;
            if ((i9 & 4) == 0) {
                if (z11) {
                    this.f58811a.e(decoderInputBuffer, this.f58812b);
                } else {
                    this.f58811a.l(decoderInputBuffer, this.f58812b);
                }
            }
            if (!z11) {
                this.f58829s++;
            }
        }
        return I;
    }

    @CallSuper
    public void L() {
        O(true);
        M();
    }

    public final void N() {
        O(false);
    }

    @CallSuper
    public void O(boolean z10) {
        this.f58811a.m();
        this.f58826p = 0;
        this.f58827q = 0;
        this.f58828r = 0;
        this.f58829s = 0;
        this.f58834x = true;
        this.f58830t = Long.MIN_VALUE;
        this.f58831u = Long.MIN_VALUE;
        this.f58832v = Long.MIN_VALUE;
        this.f58833w = false;
        this.f58813c.b();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f58835y = true;
        }
    }

    public final synchronized boolean Q(long j10, boolean z10) {
        P();
        int x10 = x(this.f58829s);
        if (B() && j10 >= this.f58824n[x10] && (j10 <= this.f58832v || z10)) {
            int r10 = r(x10, this.f58826p - this.f58829s, j10, true);
            if (r10 == -1) {
                return false;
            }
            this.f58830t = j10;
            this.f58829s += r10;
            return true;
        }
        return false;
    }

    public final void R(long j10) {
        this.f58830t = j10;
    }

    public final void T(@Nullable d dVar) {
        this.f58816f = dVar;
    }

    public final synchronized void U(int i9) {
        boolean z10;
        if (i9 >= 0) {
            try {
                if (this.f58829s + i9 <= this.f58826p) {
                    z10 = true;
                    com.google.android.exoplayer2.util.a.a(z10);
                    this.f58829s += i9;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        z10 = false;
        com.google.android.exoplayer2.util.a.a(z10);
        this.f58829s += i9;
    }

    @Override // c2.e0
    public /* synthetic */ void a(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        c2.d0.b(this, b0Var, i9);
    }

    @Override // c2.e0
    public /* synthetic */ int b(j3.f fVar, int i9, boolean z10) {
        return c2.d0.a(this, fVar, i9, z10);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0059  */
    @Override // c2.e0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(long r12, int r14, int r15, int r16, @androidx.annotation.Nullable c2.e0.a r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.f58836z
            if (r0 == 0) goto L10
            com.google.android.exoplayer2.k1 r0 = r8.A
            java.lang.Object r0 = com.google.android.exoplayer2.util.a.h(r0)
            com.google.android.exoplayer2.k1 r0 = (com.google.android.exoplayer2.k1) r0
            r11.d(r0)
        L10:
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L18
            r3 = 1
            goto L19
        L18:
            r3 = 0
        L19:
            boolean r4 = r8.f58834x
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.f58834x = r1
        L22:
            long r4 = r8.F
            long r4 = r4 + r12
            boolean r6 = r8.D
            if (r6 == 0) goto L54
            long r6 = r8.f58830t
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 >= 0) goto L30
            return
        L30:
            if (r0 != 0) goto L54
            boolean r0 = r8.E
            if (r0 != 0) goto L50
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r6 = "Overriding unexpected non-sync sample for format: "
            r0.append(r6)
            com.google.android.exoplayer2.k1 r6 = r8.B
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r6 = "SampleQueue"
            com.google.android.exoplayer2.util.r.i(r6, r0)
            r8.E = r2
        L50:
            r0 = r14 | 1
            r6 = r0
            goto L55
        L54:
            r6 = r14
        L55:
            boolean r0 = r8.G
            if (r0 == 0) goto L66
            if (r3 == 0) goto L65
            boolean r0 = r11.h(r4)
            if (r0 != 0) goto L62
            goto L65
        L62:
            r8.G = r1
            goto L66
        L65:
            return
        L66:
            v2.f0 r0 = r8.f58811a
            long r0 = r0.d()
            r7 = r15
            long r2 = (long) r7
            long r0 = r0 - r2
            r2 = r16
            long r2 = (long) r2
            long r9 = r0 - r2
            r0 = r11
            r1 = r4
            r3 = r6
            r4 = r9
            r6 = r15
            r7 = r17
            r0.i(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: v2.h0.c(long, int, int, int, c2.e0$a):void");
    }

    @Override // c2.e0
    public final void d(k1 k1Var) {
        k1 s10 = s(k1Var);
        this.f58836z = false;
        this.A = k1Var;
        boolean S = S(s10);
        d dVar = this.f58816f;
        if (dVar == null || !S) {
            return;
        }
        dVar.c(s10);
    }

    @Override // c2.e0
    public final int e(j3.f fVar, int i9, boolean z10, int i10) throws IOException {
        return this.f58811a.o(fVar, i9, z10);
    }

    @Override // c2.e0
    public final void f(com.google.android.exoplayer2.util.b0 b0Var, int i9, int i10) {
        this.f58811a.p(b0Var, i9);
    }

    public final void o(long j10, boolean z10, boolean z11) {
        this.f58811a.b(l(j10, z10, z11));
    }

    public final void p() {
        this.f58811a.b(m());
    }

    @CallSuper
    protected k1 s(k1 k1Var) {
        return (this.F == 0 || k1Var.f6115p == Long.MAX_VALUE) ? k1Var : k1Var.b().i0(k1Var.f6115p + this.F).E();
    }

    public final synchronized long t() {
        return this.f58832v;
    }

    public final synchronized long u() {
        return Math.max(this.f58831u, v(this.f58829s));
    }

    public final int w() {
        return this.f58827q + this.f58829s;
    }

    public final synchronized int y(long j10, boolean z10) {
        int x10 = x(this.f58829s);
        if (B() && j10 >= this.f58824n[x10]) {
            if (j10 > this.f58832v && z10) {
                return this.f58826p - this.f58829s;
            }
            int r10 = r(x10, this.f58826p - this.f58829s, j10, true);
            if (r10 == -1) {
                return 0;
            }
            return r10;
        }
        return 0;
    }

    @Nullable
    public final synchronized k1 z() {
        return this.f58835y ? null : this.B;
    }
}
