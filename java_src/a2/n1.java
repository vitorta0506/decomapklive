package a2;

import a2.c;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.util.q;
import com.google.android.exoplayer2.x1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.n5;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import v2.q;
/* loaded from: classes.dex */
public class n1 implements a2.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f461a;

    /* renamed from: b  reason: collision with root package name */
    private final i3.b f462b;

    /* renamed from: c  reason: collision with root package name */
    private final i3.d f463c;

    /* renamed from: d  reason: collision with root package name */
    private final a f464d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseArray<c.a> f465e;

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.exoplayer2.util.q<c> f466f;

    /* renamed from: g  reason: collision with root package name */
    private l2 f467g;

    /* renamed from: h  reason: collision with root package name */
    private com.google.android.exoplayer2.util.n f468h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f469i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final i3.b f470a;

        /* renamed from: b  reason: collision with root package name */
        private ImmutableList<q.b> f471b = ImmutableList.of();

        /* renamed from: c  reason: collision with root package name */
        private ImmutableMap<q.b, i3> f472c = ImmutableMap.of();
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private q.b f473d;

        /* renamed from: e  reason: collision with root package name */
        private q.b f474e;

        /* renamed from: f  reason: collision with root package name */
        private q.b f475f;

        public a(i3.b bVar) {
            this.f470a = bVar;
        }

        private void b(ImmutableMap.b<q.b, i3> bVar, @Nullable q.b bVar2, i3 i3Var) {
            if (bVar2 == null) {
                return;
            }
            if (i3Var.f(bVar2.f58906a) != -1) {
                bVar.h(bVar2, i3Var);
                return;
            }
            i3 i3Var2 = this.f472c.get(bVar2);
            if (i3Var2 != null) {
                bVar.h(bVar2, i3Var2);
            }
        }

        @Nullable
        private static q.b c(l2 l2Var, ImmutableList<q.b> immutableList, @Nullable q.b bVar, i3.b bVar2) {
            i3 t10 = l2Var.t();
            int E = l2Var.E();
            Object q10 = t10.u() ? null : t10.q(E);
            int g10 = (l2Var.e() || t10.u()) ? -1 : t10.j(E, bVar2).g(com.google.android.exoplayer2.util.l0.w0(l2Var.getCurrentPosition()) - bVar2.q());
            for (int i9 = 0; i9 < immutableList.size(); i9++) {
                q.b bVar3 = immutableList.get(i9);
                if (i(bVar3, q10, l2Var.e(), l2Var.p(), l2Var.H(), g10)) {
                    return bVar3;
                }
            }
            if (immutableList.isEmpty() && bVar != null) {
                if (i(bVar, q10, l2Var.e(), l2Var.p(), l2Var.H(), g10)) {
                    return bVar;
                }
            }
            return null;
        }

        private static boolean i(q.b bVar, @Nullable Object obj, boolean z10, int i9, int i10, int i11) {
            if (bVar.f58906a.equals(obj)) {
                return (z10 && bVar.f58907b == i9 && bVar.f58908c == i10) || (!z10 && bVar.f58907b == -1 && bVar.f58910e == i11);
            }
            return false;
        }

        private void m(i3 i3Var) {
            ImmutableMap.b<q.b, i3> builder = ImmutableMap.builder();
            if (this.f471b.isEmpty()) {
                b(builder, this.f474e, i3Var);
                if (!com.google.common.base.l.a(this.f475f, this.f474e)) {
                    b(builder, this.f475f, i3Var);
                }
                if (!com.google.common.base.l.a(this.f473d, this.f474e) && !com.google.common.base.l.a(this.f473d, this.f475f)) {
                    b(builder, this.f473d, i3Var);
                }
            } else {
                for (int i9 = 0; i9 < this.f471b.size(); i9++) {
                    b(builder, this.f471b.get(i9), i3Var);
                }
                if (!this.f471b.contains(this.f473d)) {
                    b(builder, this.f473d, i3Var);
                }
            }
            this.f472c = builder.d();
        }

        @Nullable
        public q.b d() {
            return this.f473d;
        }

        @Nullable
        public q.b e() {
            if (this.f471b.isEmpty()) {
                return null;
            }
            return (q.b) n5.g(this.f471b);
        }

        @Nullable
        public i3 f(q.b bVar) {
            return this.f472c.get(bVar);
        }

        @Nullable
        public q.b g() {
            return this.f474e;
        }

        @Nullable
        public q.b h() {
            return this.f475f;
        }

        public void j(l2 l2Var) {
            this.f473d = c(l2Var, this.f471b, this.f474e, this.f470a);
        }

        public void k(List<q.b> list, @Nullable q.b bVar, l2 l2Var) {
            this.f471b = ImmutableList.copyOf((Collection) list);
            if (!list.isEmpty()) {
                this.f474e = list.get(0);
                this.f475f = (q.b) com.google.android.exoplayer2.util.a.e(bVar);
            }
            if (this.f473d == null) {
                this.f473d = c(l2Var, this.f471b, this.f474e, this.f470a);
            }
            m(l2Var.t());
        }

        public void l(l2 l2Var) {
            this.f473d = c(l2Var, this.f471b, this.f474e, this.f470a);
            m(l2Var.t());
        }
    }

    public n1(com.google.android.exoplayer2.util.d dVar) {
        this.f461a = (com.google.android.exoplayer2.util.d) com.google.android.exoplayer2.util.a.e(dVar);
        this.f466f = new com.google.android.exoplayer2.util.q<>(com.google.android.exoplayer2.util.l0.K(), dVar, new q.b() { // from class: a2.h1
            @Override // com.google.android.exoplayer2.util.q.b
            public final void a(Object obj, com.google.android.exoplayer2.util.l lVar) {
                n1.F1((c) obj, lVar);
            }
        });
        i3.b bVar = new i3.b();
        this.f462b = bVar;
        this.f463c = new i3.d();
        this.f464d = new a(bVar);
        this.f465e = new SparseArray<>();
    }

    private c.a A1() {
        return z1(this.f464d.e());
    }

    private c.a B1(int i9, @Nullable q.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.f467g);
        if (bVar != null) {
            if (this.f464d.f(bVar) != null) {
                return z1(bVar);
            }
            return y1(i3.f6023a, i9, bVar);
        }
        i3 t10 = this.f467g.t();
        if (!(i9 < t10.t())) {
            t10 = i3.f6023a;
        }
        return y1(t10, i9, null);
    }

    private c.a C1() {
        return z1(this.f464d.g());
    }

    private c.a D1() {
        return z1(this.f464d.h());
    }

    private c.a E1(@Nullable PlaybackException playbackException) {
        v2.o oVar;
        if ((playbackException instanceof ExoPlaybackException) && (oVar = ((ExoPlaybackException) playbackException).mediaPeriodId) != null) {
            return z1(new q.b(oVar));
        }
        return x1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F1(c cVar, com.google.android.exoplayer2.util.l lVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void F2(c.a aVar, String str, long j10, long j11, c cVar) {
        cVar.m(aVar, str, j10);
        cVar.c0(aVar, str, j11, j10);
        cVar.d0(aVar, 2, str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void H2(c.a aVar, b2.e eVar, c cVar) {
        cVar.R(aVar, eVar);
        cVar.h(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I1(c.a aVar, String str, long j10, long j11, c cVar) {
        cVar.j(aVar, str, j10);
        cVar.S(aVar, str, j11, j10);
        cVar.d0(aVar, 1, str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void I2(c.a aVar, b2.e eVar, c cVar) {
        cVar.J(aVar, eVar);
        cVar.s0(aVar, 2, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K1(c.a aVar, b2.e eVar, c cVar) {
        cVar.x0(aVar, eVar);
        cVar.h(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void K2(c.a aVar, com.google.android.exoplayer2.k1 k1Var, b2.g gVar, c cVar) {
        cVar.A(aVar, k1Var);
        cVar.Q(aVar, k1Var, gVar);
        cVar.W(aVar, 2, k1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L1(c.a aVar, b2.e eVar, c cVar) {
        cVar.p(aVar, eVar);
        cVar.s0(aVar, 1, eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L2(c.a aVar, k3.y yVar, c cVar) {
        cVar.y(aVar, yVar);
        cVar.u0(aVar, yVar.f53631a, yVar.f53632b, yVar.f53633c, yVar.f53634d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M1(c.a aVar, com.google.android.exoplayer2.k1 k1Var, b2.g gVar, c cVar) {
        cVar.g0(aVar, k1Var);
        cVar.O(aVar, k1Var, gVar);
        cVar.W(aVar, 1, k1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N2(l2 l2Var, c cVar, com.google.android.exoplayer2.util.l lVar) {
        cVar.u(l2Var, new c.b(lVar, this.f465e));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O2() {
        final c.a x12 = x1();
        P2(x12, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_WATERMARK, new q.a() { // from class: a2.o
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).w(c.a.this);
            }
        });
        this.f466f.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a2(c.a aVar, int i9, c cVar) {
        cVar.j0(aVar);
        cVar.f(aVar, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e2(c.a aVar, boolean z10, c cVar) {
        cVar.a(aVar, z10);
        cVar.L(aVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u2(c.a aVar, int i9, l2.e eVar, l2.e eVar2, c cVar) {
        cVar.I(aVar, i9);
        cVar.Y(aVar, eVar, eVar2, i9);
    }

    private c.a z1(@Nullable q.b bVar) {
        com.google.android.exoplayer2.util.a.e(this.f467g);
        i3 f10 = bVar == null ? null : this.f464d.f(bVar);
        if (bVar != null && f10 != null) {
            return y1(f10, f10.l(bVar.f58906a, this.f462b).f6028c, bVar);
        }
        int M = this.f467g.M();
        i3 t10 = this.f467g.t();
        if (!(M < t10.t())) {
            t10 = i3.f6023a;
        }
        return y1(t10, M, null);
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void A(final int i9) {
        final c.a x12 = x1();
        P2(x12, 6, new q.a() { // from class: a2.e
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).b(c.a.this, i9);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void B(boolean z10) {
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void C(final l2.b bVar) {
        final c.a x12 = x1();
        P2(x12, 13, new q.a() { // from class: a2.c0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).d(c.a.this, bVar);
            }
        });
    }

    @Override // v2.w
    public final void D(int i9, @Nullable q.b bVar, final v2.j jVar, final v2.m mVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1001, new q.a() { // from class: a2.s0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).r(c.a.this, jVar, mVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void E(int i9, @Nullable q.b bVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1025, new q.a() { // from class: a2.g1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).l(c.a.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void F(i3 i3Var, final int i9) {
        this.f464d.l((l2) com.google.android.exoplayer2.util.a.e(this.f467g));
        final c.a x12 = x1();
        P2(x12, 0, new q.a() { // from class: a2.f
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).s(c.a.this, i9);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void G(final int i9) {
        final c.a x12 = x1();
        P2(x12, 4, new q.a() { // from class: a2.m1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).C(c.a.this, i9);
            }
        });
    }

    @Override // j3.d.a
    public final void H(final int i9, final long j10, final long j11) {
        final c.a A1 = A1();
        P2(A1, 1006, new q.a() { // from class: a2.i
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).e0(c.a.this, i9, j10, j11);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void I(final com.google.android.exoplayer2.o oVar) {
        final c.a x12 = x1();
        P2(x12, 29, new q.a() { // from class: a2.t
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).k(c.a.this, oVar);
            }
        });
    }

    @Override // a2.a
    public final void J() {
        if (this.f469i) {
            return;
        }
        final c.a x12 = x1();
        this.f469i = true;
        P2(x12, -1, new q.a() { // from class: a2.j1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).h0(c.a.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void K(final x1 x1Var) {
        final c.a x12 = x1();
        P2(x12, 14, new q.a() { // from class: a2.x
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).n(c.a.this, x1Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void L(final boolean z10) {
        final c.a x12 = x1();
        P2(x12, 9, new q.a() { // from class: a2.a1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).x(c.a.this, z10);
            }
        });
    }

    @Override // a2.a
    @CallSuper
    public void M(final l2 l2Var, Looper looper) {
        com.google.android.exoplayer2.util.a.f(this.f467g == null || this.f464d.f471b.isEmpty());
        this.f467g = (l2) com.google.android.exoplayer2.util.a.e(l2Var);
        this.f468h = this.f461a.d(looper, null);
        this.f466f = this.f466f.e(looper, new q.b() { // from class: a2.f1
            @Override // com.google.android.exoplayer2.util.q.b
            public final void a(Object obj, com.google.android.exoplayer2.util.l lVar) {
                n1.this.N2(l2Var, (c) obj, lVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void N(final int i9, final boolean z10) {
        final c.a x12 = x1();
        P2(x12, 30, new q.a() { // from class: a2.l
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).P(c.a.this, i9, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void O() {
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void P(int i9, @Nullable q.b bVar, final int i10) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1022, new q.a() { // from class: a2.l1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.a2(c.a.this, i10, (c) obj);
            }
        });
    }

    protected final void P2(c.a aVar, int i9, q.a<c> aVar2) {
        this.f465e.put(i9, aVar);
        this.f466f.l(i9, aVar2);
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void Q(int i9, @Nullable q.b bVar, final Exception exc) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1024, new q.a() { // from class: a2.j0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).g(c.a.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void R(final int i9, final int i10) {
        final c.a D1 = D1();
        P2(D1, 24, new q.a() { // from class: a2.g
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).t(c.a.this, i9, i10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void S(@Nullable final PlaybackException playbackException) {
        final c.a E1 = E1(playbackException);
        P2(E1, 10, new q.a() { // from class: a2.a0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).G(c.a.this, playbackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void T(final h3.z zVar) {
        final c.a x12 = x1();
        P2(x12, 19, new q.a() { // from class: a2.f0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).F(c.a.this, zVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void U(int i9) {
    }

    @Override // a2.a
    public final void V(List<q.b> list, @Nullable q.b bVar) {
        this.f464d.k(list, bVar, (l2) com.google.android.exoplayer2.util.a.e(this.f467g));
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void W(final n3 n3Var) {
        final c.a x12 = x1();
        P2(x12, 2, new q.a() { // from class: a2.d0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).N(c.a.this, n3Var);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void X(final boolean z10) {
        final c.a x12 = x1();
        P2(x12, 3, new q.a() { // from class: a2.c1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.e2(c.a.this, z10, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void Y() {
        final c.a x12 = x1();
        P2(x12, -1, new q.a() { // from class: a2.k0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).U(c.a.this);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void Z(final PlaybackException playbackException) {
        final c.a E1 = E1(playbackException);
        P2(E1, 10, new q.a() { // from class: a2.y
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).t0(c.a.this, playbackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void a(final boolean z10) {
        final c.a D1 = D1();
        P2(D1, 23, new q.a() { // from class: a2.b1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).T(c.a.this, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void a0(int i9, @Nullable q.b bVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_SUBTITLE, new q.a() { // from class: a2.d
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).X(c.a.this);
            }
        });
    }

    @Override // a2.a
    public final void b(final Exception exc) {
        final c.a D1 = D1();
        P2(D1, 1014, new q.a() { // from class: a2.i0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).D(c.a.this, exc);
            }
        });
    }

    @Override // a2.a
    @CallSuper
    public void b0(c cVar) {
        com.google.android.exoplayer2.util.a.e(cVar);
        this.f466f.c(cVar);
    }

    @Override // a2.a
    public final void c(final String str) {
        final c.a D1 = D1();
        P2(D1, 1019, new q.a() { // from class: a2.m0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).c(c.a.this, str);
            }
        });
    }

    @Override // v2.w
    public final void c0(int i9, @Nullable q.b bVar, final v2.m mVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1004, new q.a() { // from class: a2.x0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).a0(c.a.this, mVar);
            }
        });
    }

    @Override // a2.a
    public final void d(final String str, final long j10, final long j11) {
        final c.a D1 = D1();
        P2(D1, 1016, new q.a() { // from class: a2.p0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.F2(c.a.this, str, j11, j10, (c) obj);
            }
        });
    }

    @Override // v2.w
    public final void d0(int i9, @Nullable q.b bVar, final v2.j jVar, final v2.m mVar, final IOException iOException, final boolean z10) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1003, new q.a() { // from class: a2.w0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).H(c.a.this, jVar, mVar, iOException, z10);
            }
        });
    }

    @Override // a2.a
    public final void e(final String str) {
        final c.a D1 = D1();
        P2(D1, 1012, new q.a() { // from class: a2.n0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).i(c.a.this, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void e0(int i9, @Nullable q.b bVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER, new q.a() { // from class: a2.z
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).p0(c.a.this);
            }
        });
    }

    @Override // a2.a
    public final void f(final String str, final long j10, final long j11) {
        final c.a D1 = D1();
        P2(D1, 1008, new q.a() { // from class: a2.o0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.I1(c.a.this, str, j11, j10, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void f0(l2 l2Var, l2.c cVar) {
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void g(final Metadata metadata) {
        final c.a x12 = x1();
        P2(x12, 28, new q.a() { // from class: a2.e0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).z(c.a.this, metadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void g0(final boolean z10, final int i9) {
        final c.a x12 = x1();
        P2(x12, -1, new q.a() { // from class: a2.e1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).o(c.a.this, z10, i9);
            }
        });
    }

    @Override // a2.a
    public final void h(final com.google.android.exoplayer2.k1 k1Var, @Nullable final b2.g gVar) {
        final c.a D1 = D1();
        P2(D1, 1009, new q.a() { // from class: a2.v
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.M1(c.a.this, k1Var, gVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void h0(@Nullable final com.google.android.exoplayer2.s1 s1Var, final int i9) {
        final c.a x12 = x1();
        P2(x12, 1, new q.a() { // from class: a2.w
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).b0(c.a.this, s1Var, i9);
            }
        });
    }

    @Override // a2.a
    public final void i(final b2.e eVar) {
        final c.a D1 = D1();
        P2(D1, 1007, new q.a() { // from class: a2.r
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.L1(c.a.this, eVar, (c) obj);
            }
        });
    }

    @Override // v2.w
    public final void i0(int i9, @Nullable q.b bVar, final v2.j jVar, final v2.m mVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1000, new q.a() { // from class: a2.u0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).M(c.a.this, jVar, mVar);
            }
        });
    }

    @Override // a2.a
    public final void j(final com.google.android.exoplayer2.k1 k1Var, @Nullable final b2.g gVar) {
        final c.a D1 = D1();
        P2(D1, 1017, new q.a() { // from class: a2.u
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.K2(c.a.this, k1Var, gVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void j0(final boolean z10, final int i9) {
        final c.a x12 = x1();
        P2(x12, 5, new q.a() { // from class: a2.d1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).Z(c.a.this, z10, i9);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void k(final x2.e eVar) {
        final c.a x12 = x1();
        P2(x12, 27, new q.a() { // from class: a2.y0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).v(c.a.this, eVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public /* synthetic */ void k0(int i9, q.b bVar) {
        com.google.android.exoplayer2.drm.l.a(this, i9, bVar);
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void l(final List<x2.b> list) {
        final c.a x12 = x1();
        P2(x12, 27, new q.a() { // from class: a2.q0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).V(c.a.this, list);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.s
    public final void l0(int i9, @Nullable q.b bVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_ANIMATEDPASTER, new q.a() { // from class: a2.v0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).r0(c.a.this);
            }
        });
    }

    @Override // a2.a
    public final void m(final long j10) {
        final c.a D1 = D1();
        P2(D1, 1010, new q.a() { // from class: a2.m
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).q(c.a.this, j10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public void m0(final boolean z10) {
        final c.a x12 = x1();
        P2(x12, 7, new q.a() { // from class: a2.z0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).v0(c.a.this, z10);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void n(final k3.y yVar) {
        final c.a D1 = D1();
        P2(D1, 25, new q.a() { // from class: a2.r0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.L2(c.a.this, yVar, (c) obj);
            }
        });
    }

    @Override // a2.a
    public final void o(final Exception exc) {
        final c.a D1 = D1();
        P2(D1, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_PICTURE_JOIN, new q.a() { // from class: a2.h0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).B(c.a.this, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void onRepeatModeChanged(final int i9) {
        final c.a x12 = x1();
        P2(x12, 8, new q.a() { // from class: a2.k1
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).k0(c.a.this, i9);
            }
        });
    }

    @Override // a2.a
    public final void p(final b2.e eVar) {
        final c.a C1 = C1();
        P2(C1, 1020, new q.a() { // from class: a2.p
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.H2(c.a.this, eVar, (c) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void q(final k2 k2Var) {
        final c.a x12 = x1();
        P2(x12, 12, new q.a() { // from class: a2.b0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).E(c.a.this, k2Var);
            }
        });
    }

    @Override // v2.w
    public final void r(int i9, @Nullable q.b bVar, final v2.j jVar, final v2.m mVar) {
        final c.a B1 = B1(i9, bVar);
        P2(B1, 1002, new q.a() { // from class: a2.t0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).m0(c.a.this, jVar, mVar);
            }
        });
    }

    @Override // a2.a
    @CallSuper
    public void release() {
        ((com.google.android.exoplayer2.util.n) com.google.android.exoplayer2.util.a.h(this.f468h)).h(new Runnable() { // from class: a2.i1
            @Override // java.lang.Runnable
            public final void run() {
                n1.this.O2();
            }
        });
    }

    @Override // a2.a
    public final void s(final b2.e eVar) {
        final c.a D1 = D1();
        P2(D1, 1015, new q.a() { // from class: a2.s
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.I2(c.a.this, eVar, (c) obj);
            }
        });
    }

    @Override // a2.a
    public final void t(final int i9, final long j10) {
        final c.a C1 = C1();
        P2(C1, 1018, new q.a() { // from class: a2.h
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).f0(c.a.this, i9, j10);
            }
        });
    }

    @Override // a2.a
    public final void u(final Object obj, final long j10) {
        final c.a D1 = D1();
        P2(D1, 26, new q.a() { // from class: a2.l0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj2) {
                ((c) obj2).w0(c.a.this, obj, j10);
            }
        });
    }

    @Override // a2.a
    public final void v(final Exception exc) {
        final c.a D1 = D1();
        P2(D1, 1029, new q.a() { // from class: a2.g0
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).n0(c.a.this, exc);
            }
        });
    }

    @Override // a2.a
    public final void w(final b2.e eVar) {
        final c.a C1 = C1();
        P2(C1, 1013, new q.a() { // from class: a2.q
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.K1(c.a.this, eVar, (c) obj);
            }
        });
    }

    @Override // a2.a
    public final void x(final int i9, final long j10, final long j11) {
        final c.a D1 = D1();
        P2(D1, 1011, new q.a() { // from class: a2.j
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).o0(c.a.this, i9, j10, j11);
            }
        });
    }

    protected final c.a x1() {
        return z1(this.f464d.d());
    }

    @Override // a2.a
    public final void y(final long j10, final int i9) {
        final c.a C1 = C1();
        P2(C1, 1021, new q.a() { // from class: a2.n
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                ((c) obj).e(c.a.this, j10, i9);
            }
        });
    }

    protected final c.a y1(i3 i3Var, int i9, @Nullable q.b bVar) {
        long J;
        q.b bVar2 = i3Var.u() ? null : bVar;
        long b10 = this.f461a.b();
        boolean z10 = true;
        boolean z11 = i3Var.equals(this.f467g.t()) && i9 == this.f467g.M();
        long j10 = 0;
        if (bVar2 != null && bVar2.b()) {
            if ((z11 && this.f467g.p() == bVar2.f58907b && this.f467g.H() == bVar2.f58908c) ? false : false) {
                j10 = this.f467g.getCurrentPosition();
            }
        } else if (z11) {
            J = this.f467g.J();
            return new c.a(b10, i3Var, i9, bVar2, J, this.f467g.t(), this.f467g.M(), this.f464d.d(), this.f467g.getCurrentPosition(), this.f467g.f());
        } else if (!i3Var.u()) {
            j10 = i3Var.r(i9, this.f463c).d();
        }
        J = j10;
        return new c.a(b10, i3Var, i9, bVar2, J, this.f467g.t(), this.f467g.M(), this.f464d.d(), this.f467g.getCurrentPosition(), this.f467g.f());
    }

    @Override // com.google.android.exoplayer2.l2.d
    public final void z(final l2.e eVar, final l2.e eVar2, final int i9) {
        if (i9 == 1) {
            this.f469i = false;
        }
        this.f464d.j((l2) com.google.android.exoplayer2.util.a.e(this.f467g));
        final c.a x12 = x1();
        P2(x12, 11, new q.a() { // from class: a2.k
            @Override // com.google.android.exoplayer2.util.q.a
            public final void invoke(Object obj) {
                n1.u2(c.a.this, i9, eVar, eVar2, (c) obj);
            }
        });
    }
}
