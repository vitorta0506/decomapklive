package xb;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import wb.h;
/* loaded from: classes4.dex */
public final class e<TResult> extends wb.f<TResult> {

    /* renamed from: b  reason: collision with root package name */
    private boolean f59664b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f59665c;

    /* renamed from: d  reason: collision with root package name */
    private TResult f59666d;

    /* renamed from: e  reason: collision with root package name */
    private Exception f59667e;

    /* renamed from: a  reason: collision with root package name */
    private final Object f59663a = new Object();

    /* renamed from: f  reason: collision with root package name */
    private List<wb.b<TResult>> f59668f = new ArrayList();

    private wb.f<TResult> i(wb.b<TResult> bVar) {
        boolean g10;
        synchronized (this.f59663a) {
            g10 = g();
            if (!g10) {
                this.f59668f.add(bVar);
            }
        }
        if (g10) {
            bVar.onComplete(this);
        }
        return this;
    }

    private void o() {
        synchronized (this.f59663a) {
            for (wb.b<TResult> bVar : this.f59668f) {
                try {
                    bVar.onComplete(this);
                } catch (RuntimeException e10) {
                    throw e10;
                } catch (Exception e11) {
                    throw new RuntimeException(e11);
                }
            }
            this.f59668f = null;
        }
    }

    @Override // wb.f
    public final wb.f<TResult> a(wb.c<TResult> cVar) {
        return l(h.b(), cVar);
    }

    @Override // wb.f
    public final wb.f<TResult> b(wb.d dVar) {
        return m(h.b(), dVar);
    }

    @Override // wb.f
    public final wb.f<TResult> c(wb.e<TResult> eVar) {
        return n(h.b(), eVar);
    }

    @Override // wb.f
    public final Exception d() {
        Exception exc;
        synchronized (this.f59663a) {
            exc = this.f59667e;
        }
        return exc;
    }

    @Override // wb.f
    public final TResult e() {
        TResult tresult;
        synchronized (this.f59663a) {
            if (this.f59667e != null) {
                throw new RuntimeException(this.f59667e);
            }
            tresult = this.f59666d;
        }
        return tresult;
    }

    @Override // wb.f
    public final boolean f() {
        return this.f59665c;
    }

    @Override // wb.f
    public final boolean g() {
        boolean z10;
        synchronized (this.f59663a) {
            z10 = this.f59664b;
        }
        return z10;
    }

    @Override // wb.f
    public final boolean h() {
        boolean z10;
        synchronized (this.f59663a) {
            z10 = this.f59664b && !f() && this.f59667e == null;
        }
        return z10;
    }

    public final void j(Exception exc) {
        synchronized (this.f59663a) {
            if (this.f59664b) {
                return;
            }
            this.f59664b = true;
            this.f59667e = exc;
            this.f59663a.notifyAll();
            o();
        }
    }

    public final void k(TResult tresult) {
        synchronized (this.f59663a) {
            if (this.f59664b) {
                return;
            }
            this.f59664b = true;
            this.f59666d = tresult;
            this.f59663a.notifyAll();
            o();
        }
    }

    public final wb.f<TResult> l(Executor executor, wb.c<TResult> cVar) {
        return i(new b(executor, cVar));
    }

    public final wb.f<TResult> m(Executor executor, wb.d dVar) {
        return i(new c(executor, dVar));
    }

    public final wb.f<TResult> n(Executor executor, wb.e<TResult> eVar) {
        return i(new d(executor, eVar));
    }
}
