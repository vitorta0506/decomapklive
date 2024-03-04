package v2;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.i3;
import java.io.IOException;
import java.util.HashMap;
import v2.q;
import v2.w;
/* loaded from: classes.dex */
public abstract class e<T> extends v2.a {

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<T, b<T>> f58775h = new HashMap<>();
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Handler f58776i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private j3.b0 f58777j;

    /* loaded from: classes.dex */
    private final class a implements w, com.google.android.exoplayer2.drm.s {

        /* renamed from: a  reason: collision with root package name */
        private final T f58778a;

        /* renamed from: b  reason: collision with root package name */
        private w.a f58779b;

        /* renamed from: c  reason: collision with root package name */
        private s.a f58780c;

        public a(T t10) {
            this.f58779b = e.this.s(null);
            this.f58780c = e.this.q(null);
            this.f58778a = t10;
        }

        private boolean a(int i9, @Nullable q.b bVar) {
            q.b bVar2;
            if (bVar != null) {
                bVar2 = e.this.B(this.f58778a, bVar);
                if (bVar2 == null) {
                    return false;
                }
            } else {
                bVar2 = null;
            }
            int D = e.this.D(this.f58778a, i9);
            w.a aVar = this.f58779b;
            if (aVar.f58944a != D || !com.google.android.exoplayer2.util.l0.c(aVar.f58945b, bVar2)) {
                this.f58779b = e.this.r(D, bVar2, 0L);
            }
            s.a aVar2 = this.f58780c;
            if (aVar2.f5842a == D && com.google.android.exoplayer2.util.l0.c(aVar2.f5843b, bVar2)) {
                return true;
            }
            this.f58780c = e.this.p(D, bVar2);
            return true;
        }

        private m g(m mVar) {
            long C = e.this.C(this.f58778a, mVar.f58900f);
            long C2 = e.this.C(this.f58778a, mVar.f58901g);
            return (C == mVar.f58900f && C2 == mVar.f58901g) ? mVar : new m(mVar.f58895a, mVar.f58896b, mVar.f58897c, mVar.f58898d, mVar.f58899e, C, C2);
        }

        @Override // v2.w
        public void D(int i9, @Nullable q.b bVar, j jVar, m mVar) {
            if (a(i9, bVar)) {
                this.f58779b.r(jVar, g(mVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void E(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f58780c.j();
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void P(int i9, @Nullable q.b bVar, int i10) {
            if (a(i9, bVar)) {
                this.f58780c.k(i10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void Q(int i9, @Nullable q.b bVar, Exception exc) {
            if (a(i9, bVar)) {
                this.f58780c.l(exc);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void a0(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f58780c.m();
            }
        }

        @Override // v2.w
        public void c0(int i9, @Nullable q.b bVar, m mVar) {
            if (a(i9, bVar)) {
                this.f58779b.i(g(mVar));
            }
        }

        @Override // v2.w
        public void d0(int i9, @Nullable q.b bVar, j jVar, m mVar, IOException iOException, boolean z10) {
            if (a(i9, bVar)) {
                this.f58779b.t(jVar, g(mVar), iOException, z10);
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void e0(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f58780c.h();
            }
        }

        @Override // v2.w
        public void i0(int i9, @Nullable q.b bVar, j jVar, m mVar) {
            if (a(i9, bVar)) {
                this.f58779b.v(jVar, g(mVar));
            }
        }

        @Override // com.google.android.exoplayer2.drm.s
        public /* synthetic */ void k0(int i9, q.b bVar) {
            com.google.android.exoplayer2.drm.l.a(this, i9, bVar);
        }

        @Override // com.google.android.exoplayer2.drm.s
        public void l0(int i9, @Nullable q.b bVar) {
            if (a(i9, bVar)) {
                this.f58780c.i();
            }
        }

        @Override // v2.w
        public void r(int i9, @Nullable q.b bVar, j jVar, m mVar) {
            if (a(i9, bVar)) {
                this.f58779b.p(jVar, g(mVar));
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final q f58782a;

        /* renamed from: b  reason: collision with root package name */
        public final q.c f58783b;

        /* renamed from: c  reason: collision with root package name */
        public final e<T>.a f58784c;

        public b(q qVar, q.c cVar, e<T>.a aVar) {
            this.f58782a = qVar;
            this.f58783b = cVar;
            this.f58784c = aVar;
        }
    }

    @Nullable
    protected abstract q.b B(T t10, q.b bVar);

    protected long C(T t10, long j10) {
        return j10;
    }

    protected int D(T t10, int i9) {
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: F */
    public abstract void E(T t10, q qVar, i3 i3Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void G(final T t10, q qVar) {
        com.google.android.exoplayer2.util.a.a(!this.f58775h.containsKey(t10));
        q.c cVar = new q.c() { // from class: v2.d
            @Override // v2.q.c
            public final void a(q qVar2, i3 i3Var) {
                e.this.E(t10, qVar2, i3Var);
            }
        };
        a aVar = new a(t10);
        this.f58775h.put(t10, new b<>(qVar, cVar, aVar));
        qVar.e((Handler) com.google.android.exoplayer2.util.a.e(this.f58776i), aVar);
        qVar.g((Handler) com.google.android.exoplayer2.util.a.e(this.f58776i), aVar);
        qVar.k(cVar, this.f58777j, v());
        if (w()) {
            return;
        }
        qVar.c(cVar);
    }

    @Override // v2.a
    @CallSuper
    protected void t() {
        for (b<T> bVar : this.f58775h.values()) {
            bVar.f58782a.c(bVar.f58783b);
        }
    }

    @Override // v2.a
    @CallSuper
    protected void u() {
        for (b<T> bVar : this.f58775h.values()) {
            bVar.f58782a.o(bVar.f58783b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v2.a
    @CallSuper
    public void x(@Nullable j3.b0 b0Var) {
        this.f58777j = b0Var;
        this.f58776i = com.google.android.exoplayer2.util.l0.u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v2.a
    @CallSuper
    public void z() {
        for (b<T> bVar : this.f58775h.values()) {
            bVar.f58782a.a(bVar.f58783b);
            bVar.f58782a.n(bVar.f58784c);
            bVar.f58782a.i(bVar.f58784c);
        }
        this.f58775h.clear();
    }
}
