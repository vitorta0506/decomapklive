package v2;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.s1;
import j3.i;
import v2.c0;
import v2.d0;
import v2.q;
import v2.x;
/* loaded from: classes.dex */
public final class d0 extends v2.a implements c0.b {

    /* renamed from: h  reason: collision with root package name */
    private final s1 f58756h;

    /* renamed from: i  reason: collision with root package name */
    private final s1.h f58757i;

    /* renamed from: j  reason: collision with root package name */
    private final i.a f58758j;

    /* renamed from: k  reason: collision with root package name */
    private final x.a f58759k;

    /* renamed from: l  reason: collision with root package name */
    private final com.google.android.exoplayer2.drm.u f58760l;

    /* renamed from: m  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f58761m;

    /* renamed from: n  reason: collision with root package name */
    private final int f58762n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f58763o;

    /* renamed from: p  reason: collision with root package name */
    private long f58764p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f58765q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f58766r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private j3.b0 f58767s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends h {
        a(d0 d0Var, i3 i3Var) {
            super(i3Var);
        }

        @Override // v2.h, com.google.android.exoplayer2.i3
        public i3.b k(int i9, i3.b bVar, boolean z10) {
            super.k(i9, bVar, z10);
            bVar.f6031f = true;
            return bVar;
        }

        @Override // v2.h, com.google.android.exoplayer2.i3
        public i3.d s(int i9, i3.d dVar, long j10) {
            super.s(i9, dVar, j10);
            dVar.f6052l = true;
            return dVar;
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements q.a {

        /* renamed from: a  reason: collision with root package name */
        private final i.a f58768a;

        /* renamed from: b  reason: collision with root package name */
        private x.a f58769b;

        /* renamed from: c  reason: collision with root package name */
        private com.google.android.exoplayer2.drm.x f58770c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.android.exoplayer2.upstream.b f58771d;

        /* renamed from: e  reason: collision with root package name */
        private int f58772e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private String f58773f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private Object f58774g;

        public b(i.a aVar) {
            this(aVar, new c2.i());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ x c(c2.r rVar, a2.s1 s1Var) {
            return new v2.b(rVar);
        }

        public d0 b(s1 s1Var) {
            com.google.android.exoplayer2.util.a.e(s1Var.f6453b);
            s1.h hVar = s1Var.f6453b;
            boolean z10 = true;
            boolean z11 = hVar.f6523h == null && this.f58774g != null;
            z10 = (hVar.f6520e != null || this.f58773f == null) ? false : false;
            if (z11 && z10) {
                s1Var = s1Var.b().d(this.f58774g).b(this.f58773f).a();
            } else if (z11) {
                s1Var = s1Var.b().d(this.f58774g).a();
            } else if (z10) {
                s1Var = s1Var.b().b(this.f58773f).a();
            }
            s1 s1Var2 = s1Var;
            return new d0(s1Var2, this.f58768a, this.f58769b, this.f58770c.a(s1Var2), this.f58771d, this.f58772e, null);
        }

        public b(i.a aVar, final c2.r rVar) {
            this(aVar, new x.a() { // from class: v2.e0
                @Override // v2.x.a
                public final x a(a2.s1 s1Var) {
                    x c10;
                    c10 = d0.b.c(c2.r.this, s1Var);
                    return c10;
                }
            });
        }

        public b(i.a aVar, x.a aVar2) {
            this(aVar, aVar2, new com.google.android.exoplayer2.drm.j(), new com.google.android.exoplayer2.upstream.a(), 1048576);
        }

        public b(i.a aVar, x.a aVar2, com.google.android.exoplayer2.drm.x xVar, com.google.android.exoplayer2.upstream.b bVar, int i9) {
            this.f58768a = aVar;
            this.f58769b = aVar2;
            this.f58770c = xVar;
            this.f58771d = bVar;
            this.f58772e = i9;
        }
    }

    /* synthetic */ d0(s1 s1Var, i.a aVar, x.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.b bVar, int i9, a aVar3) {
        this(s1Var, aVar, aVar2, uVar, bVar, i9);
    }

    private void A() {
        i3 l0Var = new l0(this.f58764p, this.f58765q, false, this.f58766r, null, this.f58756h);
        if (this.f58763o) {
            l0Var = new a(this, l0Var);
        }
        y(l0Var);
    }

    @Override // v2.q
    public s1 b() {
        return this.f58756h;
    }

    @Override // v2.q
    public void d(n nVar) {
        ((c0) nVar).e0();
    }

    @Override // v2.c0.b
    public void f(long j10, boolean z10, boolean z11) {
        if (j10 == -9223372036854775807L) {
            j10 = this.f58764p;
        }
        if (!this.f58763o && this.f58764p == j10 && this.f58765q == z10 && this.f58766r == z11) {
            return;
        }
        this.f58764p = j10;
        this.f58765q = z10;
        this.f58766r = z11;
        this.f58763o = false;
        A();
    }

    @Override // v2.q
    public n h(q.b bVar, j3.b bVar2, long j10) {
        j3.i a10 = this.f58758j.a();
        j3.b0 b0Var = this.f58767s;
        if (b0Var != null) {
            a10.c(b0Var);
        }
        return new c0(this.f58757i.f6516a, a10, this.f58759k.a(v()), this.f58760l, q(bVar), this.f58761m, s(bVar), this, bVar2, this.f58757i.f6520e, this.f58762n);
    }

    @Override // v2.q
    public void j() {
    }

    @Override // v2.a
    protected void x(@Nullable j3.b0 b0Var) {
        this.f58767s = b0Var;
        this.f58760l.prepare();
        this.f58760l.b((Looper) com.google.android.exoplayer2.util.a.e(Looper.myLooper()), v());
        A();
    }

    @Override // v2.a
    protected void z() {
        this.f58760l.release();
    }

    private d0(s1 s1Var, i.a aVar, x.a aVar2, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.upstream.b bVar, int i9) {
        this.f58757i = (s1.h) com.google.android.exoplayer2.util.a.e(s1Var.f6453b);
        this.f58756h = s1Var;
        this.f58758j = aVar;
        this.f58759k = aVar2;
        this.f58760l = uVar;
        this.f58761m = bVar;
        this.f58762n = i9;
        this.f58763o = true;
        this.f58764p = -9223372036854775807L;
    }
}
