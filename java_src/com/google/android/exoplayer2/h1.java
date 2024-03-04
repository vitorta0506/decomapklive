package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.e2;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.l;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.s1;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.u2;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.w7;
import h3.b0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import v2.n;
import v2.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h1 implements Handler.Callback, n.a, b0.a, e2.d, l.a, p2.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    @Nullable
    private h K;
    private long L;
    private int M;
    private boolean N;
    @Nullable
    private ExoPlaybackException O;
    private long P;
    private long Q = -9223372036854775807L;

    /* renamed from: a  reason: collision with root package name */
    private final u2[] f5939a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<u2> f5940b;

    /* renamed from: c  reason: collision with root package name */
    private final w2[] f5941c;

    /* renamed from: d  reason: collision with root package name */
    private final h3.b0 f5942d;

    /* renamed from: e  reason: collision with root package name */
    private final h3.c0 f5943e;

    /* renamed from: f  reason: collision with root package name */
    private final q1 f5944f;

    /* renamed from: g  reason: collision with root package name */
    private final j3.d f5945g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.n f5946h;

    /* renamed from: i  reason: collision with root package name */
    private final HandlerThread f5947i;

    /* renamed from: j  reason: collision with root package name */
    private final Looper f5948j;

    /* renamed from: k  reason: collision with root package name */
    private final i3.d f5949k;

    /* renamed from: l  reason: collision with root package name */
    private final i3.b f5950l;

    /* renamed from: m  reason: collision with root package name */
    private final long f5951m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f5952n;

    /* renamed from: o  reason: collision with root package name */
    private final l f5953o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<d> f5954p;

    /* renamed from: q  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f5955q;

    /* renamed from: r  reason: collision with root package name */
    private final f f5956r;

    /* renamed from: s  reason: collision with root package name */
    private final b2 f5957s;

    /* renamed from: t  reason: collision with root package name */
    private final e2 f5958t;

    /* renamed from: u  reason: collision with root package name */
    private final p1 f5959u;

    /* renamed from: v  reason: collision with root package name */
    private final long f5960v;

    /* renamed from: w  reason: collision with root package name */
    private z2 f5961w;

    /* renamed from: x  reason: collision with root package name */
    private i2 f5962x;

    /* renamed from: y  reason: collision with root package name */
    private e f5963y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f5964z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements u2.a {
        a() {
        }

        @Override // com.google.android.exoplayer2.u2.a
        public void a() {
            h1.this.H = true;
        }

        @Override // com.google.android.exoplayer2.u2.a
        public void b() {
            h1.this.f5946h.i(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<e2.c> f5966a;

        /* renamed from: b  reason: collision with root package name */
        private final v2.k0 f5967b;

        /* renamed from: c  reason: collision with root package name */
        private final int f5968c;

        /* renamed from: d  reason: collision with root package name */
        private final long f5969d;

        /* synthetic */ b(List list, v2.k0 k0Var, int i9, long j10, a aVar) {
            this(list, k0Var, i9, j10);
        }

        private b(List<e2.c> list, v2.k0 k0Var, int i9, long j10) {
            this.f5966a = list;
            this.f5967b = k0Var;
            this.f5968c = i9;
            this.f5969d = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f5970a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5971b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5972c;

        /* renamed from: d  reason: collision with root package name */
        public final v2.k0 f5973d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final p2 f5974a;

        /* renamed from: b  reason: collision with root package name */
        public int f5975b;

        /* renamed from: c  reason: collision with root package name */
        public long f5976c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f5977d;

        public d(p2 p2Var) {
            this.f5974a = p2Var;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            Object obj = this.f5977d;
            if ((obj == null) != (dVar.f5977d == null)) {
                return obj != null ? -1 : 1;
            } else if (obj == null) {
                return 0;
            } else {
                int i9 = this.f5975b - dVar.f5975b;
                return i9 != 0 ? i9 : com.google.android.exoplayer2.util.l0.n(this.f5976c, dVar.f5976c);
            }
        }

        public void b(int i9, long j10, Object obj) {
            this.f5975b = i9;
            this.f5976c = j10;
            this.f5977d = obj;
        }
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private boolean f5978a;

        /* renamed from: b  reason: collision with root package name */
        public i2 f5979b;

        /* renamed from: c  reason: collision with root package name */
        public int f5980c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f5981d;

        /* renamed from: e  reason: collision with root package name */
        public int f5982e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f5983f;

        /* renamed from: g  reason: collision with root package name */
        public int f5984g;

        public e(i2 i2Var) {
            this.f5979b = i2Var;
        }

        public void b(int i9) {
            this.f5978a |= i9 > 0;
            this.f5980c += i9;
        }

        public void c(int i9) {
            this.f5978a = true;
            this.f5983f = true;
            this.f5984g = i9;
        }

        public void d(i2 i2Var) {
            this.f5978a |= this.f5979b != i2Var;
            this.f5979b = i2Var;
        }

        public void e(int i9) {
            if (this.f5981d && this.f5982e != 5) {
                com.google.android.exoplayer2.util.a.a(i9 == 5);
                return;
            }
            this.f5978a = true;
            this.f5981d = true;
            this.f5982e = i9;
        }
    }

    /* loaded from: classes.dex */
    public interface f {
        void a(e eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final q.b f5985a;

        /* renamed from: b  reason: collision with root package name */
        public final long f5986b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5987c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f5988d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f5989e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f5990f;

        public g(q.b bVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
            this.f5985a = bVar;
            this.f5986b = j10;
            this.f5987c = j11;
            this.f5988d = z10;
            this.f5989e = z11;
            this.f5990f = z12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final i3 f5991a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5992b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5993c;

        public h(i3 i3Var, int i9, long j10) {
            this.f5991a = i3Var;
            this.f5992b = i9;
            this.f5993c = j10;
        }
    }

    public h1(u2[] u2VarArr, h3.b0 b0Var, h3.c0 c0Var, q1 q1Var, j3.d dVar, int i9, boolean z10, a2.a aVar, z2 z2Var, p1 p1Var, long j10, boolean z11, Looper looper, com.google.android.exoplayer2.util.d dVar2, f fVar, a2.s1 s1Var) {
        this.f5956r = fVar;
        this.f5939a = u2VarArr;
        this.f5942d = b0Var;
        this.f5943e = c0Var;
        this.f5944f = q1Var;
        this.f5945g = dVar;
        this.E = i9;
        this.F = z10;
        this.f5961w = z2Var;
        this.f5959u = p1Var;
        this.f5960v = j10;
        this.P = j10;
        this.A = z11;
        this.f5955q = dVar2;
        this.f5951m = q1Var.c();
        this.f5952n = q1Var.b();
        i2 j11 = i2.j(c0Var);
        this.f5962x = j11;
        this.f5963y = new e(j11);
        this.f5941c = new w2[u2VarArr.length];
        for (int i10 = 0; i10 < u2VarArr.length; i10++) {
            u2VarArr[i10].j(i10, s1Var);
            this.f5941c[i10] = u2VarArr[i10].o();
        }
        this.f5953o = new l(this, dVar2);
        this.f5954p = new ArrayList<>();
        this.f5940b = w7.l();
        this.f5949k = new i3.d();
        this.f5950l = new i3.b();
        b0Var.c(this, dVar);
        this.N = true;
        Handler handler = new Handler(looper);
        this.f5957s = new b2(aVar, handler);
        this.f5958t = new e2(this, aVar, handler, s1Var);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.f5947i = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.f5948j = looper2;
        this.f5946h = dVar2.d(looper2, this);
    }

    private void A0(boolean z10) throws ExoPlaybackException {
        q.b bVar = this.f5957s.p().f7307f.f7319a;
        long D0 = D0(bVar, this.f5962x.f6022r, true, false);
        if (D0 != this.f5962x.f6022r) {
            i2 i2Var = this.f5962x;
            this.f5962x = K(bVar, D0, i2Var.f6007c, i2Var.f6008d, z10, 5);
        }
    }

    private long B() {
        return C(this.f5962x.f6020p);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab A[Catch: all -> 0x0147, TryCatch #1 {all -> 0x0147, blocks: (B:22:0x00a1, B:24:0x00ab, B:27:0x00b1, B:29:0x00b7, B:30:0x00ba, B:32:0x00c0, B:34:0x00ca, B:36:0x00d2, B:40:0x00da, B:42:0x00e4, B:44:0x00f4, B:48:0x00fe, B:52:0x0110, B:56:0x0119), top: B:74:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void B0(com.google.android.exoplayer2.h1.h r20) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.h1.B0(com.google.android.exoplayer2.h1$h):void");
    }

    private long C(long j10) {
        y1 j11 = this.f5957s.j();
        if (j11 == null) {
            return 0L;
        }
        return Math.max(0L, j10 - j11.y(this.L));
    }

    private long C0(q.b bVar, long j10, boolean z10) throws ExoPlaybackException {
        return D0(bVar, j10, this.f5957s.p() != this.f5957s.q(), z10);
    }

    private void D(v2.n nVar) {
        if (this.f5957s.v(nVar)) {
            this.f5957s.y(this.L);
            U();
        }
    }

    private long D0(q.b bVar, long j10, boolean z10, boolean z11) throws ExoPlaybackException {
        h1();
        this.C = false;
        if (z11 || this.f5962x.f6009e == 3) {
            Y0(2);
        }
        y1 p10 = this.f5957s.p();
        y1 y1Var = p10;
        while (y1Var != null && !bVar.equals(y1Var.f7307f.f7319a)) {
            y1Var = y1Var.j();
        }
        if (z10 || p10 != y1Var || (y1Var != null && y1Var.z(j10) < 0)) {
            for (u2 u2Var : this.f5939a) {
                m(u2Var);
            }
            if (y1Var != null) {
                while (this.f5957s.p() != y1Var) {
                    this.f5957s.b();
                }
                this.f5957s.z(y1Var);
                y1Var.x(1000000000000L);
                p();
            }
        }
        if (y1Var != null) {
            this.f5957s.z(y1Var);
            if (!y1Var.f7305d) {
                y1Var.f7307f = y1Var.f7307f.b(j10);
            } else if (y1Var.f7306e) {
                long e10 = y1Var.f7302a.e(j10);
                y1Var.f7302a.s(e10 - this.f5951m, this.f5952n);
                j10 = e10;
            }
            r0(j10);
            U();
        } else {
            this.f5957s.f();
            r0(j10);
        }
        F(false);
        this.f5946h.i(2);
        return j10;
    }

    private void E(IOException iOException, int i9) {
        ExoPlaybackException createForSource = ExoPlaybackException.createForSource(iOException, i9);
        y1 p10 = this.f5957s.p();
        if (p10 != null) {
            createForSource = createForSource.copyWithMediaPeriodId(p10.f7307f.f7319a);
        }
        com.google.android.exoplayer2.util.r.d("ExoPlayerImplInternal", "Playback error", createForSource);
        g1(false, false);
        this.f5962x = this.f5962x.e(createForSource);
    }

    private void E0(p2 p2Var) throws ExoPlaybackException {
        if (p2Var.f() == -9223372036854775807L) {
            F0(p2Var);
        } else if (this.f5962x.f6005a.u()) {
            this.f5954p.add(new d(p2Var));
        } else {
            d dVar = new d(p2Var);
            i3 i3Var = this.f5962x.f6005a;
            if (t0(dVar, i3Var, i3Var, this.E, this.F, this.f5949k, this.f5950l)) {
                this.f5954p.add(dVar);
                Collections.sort(this.f5954p);
                return;
            }
            p2Var.k(false);
        }
    }

    private void F(boolean z10) {
        long i9;
        y1 j10 = this.f5957s.j();
        q.b bVar = j10 == null ? this.f5962x.f6006b : j10.f7307f.f7319a;
        boolean z11 = !this.f5962x.f6015k.equals(bVar);
        if (z11) {
            this.f5962x = this.f5962x.b(bVar);
        }
        i2 i2Var = this.f5962x;
        if (j10 == null) {
            i9 = i2Var.f6022r;
        } else {
            i9 = j10.i();
        }
        i2Var.f6020p = i9;
        this.f5962x.f6021q = B();
        if ((z11 || z10) && j10 != null && j10.f7305d) {
            j1(j10.n(), j10.o());
        }
    }

    private void F0(p2 p2Var) throws ExoPlaybackException {
        if (p2Var.c() == this.f5948j) {
            l(p2Var);
            int i9 = this.f5962x.f6009e;
            if (i9 == 3 || i9 == 2) {
                this.f5946h.i(2);
                return;
            }
            return;
        }
        this.f5946h.e(15, p2Var).a();
    }

    private void G(i3 i3Var, boolean z10) throws ExoPlaybackException {
        boolean z11;
        g v02 = v0(i3Var, this.f5962x, this.K, this.f5957s, this.E, this.F, this.f5949k, this.f5950l);
        q.b bVar = v02.f5985a;
        long j10 = v02.f5987c;
        boolean z12 = v02.f5988d;
        long j11 = v02.f5986b;
        boolean z13 = (this.f5962x.f6006b.equals(bVar) && j11 == this.f5962x.f6022r) ? false : true;
        h hVar = null;
        try {
            if (v02.f5989e) {
                if (this.f5962x.f6009e != 1) {
                    Y0(4);
                }
                p0(false, false, false, true);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (!z13) {
                z11 = false;
                if (!this.f5957s.F(i3Var, this.L, y())) {
                    A0(false);
                }
            } else {
                z11 = false;
                if (!i3Var.u()) {
                    for (y1 p10 = this.f5957s.p(); p10 != null; p10 = p10.j()) {
                        if (p10.f7307f.f7319a.equals(bVar)) {
                            p10.f7307f = this.f5957s.r(i3Var, p10.f7307f);
                            p10.A();
                        }
                    }
                    j11 = C0(bVar, j11, z12);
                }
            }
            i2 i2Var = this.f5962x;
            m1(i3Var, bVar, i2Var.f6005a, i2Var.f6006b, v02.f5990f ? j11 : -9223372036854775807L);
            if (z13 || j10 != this.f5962x.f6007c) {
                i2 i2Var2 = this.f5962x;
                Object obj = i2Var2.f6006b.f58906a;
                i3 i3Var2 = i2Var2.f6005a;
                this.f5962x = K(bVar, j11, j10, this.f5962x.f6008d, z13 && z10 && !i3Var2.u() && !i3Var2.l(obj, this.f5950l).f6031f, i3Var.f(obj) == -1 ? 4 : 3);
            }
            q0();
            u0(i3Var, this.f5962x.f6005a);
            this.f5962x = this.f5962x.i(i3Var);
            if (!i3Var.u()) {
                this.K = null;
            }
            F(z11);
        } catch (Throwable th3) {
            th = th3;
            hVar = null;
            i2 i2Var3 = this.f5962x;
            h hVar2 = hVar;
            m1(i3Var, bVar, i2Var3.f6005a, i2Var3.f6006b, v02.f5990f ? j11 : -9223372036854775807L);
            if (z13 || j10 != this.f5962x.f6007c) {
                i2 i2Var4 = this.f5962x;
                Object obj2 = i2Var4.f6006b.f58906a;
                i3 i3Var3 = i2Var4.f6005a;
                this.f5962x = K(bVar, j11, j10, this.f5962x.f6008d, z13 && z10 && !i3Var3.u() && !i3Var3.l(obj2, this.f5950l).f6031f, i3Var.f(obj2) == -1 ? 4 : 3);
            }
            q0();
            u0(i3Var, this.f5962x.f6005a);
            this.f5962x = this.f5962x.i(i3Var);
            if (!i3Var.u()) {
                this.K = hVar2;
            }
            F(false);
            throw th;
        }
    }

    private void G0(final p2 p2Var) {
        Looper c10 = p2Var.c();
        if (!c10.getThread().isAlive()) {
            com.google.android.exoplayer2.util.r.i("TAG", "Trying to send message on a dead thread.");
            p2Var.k(false);
            return;
        }
        this.f5955q.d(c10, null).h(new Runnable() { // from class: com.google.android.exoplayer2.g1
            @Override // java.lang.Runnable
            public final void run() {
                h1.this.T(p2Var);
            }
        });
    }

    private void H(v2.n nVar) throws ExoPlaybackException {
        if (this.f5957s.v(nVar)) {
            y1 j10 = this.f5957s.j();
            j10.p(this.f5953o.b().f6154a, this.f5962x.f6005a);
            j1(j10.n(), j10.o());
            if (j10 == this.f5957s.p()) {
                r0(j10.f7307f.f7320b);
                p();
                i2 i2Var = this.f5962x;
                q.b bVar = i2Var.f6006b;
                long j11 = j10.f7307f.f7320b;
                this.f5962x = K(bVar, j11, i2Var.f6007c, j11, false, 5);
            }
            U();
        }
    }

    private void H0(long j10) {
        u2[] u2VarArr;
        for (u2 u2Var : this.f5939a) {
            if (u2Var.t() != null) {
                I0(u2Var, j10);
            }
        }
    }

    private void I(k2 k2Var, float f10, boolean z10, boolean z11) throws ExoPlaybackException {
        u2[] u2VarArr;
        if (z10) {
            if (z11) {
                this.f5963y.b(1);
            }
            this.f5962x = this.f5962x.f(k2Var);
        }
        n1(k2Var.f6154a);
        for (u2 u2Var : this.f5939a) {
            if (u2Var != null) {
                u2Var.q(f10, k2Var.f6154a);
            }
        }
    }

    private void I0(u2 u2Var, long j10) {
        u2Var.i();
        if (u2Var instanceof x2.n) {
            ((x2.n) u2Var).X(j10);
        }
    }

    private void J(k2 k2Var, boolean z10) throws ExoPlaybackException {
        I(k2Var, k2Var.f6154a, true, z10);
    }

    private void J0(boolean z10, @Nullable AtomicBoolean atomicBoolean) {
        u2[] u2VarArr;
        if (this.G != z10) {
            this.G = z10;
            if (!z10) {
                for (u2 u2Var : this.f5939a) {
                    if (!P(u2Var) && this.f5940b.remove(u2Var)) {
                        u2Var.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckResult
    private i2 K(q.b bVar, long j10, long j11, long j12, boolean z10, int i9) {
        List list;
        v2.q0 q0Var;
        h3.c0 c0Var;
        v2.q0 n9;
        h3.c0 o10;
        this.N = (!this.N && j10 == this.f5962x.f6022r && bVar.equals(this.f5962x.f6006b)) ? false : true;
        q0();
        i2 i2Var = this.f5962x;
        v2.q0 q0Var2 = i2Var.f6012h;
        h3.c0 c0Var2 = i2Var.f6013i;
        List list2 = i2Var.f6014j;
        if (this.f5958t.s()) {
            y1 p10 = this.f5957s.p();
            if (p10 == null) {
                n9 = v2.q0.f58918d;
            } else {
                n9 = p10.n();
            }
            if (p10 == null) {
                o10 = this.f5943e;
            } else {
                o10 = p10.o();
            }
            List u10 = u(o10.f40385c);
            if (p10 != null) {
                z1 z1Var = p10.f7307f;
                if (z1Var.f7321c != j11) {
                    p10.f7307f = z1Var.a(j11);
                }
            }
            q0Var = n9;
            c0Var = o10;
            list = u10;
        } else if (bVar.equals(this.f5962x.f6006b)) {
            list = list2;
            q0Var = q0Var2;
            c0Var = c0Var2;
        } else {
            q0Var = v2.q0.f58918d;
            c0Var = this.f5943e;
            list = ImmutableList.of();
        }
        if (z10) {
            this.f5963y.e(i9);
        }
        return this.f5962x.c(bVar, j10, j11, j12, B(), q0Var, c0Var, list);
    }

    private void K0(b bVar) throws ExoPlaybackException {
        this.f5963y.b(1);
        if (bVar.f5968c != -1) {
            this.K = new h(new q2(bVar.f5966a, bVar.f5967b), bVar.f5968c, bVar.f5969d);
        }
        G(this.f5958t.C(bVar.f5966a, bVar.f5967b), false);
    }

    private boolean L(u2 u2Var, y1 y1Var) {
        y1 j10 = y1Var.j();
        return y1Var.f7307f.f7324f && j10.f7305d && ((u2Var instanceof x2.n) || (u2Var instanceof com.google.android.exoplayer2.metadata.a) || u2Var.u() >= j10.m());
    }

    private boolean M() {
        y1 q10 = this.f5957s.q();
        if (q10.f7305d) {
            int i9 = 0;
            while (true) {
                u2[] u2VarArr = this.f5939a;
                if (i9 >= u2VarArr.length) {
                    return true;
                }
                u2 u2Var = u2VarArr[i9];
                v2.i0 i0Var = q10.f7304c[i9];
                if (u2Var.t() != i0Var || (i0Var != null && !u2Var.g() && !L(u2Var, q10))) {
                    break;
                }
                i9++;
            }
            return false;
        }
        return false;
    }

    private void M0(boolean z10) {
        if (z10 == this.I) {
            return;
        }
        this.I = z10;
        if (z10 || !this.f5962x.f6019o) {
            return;
        }
        this.f5946h.i(2);
    }

    private static boolean N(boolean z10, q.b bVar, long j10, q.b bVar2, i3.b bVar3, long j11) {
        if (!z10 && j10 == j11 && bVar.f58906a.equals(bVar2.f58906a)) {
            return (bVar.b() && bVar3.t(bVar.f58907b)) ? (bVar3.k(bVar.f58907b, bVar.f58908c) == 4 || bVar3.k(bVar.f58907b, bVar.f58908c) == 2) ? false : true : bVar2.b() && bVar3.t(bVar2.f58907b);
        }
        return false;
    }

    private void N0(boolean z10) throws ExoPlaybackException {
        this.A = z10;
        q0();
        if (!this.B || this.f5957s.q() == this.f5957s.p()) {
            return;
        }
        A0(true);
        F(false);
    }

    private boolean O() {
        y1 j10 = this.f5957s.j();
        return (j10 == null || j10.k() == Long.MIN_VALUE) ? false : true;
    }

    private static boolean P(u2 u2Var) {
        return u2Var.getState() != 0;
    }

    private void P0(boolean z10, int i9, boolean z11, int i10) throws ExoPlaybackException {
        this.f5963y.b(z11 ? 1 : 0);
        this.f5963y.c(i10);
        this.f5962x = this.f5962x.d(z10, i9);
        this.C = false;
        e0(z10);
        if (!b1()) {
            h1();
            l1();
            return;
        }
        int i11 = this.f5962x.f6009e;
        if (i11 == 3) {
            e1();
            this.f5946h.i(2);
        } else if (i11 == 2) {
            this.f5946h.i(2);
        }
    }

    private boolean Q() {
        y1 p10 = this.f5957s.p();
        long j10 = p10.f7307f.f7323e;
        return p10.f7305d && (j10 == -9223372036854775807L || this.f5962x.f6022r < j10 || !b1());
    }

    private static boolean R(i2 i2Var, i3.b bVar) {
        q.b bVar2 = i2Var.f6006b;
        i3 i3Var = i2Var.f6005a;
        return i3Var.u() || i3Var.l(bVar2.f58906a, bVar).f6031f;
    }

    private void R0(k2 k2Var) throws ExoPlaybackException {
        this.f5953o.d(k2Var);
        J(this.f5953o.b(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean S() {
        return Boolean.valueOf(this.f5964z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(p2 p2Var) {
        try {
            l(p2Var);
        } catch (ExoPlaybackException e10) {
            com.google.android.exoplayer2.util.r.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e10);
            throw new RuntimeException(e10);
        }
    }

    private void T0(int i9) throws ExoPlaybackException {
        this.E = i9;
        if (!this.f5957s.G(this.f5962x.f6005a, i9)) {
            A0(true);
        }
        F(false);
    }

    private void U() {
        boolean a12 = a1();
        this.D = a12;
        if (a12) {
            this.f5957s.j().d(this.L);
        }
        i1();
    }

    private void U0(z2 z2Var) {
        this.f5961w = z2Var;
    }

    private void V() {
        this.f5963y.d(this.f5962x);
        if (this.f5963y.f5978a) {
            this.f5956r.a(this.f5963y);
            this.f5963y = new e(this.f5962x);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0090 A[LOOP:1: B:27:0x0074->B:37:0x0090, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0044 -> B:14:0x0045). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0073 -> B:27:0x0074). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void W(long r8, long r10) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.h1.W(long, long):void");
    }

    private void W0(boolean z10) throws ExoPlaybackException {
        this.F = z10;
        if (!this.f5957s.H(this.f5962x.f6005a, z10)) {
            A0(true);
        }
        F(false);
    }

    private void X() throws ExoPlaybackException {
        z1 o10;
        this.f5957s.y(this.L);
        if (this.f5957s.D() && (o10 = this.f5957s.o(this.L, this.f5962x)) != null) {
            y1 g10 = this.f5957s.g(this.f5941c, this.f5942d, this.f5944f.a(), this.f5958t, o10, this.f5943e);
            g10.f7302a.k(this, o10.f7320b);
            if (this.f5957s.p() == g10) {
                r0(o10.f7320b);
            }
            F(false);
        }
        if (this.D) {
            this.D = O();
            i1();
            return;
        }
        U();
    }

    private void X0(v2.k0 k0Var) throws ExoPlaybackException {
        this.f5963y.b(1);
        G(this.f5958t.D(k0Var), false);
    }

    private void Y() throws ExoPlaybackException {
        boolean z10;
        boolean z11 = false;
        while (Z0()) {
            if (z11) {
                V();
            }
            y1 y1Var = (y1) com.google.android.exoplayer2.util.a.e(this.f5957s.b());
            if (this.f5962x.f6006b.f58906a.equals(y1Var.f7307f.f7319a.f58906a)) {
                q.b bVar = this.f5962x.f6006b;
                if (bVar.f58907b == -1) {
                    q.b bVar2 = y1Var.f7307f.f7319a;
                    if (bVar2.f58907b == -1 && bVar.f58910e != bVar2.f58910e) {
                        z10 = true;
                        z1 z1Var = y1Var.f7307f;
                        q.b bVar3 = z1Var.f7319a;
                        long j10 = z1Var.f7320b;
                        this.f5962x = K(bVar3, j10, z1Var.f7321c, j10, !z10, 0);
                        q0();
                        l1();
                        z11 = true;
                    }
                }
            }
            z10 = false;
            z1 z1Var2 = y1Var.f7307f;
            q.b bVar32 = z1Var2.f7319a;
            long j102 = z1Var2.f7320b;
            this.f5962x = K(bVar32, j102, z1Var2.f7321c, j102, !z10, 0);
            q0();
            l1();
            z11 = true;
        }
    }

    private void Y0(int i9) {
        i2 i2Var = this.f5962x;
        if (i2Var.f6009e != i9) {
            if (i9 != 2) {
                this.Q = -9223372036854775807L;
            }
            this.f5962x = i2Var.g(i9);
        }
    }

    private void Z() {
        y1 q10 = this.f5957s.q();
        if (q10 == null) {
            return;
        }
        int i9 = 0;
        if (q10.j() != null && !this.B) {
            if (M()) {
                if (q10.j().f7305d || this.L >= q10.j().m()) {
                    h3.c0 o10 = q10.o();
                    y1 c10 = this.f5957s.c();
                    h3.c0 o11 = c10.o();
                    i3 i3Var = this.f5962x.f6005a;
                    m1(i3Var, c10.f7307f.f7319a, i3Var, q10.f7307f.f7319a, -9223372036854775807L);
                    if (c10.f7305d && c10.f7302a.h() != -9223372036854775807L) {
                        H0(c10.m());
                        return;
                    }
                    for (int i10 = 0; i10 < this.f5939a.length; i10++) {
                        boolean c11 = o10.c(i10);
                        boolean c12 = o11.c(i10);
                        if (c11 && !this.f5939a[i10].n()) {
                            boolean z10 = this.f5941c[i10].f() == -2;
                            x2 x2Var = o10.f40384b[i10];
                            x2 x2Var2 = o11.f40384b[i10];
                            if (!c12 || !x2Var2.equals(x2Var) || z10) {
                                I0(this.f5939a[i10], c10.m());
                            }
                        }
                    }
                }
            }
        } else if (q10.f7307f.f7327i || this.B) {
            while (true) {
                u2[] u2VarArr = this.f5939a;
                if (i9 >= u2VarArr.length) {
                    return;
                }
                u2 u2Var = u2VarArr[i9];
                v2.i0 i0Var = q10.f7304c[i9];
                if (i0Var != null && u2Var.t() == i0Var && u2Var.g()) {
                    long j10 = q10.f7307f.f7323e;
                    I0(u2Var, (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? -9223372036854775807L : q10.l() + q10.f7307f.f7323e);
                }
                i9++;
            }
        }
    }

    private boolean Z0() {
        y1 p10;
        y1 j10;
        return b1() && !this.B && (p10 = this.f5957s.p()) != null && (j10 = p10.j()) != null && this.L >= j10.m() && j10.f7308g;
    }

    private void a0() throws ExoPlaybackException {
        y1 q10 = this.f5957s.q();
        if (q10 == null || this.f5957s.p() == q10 || q10.f7308g || !n0()) {
            return;
        }
        p();
    }

    private boolean a1() {
        long y10;
        if (O()) {
            y1 j10 = this.f5957s.j();
            long C = C(j10.k());
            if (j10 == this.f5957s.p()) {
                y10 = j10.y(this.L);
            } else {
                y10 = j10.y(this.L) - j10.f7307f.f7320b;
            }
            return this.f5944f.h(y10, C, this.f5953o.b().f6154a);
        }
        return false;
    }

    private void b0() throws ExoPlaybackException {
        G(this.f5958t.i(), true);
    }

    private boolean b1() {
        i2 i2Var = this.f5962x;
        return i2Var.f6016l && i2Var.f6017m == 0;
    }

    private void c0(c cVar) throws ExoPlaybackException {
        this.f5963y.b(1);
        G(this.f5958t.v(cVar.f5970a, cVar.f5971b, cVar.f5972c, cVar.f5973d), false);
    }

    private boolean c1(boolean z10) {
        if (this.J == 0) {
            return Q();
        }
        if (z10) {
            i2 i2Var = this.f5962x;
            if (i2Var.f6011g) {
                long c10 = d1(i2Var.f6005a, this.f5957s.p().f7307f.f7319a) ? this.f5959u.c() : -9223372036854775807L;
                y1 j10 = this.f5957s.j();
                return (j10.q() && j10.f7307f.f7327i) || (j10.f7307f.f7319a.b() && !j10.f7305d) || this.f5944f.e(B(), this.f5953o.b().f6154a, this.C, c10);
            }
            return true;
        }
        return false;
    }

    private void d0() {
        h3.s[] sVarArr;
        for (y1 p10 = this.f5957s.p(); p10 != null; p10 = p10.j()) {
            for (h3.s sVar : p10.o().f40385c) {
                if (sVar != null) {
                    sVar.f();
                }
            }
        }
    }

    private boolean d1(i3 i3Var, q.b bVar) {
        if (bVar.b() || i3Var.u()) {
            return false;
        }
        i3Var.r(i3Var.l(bVar.f58906a, this.f5950l).f6028c, this.f5949k);
        if (this.f5949k.g()) {
            i3.d dVar = this.f5949k;
            return dVar.f6049i && dVar.f6046f != -9223372036854775807L;
        }
        return false;
    }

    private void e0(boolean z10) {
        h3.s[] sVarArr;
        for (y1 p10 = this.f5957s.p(); p10 != null; p10 = p10.j()) {
            for (h3.s sVar : p10.o().f40385c) {
                if (sVar != null) {
                    sVar.i(z10);
                }
            }
        }
    }

    private void e1() throws ExoPlaybackException {
        u2[] u2VarArr;
        this.C = false;
        this.f5953o.g();
        for (u2 u2Var : this.f5939a) {
            if (P(u2Var)) {
                u2Var.start();
            }
        }
    }

    private void f0() {
        h3.s[] sVarArr;
        for (y1 p10 = this.f5957s.p(); p10 != null; p10 = p10.j()) {
            for (h3.s sVar : p10.o().f40385c) {
                if (sVar != null) {
                    sVar.l();
                }
            }
        }
    }

    private void g1(boolean z10, boolean z11) {
        p0(z10 || !this.G, false, true, false);
        this.f5963y.b(z11 ? 1 : 0);
        this.f5944f.f();
        Y0(1);
    }

    private void h1() throws ExoPlaybackException {
        u2[] u2VarArr;
        this.f5953o.h();
        for (u2 u2Var : this.f5939a) {
            if (P(u2Var)) {
                s(u2Var);
            }
        }
    }

    private void i0() {
        this.f5963y.b(1);
        p0(false, false, false, true);
        this.f5944f.d();
        Y0(this.f5962x.f6005a.u() ? 4 : 2);
        this.f5958t.w(this.f5945g.c());
        this.f5946h.i(2);
    }

    private void i1() {
        y1 j10 = this.f5957s.j();
        boolean z10 = this.D || (j10 != null && j10.f7302a.isLoading());
        i2 i2Var = this.f5962x;
        if (z10 != i2Var.f6011g) {
            this.f5962x = i2Var.a(z10);
        }
    }

    private void j(b bVar, int i9) throws ExoPlaybackException {
        this.f5963y.b(1);
        e2 e2Var = this.f5958t;
        if (i9 == -1) {
            i9 = e2Var.q();
        }
        G(e2Var.f(i9, bVar.f5966a, bVar.f5967b), false);
    }

    private void j1(v2.q0 q0Var, h3.c0 c0Var) {
        this.f5944f.i(this.f5939a, q0Var, c0Var.f40385c);
    }

    private void k() throws ExoPlaybackException {
        A0(true);
    }

    private void k0() {
        p0(true, false, true, false);
        this.f5944f.g();
        Y0(1);
        this.f5947i.quit();
        synchronized (this) {
            this.f5964z = true;
            notifyAll();
        }
    }

    private void k1() throws ExoPlaybackException, IOException {
        if (this.f5962x.f6005a.u() || !this.f5958t.s()) {
            return;
        }
        X();
        Z();
        a0();
        Y();
    }

    private void l(p2 p2Var) throws ExoPlaybackException {
        if (p2Var.j()) {
            return;
        }
        try {
            p2Var.g().k(p2Var.i(), p2Var.e());
        } finally {
            p2Var.k(true);
        }
    }

    private void l0(int i9, int i10, v2.k0 k0Var) throws ExoPlaybackException {
        this.f5963y.b(1);
        G(this.f5958t.A(i9, i10, k0Var), false);
    }

    private void l1() throws ExoPlaybackException {
        y1 p10 = this.f5957s.p();
        if (p10 == null) {
            return;
        }
        long h10 = p10.f7305d ? p10.f7302a.h() : -9223372036854775807L;
        if (h10 != -9223372036854775807L) {
            r0(h10);
            if (h10 != this.f5962x.f6022r) {
                i2 i2Var = this.f5962x;
                this.f5962x = K(i2Var.f6006b, h10, i2Var.f6007c, h10, true, 5);
            }
        } else {
            long i9 = this.f5953o.i(p10 != this.f5957s.q());
            this.L = i9;
            long y10 = p10.y(i9);
            W(this.f5962x.f6022r, y10);
            this.f5962x.f6022r = y10;
        }
        this.f5962x.f6020p = this.f5957s.j().i();
        this.f5962x.f6021q = B();
        i2 i2Var2 = this.f5962x;
        if (i2Var2.f6016l && i2Var2.f6009e == 3 && d1(i2Var2.f6005a, i2Var2.f6006b) && this.f5962x.f6018n.f6154a == 1.0f) {
            float b10 = this.f5959u.b(v(), B());
            if (this.f5953o.b().f6154a != b10) {
                this.f5953o.d(this.f5962x.f6018n.e(b10));
                I(this.f5962x.f6018n, this.f5953o.b().f6154a, false, false);
            }
        }
    }

    private void m(u2 u2Var) throws ExoPlaybackException {
        if (P(u2Var)) {
            this.f5953o.a(u2Var);
            s(u2Var);
            u2Var.e();
            this.J--;
        }
    }

    private void m1(i3 i3Var, q.b bVar, i3 i3Var2, q.b bVar2, long j10) {
        if (!d1(i3Var, bVar)) {
            k2 k2Var = bVar.b() ? k2.f6152d : this.f5962x.f6018n;
            if (this.f5953o.b().equals(k2Var)) {
                return;
            }
            this.f5953o.d(k2Var);
            return;
        }
        i3Var.r(i3Var.l(bVar.f58906a, this.f5950l).f6028c, this.f5949k);
        this.f5959u.a((s1.g) com.google.android.exoplayer2.util.l0.j(this.f5949k.f6051k));
        if (j10 != -9223372036854775807L) {
            this.f5959u.e(x(i3Var, bVar.f58906a, j10));
            return;
        }
        if (com.google.android.exoplayer2.util.l0.c(i3Var2.u() ? null : i3Var2.r(i3Var2.l(bVar2.f58906a, this.f5950l).f6028c, this.f5949k).f6041a, this.f5949k.f6041a)) {
            return;
        }
        this.f5959u.e(-9223372036854775807L);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n() throws com.google.android.exoplayer2.ExoPlaybackException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.h1.n():void");
    }

    private boolean n0() throws ExoPlaybackException {
        y1 q10 = this.f5957s.q();
        h3.c0 o10 = q10.o();
        int i9 = 0;
        boolean z10 = false;
        while (true) {
            u2[] u2VarArr = this.f5939a;
            if (i9 >= u2VarArr.length) {
                return !z10;
            }
            u2 u2Var = u2VarArr[i9];
            if (P(u2Var)) {
                boolean z11 = u2Var.t() != q10.f7304c[i9];
                if (!o10.c(i9) || z11) {
                    if (!u2Var.n()) {
                        u2Var.h(w(o10.f40385c[i9]), q10.f7304c[i9], q10.m(), q10.l());
                    } else if (u2Var.c()) {
                        m(u2Var);
                    } else {
                        z10 = true;
                    }
                }
            }
            i9++;
        }
    }

    private void n1(float f10) {
        h3.s[] sVarArr;
        for (y1 p10 = this.f5957s.p(); p10 != null; p10 = p10.j()) {
            for (h3.s sVar : p10.o().f40385c) {
                if (sVar != null) {
                    sVar.d(f10);
                }
            }
        }
    }

    private void o(int i9, boolean z10) throws ExoPlaybackException {
        u2 u2Var = this.f5939a[i9];
        if (P(u2Var)) {
            return;
        }
        y1 q10 = this.f5957s.q();
        boolean z11 = q10 == this.f5957s.p();
        h3.c0 o10 = q10.o();
        x2 x2Var = o10.f40384b[i9];
        k1[] w6 = w(o10.f40385c[i9]);
        boolean z12 = b1() && this.f5962x.f6009e == 3;
        boolean z13 = !z10 && z12;
        this.J++;
        this.f5940b.add(u2Var);
        u2Var.l(x2Var, w6, q10.f7304c[i9], this.L, z13, z11, q10.m(), q10.l());
        u2Var.k(11, new a());
        this.f5953o.c(u2Var);
        if (z12) {
            u2Var.start();
        }
    }

    private void o0() throws ExoPlaybackException {
        float f10 = this.f5953o.b().f6154a;
        y1 q10 = this.f5957s.q();
        boolean z10 = true;
        for (y1 p10 = this.f5957s.p(); p10 != null && p10.f7305d; p10 = p10.j()) {
            h3.c0 v10 = p10.v(f10, this.f5962x.f6005a);
            if (!v10.a(p10.o())) {
                if (z10) {
                    y1 p11 = this.f5957s.p();
                    boolean z11 = this.f5957s.z(p11);
                    boolean[] zArr = new boolean[this.f5939a.length];
                    long b10 = p11.b(v10, this.f5962x.f6022r, z11, zArr);
                    i2 i2Var = this.f5962x;
                    boolean z12 = (i2Var.f6009e == 4 || b10 == i2Var.f6022r) ? false : true;
                    i2 i2Var2 = this.f5962x;
                    this.f5962x = K(i2Var2.f6006b, b10, i2Var2.f6007c, i2Var2.f6008d, z12, 5);
                    if (z12) {
                        r0(b10);
                    }
                    boolean[] zArr2 = new boolean[this.f5939a.length];
                    int i9 = 0;
                    while (true) {
                        u2[] u2VarArr = this.f5939a;
                        if (i9 >= u2VarArr.length) {
                            break;
                        }
                        u2 u2Var = u2VarArr[i9];
                        zArr2[i9] = P(u2Var);
                        v2.i0 i0Var = p11.f7304c[i9];
                        if (zArr2[i9]) {
                            if (i0Var != u2Var.t()) {
                                m(u2Var);
                            } else if (zArr[i9]) {
                                u2Var.v(this.L);
                            }
                        }
                        i9++;
                    }
                    r(zArr2);
                } else {
                    this.f5957s.z(p10);
                    if (p10.f7305d) {
                        p10.a(v10, Math.max(p10.f7307f.f7320b, p10.y(this.L)), false);
                    }
                }
                F(true);
                if (this.f5962x.f6009e != 4) {
                    U();
                    l1();
                    this.f5946h.i(2);
                    return;
                }
                return;
            }
            if (p10 == q10) {
                z10 = false;
            }
        }
    }

    private synchronized void o1(com.google.common.base.w<Boolean> wVar, long j10) {
        long b10 = this.f5955q.b() + j10;
        boolean z10 = false;
        while (!wVar.get().booleanValue() && j10 > 0) {
            try {
                this.f5955q.e();
                wait(j10);
            } catch (InterruptedException unused) {
                z10 = true;
            }
            j10 = b10 - this.f5955q.b();
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private void p() throws ExoPlaybackException {
        r(new boolean[this.f5939a.length]);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void p0(boolean r29, boolean r30, boolean r31, boolean r32) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.h1.p0(boolean, boolean, boolean, boolean):void");
    }

    private void q0() {
        y1 p10 = this.f5957s.p();
        this.B = p10 != null && p10.f7307f.f7326h && this.A;
    }

    private void r(boolean[] zArr) throws ExoPlaybackException {
        y1 q10 = this.f5957s.q();
        h3.c0 o10 = q10.o();
        for (int i9 = 0; i9 < this.f5939a.length; i9++) {
            if (!o10.c(i9) && this.f5940b.remove(this.f5939a[i9])) {
                this.f5939a[i9].reset();
            }
        }
        for (int i10 = 0; i10 < this.f5939a.length; i10++) {
            if (o10.c(i10)) {
                o(i10, zArr[i10]);
            }
        }
        q10.f7308g = true;
    }

    private void r0(long j10) throws ExoPlaybackException {
        u2[] u2VarArr;
        y1 p10 = this.f5957s.p();
        long z10 = p10 == null ? j10 + 1000000000000L : p10.z(j10);
        this.L = z10;
        this.f5953o.e(z10);
        for (u2 u2Var : this.f5939a) {
            if (P(u2Var)) {
                u2Var.v(this.L);
            }
        }
        d0();
    }

    private void s(u2 u2Var) throws ExoPlaybackException {
        if (u2Var.getState() == 2) {
            u2Var.stop();
        }
    }

    private static void s0(i3 i3Var, d dVar, i3.d dVar2, i3.b bVar) {
        int i9 = i3Var.r(i3Var.l(dVar.f5977d, bVar).f6028c, dVar2).f6056p;
        Object obj = i3Var.k(i9, bVar, true).f6027b;
        long j10 = bVar.f6029d;
        dVar.b(i9, j10 != -9223372036854775807L ? j10 - 1 : Long.MAX_VALUE, obj);
    }

    private static boolean t0(d dVar, i3 i3Var, i3 i3Var2, int i9, boolean z10, i3.d dVar2, i3.b bVar) {
        Object obj = dVar.f5977d;
        if (obj == null) {
            Pair<Object, Long> w02 = w0(i3Var, new h(dVar.f5974a.h(), dVar.f5974a.d(), dVar.f5974a.f() == Long.MIN_VALUE ? -9223372036854775807L : com.google.android.exoplayer2.util.l0.w0(dVar.f5974a.f())), false, i9, z10, dVar2, bVar);
            if (w02 == null) {
                return false;
            }
            dVar.b(i3Var.f(w02.first), ((Long) w02.second).longValue(), w02.first);
            if (dVar.f5974a.f() == Long.MIN_VALUE) {
                s0(i3Var, dVar, dVar2, bVar);
            }
            return true;
        }
        int f10 = i3Var.f(obj);
        if (f10 == -1) {
            return false;
        }
        if (dVar.f5974a.f() == Long.MIN_VALUE) {
            s0(i3Var, dVar, dVar2, bVar);
            return true;
        }
        dVar.f5975b = f10;
        i3Var2.l(dVar.f5977d, bVar);
        if (bVar.f6031f && i3Var2.r(bVar.f6028c, dVar2).f6055o == i3Var2.f(dVar.f5977d)) {
            Pair<Object, Long> n9 = i3Var.n(dVar2, bVar, i3Var.l(dVar.f5977d, bVar).f6028c, dVar.f5976c + bVar.q());
            dVar.b(i3Var.f(n9.first), ((Long) n9.second).longValue(), n9.first);
        }
        return true;
    }

    private ImmutableList<Metadata> u(h3.s[] sVarArr) {
        ImmutableList.b bVar = new ImmutableList.b();
        boolean z10 = false;
        for (h3.s sVar : sVarArr) {
            if (sVar != null) {
                Metadata metadata = sVar.b(0).f6109j;
                if (metadata == null) {
                    bVar.a(new Metadata(new Metadata.Entry[0]));
                } else {
                    bVar.a(metadata);
                    z10 = true;
                }
            }
        }
        return z10 ? bVar.j() : ImmutableList.of();
    }

    private void u0(i3 i3Var, i3 i3Var2) {
        if (i3Var.u() && i3Var2.u()) {
            return;
        }
        for (int size = this.f5954p.size() - 1; size >= 0; size--) {
            if (!t0(this.f5954p.get(size), i3Var, i3Var2, this.E, this.F, this.f5949k, this.f5950l)) {
                this.f5954p.get(size).f5974a.k(false);
                this.f5954p.remove(size);
            }
        }
        Collections.sort(this.f5954p);
    }

    private long v() {
        i2 i2Var = this.f5962x;
        return x(i2Var.f6005a, i2Var.f6006b.f58906a, i2Var.f6022r);
    }

    private static g v0(i3 i3Var, i2 i2Var, @Nullable h hVar, b2 b2Var, int i9, boolean z10, i3.d dVar, i3.b bVar) {
        long j10;
        int i10;
        q.b bVar2;
        long j11;
        int i11;
        boolean z11;
        boolean z12;
        boolean z13;
        int i12;
        int i13;
        boolean z14;
        b2 b2Var2;
        long j12;
        int i14;
        boolean z15;
        int i15;
        boolean z16;
        boolean z17;
        if (i3Var.u()) {
            return new g(i2.k(), 0L, -9223372036854775807L, false, true, false);
        }
        q.b bVar3 = i2Var.f6006b;
        Object obj = bVar3.f58906a;
        boolean R = R(i2Var, bVar);
        if (!i2Var.f6006b.b() && !R) {
            j10 = i2Var.f6022r;
        } else {
            j10 = i2Var.f6007c;
        }
        long j13 = j10;
        boolean z18 = true;
        if (hVar != null) {
            i10 = -1;
            Pair<Object, Long> w02 = w0(i3Var, hVar, true, i9, z10, dVar, bVar);
            if (w02 == null) {
                i15 = i3Var.e(z10);
                j11 = j13;
                z15 = false;
                z16 = false;
                z17 = true;
            } else {
                if (hVar.f5993c == -9223372036854775807L) {
                    i15 = i3Var.l(w02.first, bVar).f6028c;
                    j11 = j13;
                    z15 = false;
                } else {
                    obj = w02.first;
                    j11 = ((Long) w02.second).longValue();
                    z15 = true;
                    i15 = -1;
                }
                z16 = i2Var.f6009e == 4;
                z17 = false;
            }
            z13 = z15;
            z11 = z16;
            z12 = z17;
            i11 = i15;
            bVar2 = bVar3;
        } else {
            i10 = -1;
            if (i2Var.f6005a.u()) {
                i12 = i3Var.e(z10);
            } else if (i3Var.f(obj) == -1) {
                Object x02 = x0(dVar, bVar, i9, z10, obj, i2Var.f6005a, i3Var);
                if (x02 == null) {
                    i13 = i3Var.e(z10);
                    z14 = true;
                } else {
                    i13 = i3Var.l(x02, bVar).f6028c;
                    z14 = false;
                }
                i11 = i13;
                z12 = z14;
                j11 = j13;
                bVar2 = bVar3;
                z11 = false;
                z13 = false;
            } else if (j13 == -9223372036854775807L) {
                i12 = i3Var.l(obj, bVar).f6028c;
            } else if (R) {
                bVar2 = bVar3;
                i2Var.f6005a.l(bVar2.f58906a, bVar);
                if (i2Var.f6005a.r(bVar.f6028c, dVar).f6055o == i2Var.f6005a.f(bVar2.f58906a)) {
                    Pair<Object, Long> n9 = i3Var.n(dVar, bVar, i3Var.l(obj, bVar).f6028c, j13 + bVar.q());
                    obj = n9.first;
                    j11 = ((Long) n9.second).longValue();
                } else {
                    j11 = j13;
                }
                i11 = -1;
                z11 = false;
                z12 = false;
                z13 = true;
            } else {
                bVar2 = bVar3;
                j11 = j13;
                i11 = -1;
                z11 = false;
                z12 = false;
                z13 = false;
            }
            i11 = i12;
            j11 = j13;
            bVar2 = bVar3;
            z11 = false;
            z12 = false;
            z13 = false;
        }
        if (i11 != i10) {
            Pair<Object, Long> n10 = i3Var.n(dVar, bVar, i11, -9223372036854775807L);
            obj = n10.first;
            j11 = ((Long) n10.second).longValue();
            b2Var2 = b2Var;
            j12 = -9223372036854775807L;
        } else {
            b2Var2 = b2Var;
            j12 = j11;
        }
        q.b B = b2Var2.B(i3Var, obj, j11);
        int i16 = B.f58910e;
        z18 = (!bVar2.f58906a.equals(obj) || bVar2.b() || B.b() || !(i16 == i10 || ((i14 = bVar2.f58910e) != i10 && i16 >= i14))) ? false : false;
        Object obj2 = bVar2;
        boolean N = N(R, bVar2, j13, B, i3Var.l(obj, bVar), j12);
        if (z18 || N) {
            B = obj2;
        }
        if (B.b()) {
            if (B.equals(obj2)) {
                j11 = i2Var.f6022r;
            } else {
                i3Var.l(B.f58906a, bVar);
                j11 = B.f58908c == bVar.n(B.f58907b) ? bVar.j() : 0L;
            }
        }
        return new g(B, j11, j12, z11, z12, z13);
    }

    private static k1[] w(h3.s sVar) {
        int length = sVar != null ? sVar.length() : 0;
        k1[] k1VarArr = new k1[length];
        for (int i9 = 0; i9 < length; i9++) {
            k1VarArr[i9] = sVar.b(i9);
        }
        return k1VarArr;
    }

    @Nullable
    private static Pair<Object, Long> w0(i3 i3Var, h hVar, boolean z10, int i9, boolean z11, i3.d dVar, i3.b bVar) {
        Pair<Object, Long> n9;
        Object x02;
        i3 i3Var2 = hVar.f5991a;
        if (i3Var.u()) {
            return null;
        }
        i3 i3Var3 = i3Var2.u() ? i3Var : i3Var2;
        try {
            n9 = i3Var3.n(dVar, bVar, hVar.f5992b, hVar.f5993c);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (i3Var.equals(i3Var3)) {
            return n9;
        }
        if (i3Var.f(n9.first) != -1) {
            return (i3Var3.l(n9.first, bVar).f6031f && i3Var3.r(bVar.f6028c, dVar).f6055o == i3Var3.f(n9.first)) ? i3Var.n(dVar, bVar, i3Var.l(n9.first, bVar).f6028c, hVar.f5993c) : n9;
        }
        if (z10 && (x02 = x0(dVar, bVar, i9, z11, n9.first, i3Var3, i3Var)) != null) {
            return i3Var.n(dVar, bVar, i3Var.l(x02, bVar).f6028c, -9223372036854775807L);
        }
        return null;
    }

    private long x(i3 i3Var, Object obj, long j10) {
        i3Var.r(i3Var.l(obj, this.f5950l).f6028c, this.f5949k);
        i3.d dVar = this.f5949k;
        if (dVar.f6046f != -9223372036854775807L && dVar.g()) {
            i3.d dVar2 = this.f5949k;
            if (dVar2.f6049i) {
                return com.google.android.exoplayer2.util.l0.w0(dVar2.c() - this.f5949k.f6046f) - (j10 + this.f5950l.q());
            }
        }
        return -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Object x0(i3.d dVar, i3.b bVar, int i9, boolean z10, Object obj, i3 i3Var, i3 i3Var2) {
        int f10 = i3Var.f(obj);
        int m10 = i3Var.m();
        int i10 = f10;
        int i11 = -1;
        for (int i12 = 0; i12 < m10 && i11 == -1; i12++) {
            i10 = i3Var.h(i10, bVar, dVar, i9, z10);
            if (i10 == -1) {
                break;
            }
            i11 = i3Var2.f(i3Var.q(i10));
        }
        if (i11 == -1) {
            return null;
        }
        return i3Var2.q(i11);
    }

    private long y() {
        y1 q10 = this.f5957s.q();
        if (q10 == null) {
            return 0L;
        }
        long l10 = q10.l();
        if (!q10.f7305d) {
            return l10;
        }
        int i9 = 0;
        while (true) {
            u2[] u2VarArr = this.f5939a;
            if (i9 >= u2VarArr.length) {
                return l10;
            }
            if (P(u2VarArr[i9]) && this.f5939a[i9].t() == q10.f7304c[i9]) {
                long u10 = this.f5939a[i9].u();
                if (u10 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                l10 = Math.max(u10, l10);
            }
            i9++;
        }
    }

    private void y0(long j10, long j11) {
        this.f5946h.j(2, j10 + j11);
    }

    private Pair<q.b, Long> z(i3 i3Var) {
        if (i3Var.u()) {
            return Pair.create(i2.k(), 0L);
        }
        Pair<Object, Long> n9 = i3Var.n(this.f5949k, this.f5950l, i3Var.e(this.F), -9223372036854775807L);
        q.b B = this.f5957s.B(i3Var, n9.first, 0L);
        long longValue = ((Long) n9.second).longValue();
        if (B.b()) {
            i3Var.l(B.f58906a, this.f5950l);
            longValue = B.f58908c == this.f5950l.n(B.f58907b) ? this.f5950l.j() : 0L;
        }
        return Pair.create(B, Long.valueOf(longValue));
    }

    public Looper A() {
        return this.f5948j;
    }

    public void L0(List<e2.c> list, int i9, long j10, v2.k0 k0Var) {
        this.f5946h.e(17, new b(list, k0Var, i9, j10, null)).a();
    }

    public void O0(boolean z10, int i9) {
        this.f5946h.g(1, z10 ? 1 : 0, i9).a();
    }

    public void Q0(k2 k2Var) {
        this.f5946h.e(4, k2Var).a();
    }

    public void S0(int i9) {
        this.f5946h.g(11, i9, 0).a();
    }

    public void V0(boolean z10) {
        this.f5946h.g(12, z10 ? 1 : 0, 0).a();
    }

    @Override // h3.b0.a
    public void b() {
        this.f5946h.i(10);
    }

    @Override // com.google.android.exoplayer2.e2.d
    public void c() {
        this.f5946h.i(22);
    }

    @Override // v2.n.a
    public void d(v2.n nVar) {
        this.f5946h.e(8, nVar).a();
    }

    @Override // com.google.android.exoplayer2.p2.a
    public synchronized void e(p2 p2Var) {
        if (!this.f5964z && this.f5947i.isAlive()) {
            this.f5946h.e(14, p2Var).a();
            return;
        }
        com.google.android.exoplayer2.util.r.i("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        p2Var.k(false);
    }

    public void f1() {
        this.f5946h.a(6).a();
    }

    @Override // v2.j0.a
    /* renamed from: g0 */
    public void a(v2.n nVar) {
        this.f5946h.e(9, nVar).a();
    }

    public void h0() {
        this.f5946h.a(0).a();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        y1 q10;
        int i9 = 1000;
        try {
            switch (message.what) {
                case 0:
                    i0();
                    break;
                case 1:
                    P0(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    n();
                    break;
                case 3:
                    B0((h) message.obj);
                    break;
                case 4:
                    R0((k2) message.obj);
                    break;
                case 5:
                    U0((z2) message.obj);
                    break;
                case 6:
                    g1(false, true);
                    break;
                case 7:
                    k0();
                    return true;
                case 8:
                    H((v2.n) message.obj);
                    break;
                case 9:
                    D((v2.n) message.obj);
                    break;
                case 10:
                    o0();
                    break;
                case 11:
                    T0(message.arg1);
                    break;
                case 12:
                    W0(message.arg1 != 0);
                    break;
                case 13:
                    J0(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    E0((p2) message.obj);
                    break;
                case 15:
                    G0((p2) message.obj);
                    break;
                case 16:
                    J((k2) message.obj, false);
                    break;
                case 17:
                    K0((b) message.obj);
                    break;
                case 18:
                    j((b) message.obj, message.arg1);
                    break;
                case 19:
                    c0((c) message.obj);
                    break;
                case 20:
                    l0(message.arg1, message.arg2, (v2.k0) message.obj);
                    break;
                case 21:
                    X0((v2.k0) message.obj);
                    break;
                case 22:
                    b0();
                    break;
                case 23:
                    N0(message.arg1 != 0);
                    break;
                case 24:
                    M0(message.arg1 == 1);
                    break;
                case 25:
                    k();
                    break;
                default:
                    return false;
            }
        } catch (ExoPlaybackException e10) {
            e = e10;
            if (e.type == 1 && (q10 = this.f5957s.q()) != null) {
                e = e.copyWithMediaPeriodId(q10.f7307f.f7319a);
            }
            if (e.isRecoverable && this.O == null) {
                com.google.android.exoplayer2.util.r.j("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.O = e;
                com.google.android.exoplayer2.util.n nVar = this.f5946h;
                nVar.b(nVar.e(25, e));
            } else {
                ExoPlaybackException exoPlaybackException = this.O;
                if (exoPlaybackException != null) {
                    exoPlaybackException.addSuppressed(e);
                    e = this.O;
                }
                com.google.android.exoplayer2.util.r.d("ExoPlayerImplInternal", "Playback error", e);
                g1(true, false);
                this.f5962x = this.f5962x.e(e);
            }
        } catch (ParserException e11) {
            int i10 = e11.dataType;
            if (i10 == 1) {
                i9 = e11.contentIsMalformed ? 3001 : 3003;
            } else if (i10 == 4) {
                i9 = e11.contentIsMalformed ? 3002 : 3004;
            }
            E(e11, i9);
        } catch (DrmSession.DrmSessionException e12) {
            E(e12, e12.errorCode);
        } catch (BehindLiveWindowException e13) {
            E(e13, 1002);
        } catch (DataSourceException e14) {
            E(e14, e14.reason);
        } catch (IOException e15) {
            E(e15, 2000);
        } catch (RuntimeException e16) {
            ExoPlaybackException createForUnexpected = ExoPlaybackException.createForUnexpected(e16, ((e16 instanceof IllegalStateException) || (e16 instanceof IllegalArgumentException)) ? 1004 : 1004);
            com.google.android.exoplayer2.util.r.d("ExoPlayerImplInternal", "Playback error", createForUnexpected);
            g1(true, false);
            this.f5962x = this.f5962x.e(createForUnexpected);
        }
        V();
        return true;
    }

    public synchronized boolean j0() {
        if (!this.f5964z && this.f5947i.isAlive()) {
            this.f5946h.i(7);
            o1(new com.google.common.base.w() { // from class: com.google.android.exoplayer2.f1
                @Override // com.google.common.base.w, java.util.function.Supplier
                public final Object get() {
                    Boolean S;
                    S = h1.this.S();
                    return S;
                }
            }, this.f5960v);
            return this.f5964z;
        }
        return true;
    }

    public void m0(int i9, int i10, v2.k0 k0Var) {
        this.f5946h.d(20, i9, i10, k0Var).a();
    }

    @Override // com.google.android.exoplayer2.l.a
    public void q(k2 k2Var) {
        this.f5946h.e(16, k2Var).a();
    }

    public void t(long j10) {
        this.P = j10;
    }

    public void z0(i3 i3Var, int i9, long j10) {
        this.f5946h.e(3, new h(i3Var, i9, j10)).a();
    }
}
