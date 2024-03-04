package com.google.android.exoplayer2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import v2.k0;
import v2.q;
import v2.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e2 {

    /* renamed from: a  reason: collision with root package name */
    private final a2.s1 f5855a;

    /* renamed from: e  reason: collision with root package name */
    private final d f5859e;

    /* renamed from: f  reason: collision with root package name */
    private final w.a f5860f;

    /* renamed from: g  reason: collision with root package name */
    private final s.a f5861g;

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<c, b> f5862h;

    /* renamed from: i  reason: collision with root package name */
    private final Set<c> f5863i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f5865k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private j3.b0 f5866l;

    /* renamed from: j  reason: collision with root package name */
    private v2.k0 f5864j = new k0.a(0);

    /* renamed from: c  reason: collision with root package name */
    private final IdentityHashMap<v2.n, c> f5857c = new IdentityHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final Map<Object, c> f5858d = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f5856b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a implements v2.w, com.google.android.exoplayer2.drm.s {

        /* renamed from: a  reason: collision with root package name */
        private final c f5867a;

        /* renamed from: b  reason: collision with root package name */
        private w.a f5868b;

        /* renamed from: c  reason: collision with root package name */
        private s.a f5869c;

        public a(c cVar) {
            this.f5868b = e2.this.f5860f;
            this.f5869c = e2.this.f5861g;
            this.f5867a = cVar;
        }

        private boolean a(int i9, @Nullable q.b bVar) {
            q.b bVar2;
            if (bVar != null) {
                bVar2 = e2.n(this.f5867a, bVar);
                if (bVar2 == null) {
                    return false;
                }
            } else {
                bVar2 = null;
            }
            int r10 = e2.r(this.f5867a, i9);
            w.a aVar = this.f5868b;
            if (aVar.f58944a != r10 || !com.google.android.exoplayer2.util.l0.c(aVar.f58945b, bVar2)) {
                this.f5868b = e2.this.f5860f.x(r10, bVar2, 0L);
            }
            s.a aVar2 = this.f5869c;
            if (aVar2.f5842a == r10 && com.google.android.exoplayer2.util.l0.c(aVar2.f5843b, bVar2)) {
                return true;
            }
            this.f5869c = e2.this.f5861g.u(r10, bVar2);
            return true;
        }

        @Override // v2.w
        public void D(int i9, @Nullable q.b bVar, v2.j jVar, v2.m mVar) {
            if (a(i9, bVar)) {
                this.f5868b.r(jVar, mVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void E(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f5869c.j();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void P(int i9, @Nullable q.b bVar, int i10) {
            if (a(i9, bVar)) {
                this.f5869c.k(i10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void Q(int i9, @Nullable q.b bVar, Exception exc) {
            if (a(i9, bVar)) {
                this.f5869c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void a0(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f5869c.m();
            }
        }

        @Override // v2.w
        public void c0(int i9, @Nullable q.b bVar, v2.m mVar) {
            if (a(i9, bVar)) {
                this.f5868b.i(mVar);
            }
        }

        @Override // v2.w
        public void d0(int i9, @Nullable q.b bVar, v2.j jVar, v2.m mVar, IOException iOException, boolean z10) {
            if (a(i9, bVar)) {
                this.f5868b.t(jVar, mVar, iOException, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void e0(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f5869c.h();
            }
        }

        @Override // v2.w
        public void i0(int i9, @Nullable q.b bVar, v2.j jVar, v2.m mVar) {
            if (a(i9, bVar)) {
                this.f5868b.v(jVar, mVar);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void k0(int i9, q.b bVar) {
            com.google.android.exoplayer2.drm.l.a(this, i9, bVar);
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void l0(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f5869c.i();
            }
        }

        @Override // v2.w
        public void r(int i9, @Nullable q.b bVar, v2.j jVar, v2.m mVar) {
            if (a(i9, bVar)) {
                this.f5868b.p(jVar, mVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final v2.q f5871a;

        /* renamed from: b  reason: collision with root package name */
        public final q.c f5872b;

        /* renamed from: c  reason: collision with root package name */
        public final a f5873c;

        public b(v2.q qVar, q.c cVar, a aVar) {
            this.f5871a = qVar;
            this.f5872b = cVar;
            this.f5873c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c implements c2 {

        /* renamed from: a  reason: collision with root package name */
        public final v2.l f5874a;

        /* renamed from: d  reason: collision with root package name */
        public int f5877d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f5878e;

        /* renamed from: c  reason: collision with root package name */
        public final List<q.b> f5876c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f5875b = new Object();

        public c(v2.q qVar, boolean z10) {
            this.f5874a = new v2.l(qVar, z10);
        }

        @Override // com.google.android.exoplayer2.c2
        public i3 a() {
            return this.f5874a.L();
        }

        public void b(int i9) {
            this.f5877d = i9;
            this.f5878e = false;
            this.f5876c.clear();
        }

        @Override // com.google.android.exoplayer2.c2
        public Object getUid() {
            return this.f5875b;
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void c();
    }

    public e2(d dVar, a2.a aVar, Handler handler, a2.s1 s1Var) {
        this.f5855a = s1Var;
        this.f5859e = dVar;
        w.a aVar2 = new w.a();
        this.f5860f = aVar2;
        s.a aVar3 = new s.a();
        this.f5861g = aVar3;
        this.f5862h = new HashMap<>();
        this.f5863i = new HashSet();
        aVar2.f(handler, aVar);
        aVar3.g(handler, aVar);
    }

    private void B(int i9, int i10) {
        for (int i11 = i10 - 1; i11 >= i9; i11--) {
            c remove = this.f5856b.remove(i11);
            this.f5858d.remove(remove.f5875b);
            g(i11, -remove.f5874a.L().t());
            remove.f5878e = true;
            if (this.f5865k) {
                u(remove);
            }
        }
    }

    private void g(int i9, int i10) {
        while (i9 < this.f5856b.size()) {
            this.f5856b.get(i9).f5877d += i10;
            i9++;
        }
    }

    private void j(c cVar) {
        b bVar = this.f5862h.get(cVar);
        if (bVar != null) {
            bVar.f5871a.c(bVar.f5872b);
        }
    }

    private void k() {
        Iterator<c> it = this.f5863i.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next.f5876c.isEmpty()) {
                j(next);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f5863i.add(cVar);
        b bVar = this.f5862h.get(cVar);
        if (bVar != null) {
            bVar.f5871a.o(bVar.f5872b);
        }
    }

    private static Object m(Object obj) {
        return com.google.android.exoplayer2.a.A(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static q.b n(c cVar, q.b bVar) {
        for (int i9 = 0; i9 < cVar.f5876c.size(); i9++) {
            if (cVar.f5876c.get(i9).f58909d == bVar.f58909d) {
                return bVar.c(p(cVar, bVar.f58906a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return com.google.android.exoplayer2.a.B(obj);
    }

    private static Object p(c cVar, Object obj) {
        return com.google.android.exoplayer2.a.D(cVar.f5875b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(c cVar, int i9) {
        return i9 + cVar.f5877d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(v2.q qVar, i3 i3Var) {
        this.f5859e.c();
    }

    private void u(c cVar) {
        if (cVar.f5878e && cVar.f5876c.isEmpty()) {
            b bVar = (b) com.google.android.exoplayer2.util.a.e(this.f5862h.remove(cVar));
            bVar.f5871a.a(bVar.f5872b);
            bVar.f5871a.n(bVar.f5873c);
            bVar.f5871a.i(bVar.f5873c);
            this.f5863i.remove(cVar);
        }
    }

    private void x(c cVar) {
        v2.l lVar = cVar.f5874a;
        q.c cVar2 = new q.c() { // from class: com.google.android.exoplayer2.d2
            @Override // v2.q.c
            public final void a(v2.q qVar, i3 i3Var) {
                e2.this.t(qVar, i3Var);
            }
        };
        a aVar = new a(cVar);
        this.f5862h.put(cVar, new b(lVar, cVar2, aVar));
        lVar.e(com.google.android.exoplayer2.util.l0.w(), aVar);
        lVar.g(com.google.android.exoplayer2.util.l0.w(), aVar);
        lVar.k(cVar2, this.f5866l, this.f5855a);
    }

    public i3 A(int i9, int i10, v2.k0 k0Var) {
        com.google.android.exoplayer2.util.a.a(i9 >= 0 && i9 <= i10 && i10 <= q());
        this.f5864j = k0Var;
        B(i9, i10);
        return i();
    }

    public i3 C(List<c> list, v2.k0 k0Var) {
        B(0, this.f5856b.size());
        return f(this.f5856b.size(), list, k0Var);
    }

    public i3 D(v2.k0 k0Var) {
        int q10 = q();
        if (k0Var.a() != q10) {
            k0Var = k0Var.f().h(0, q10);
        }
        this.f5864j = k0Var;
        return i();
    }

    public i3 f(int i9, List<c> list, v2.k0 k0Var) {
        if (!list.isEmpty()) {
            this.f5864j = k0Var;
            for (int i10 = i9; i10 < list.size() + i9; i10++) {
                c cVar = list.get(i10 - i9);
                if (i10 > 0) {
                    c cVar2 = this.f5856b.get(i10 - 1);
                    cVar.b(cVar2.f5877d + cVar2.f5874a.L().t());
                } else {
                    cVar.b(0);
                }
                g(i10, cVar.f5874a.L().t());
                this.f5856b.add(i10, cVar);
                this.f5858d.put(cVar.f5875b, cVar);
                if (this.f5865k) {
                    x(cVar);
                    if (this.f5857c.isEmpty()) {
                        this.f5863i.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public v2.n h(q.b bVar, j3.b bVar2, long j10) {
        Object o10 = o(bVar.f58906a);
        q.b c10 = bVar.c(m(bVar.f58906a));
        c cVar = (c) com.google.android.exoplayer2.util.a.e(this.f5858d.get(o10));
        l(cVar);
        cVar.f5876c.add(c10);
        v2.k h10 = cVar.f5874a.h(c10, bVar2, j10);
        this.f5857c.put(h10, cVar);
        k();
        return h10;
    }

    public i3 i() {
        if (this.f5856b.isEmpty()) {
            return i3.f6023a;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < this.f5856b.size(); i10++) {
            c cVar = this.f5856b.get(i10);
            cVar.f5877d = i9;
            i9 += cVar.f5874a.L().t();
        }
        return new q2(this.f5856b, this.f5864j);
    }

    public int q() {
        return this.f5856b.size();
    }

    public boolean s() {
        return this.f5865k;
    }

    public i3 v(int i9, int i10, int i11, v2.k0 k0Var) {
        com.google.android.exoplayer2.util.a.a(i9 >= 0 && i9 <= i10 && i10 <= q() && i11 >= 0);
        this.f5864j = k0Var;
        if (i9 != i10 && i9 != i11) {
            int min = Math.min(i9, i11);
            int max = Math.max(((i10 - i9) + i11) - 1, i10 - 1);
            int i12 = this.f5856b.get(min).f5877d;
            com.google.android.exoplayer2.util.l0.v0(this.f5856b, i9, i10, i11);
            while (min <= max) {
                c cVar = this.f5856b.get(min);
                cVar.f5877d = i12;
                i12 += cVar.f5874a.L().t();
                min++;
            }
            return i();
        }
        return i();
    }

    public void w(@Nullable j3.b0 b0Var) {
        com.google.android.exoplayer2.util.a.f(!this.f5865k);
        this.f5866l = b0Var;
        for (int i9 = 0; i9 < this.f5856b.size(); i9++) {
            c cVar = this.f5856b.get(i9);
            x(cVar);
            this.f5863i.add(cVar);
        }
        this.f5865k = true;
    }

    public void y() {
        for (b bVar : this.f5862h.values()) {
            try {
                bVar.f5871a.a(bVar.f5872b);
            } catch (RuntimeException e10) {
                com.google.android.exoplayer2.util.r.d("MediaSourceList", "Failed to release child source.", e10);
            }
            bVar.f5871a.n(bVar.f5873c);
            bVar.f5871a.i(bVar.f5873c);
        }
        this.f5862h.clear();
        this.f5863i.clear();
        this.f5865k = false;
    }

    public void z(v2.n nVar) {
        c cVar = (c) com.google.android.exoplayer2.util.a.e(this.f5857c.remove(nVar));
        cVar.f5874a.d(nVar);
        cVar.f5876c.remove(((v2.k) nVar).f58855a);
        if (!this.f5857c.isEmpty()) {
            k();
        }
        u(cVar);
    }
}
