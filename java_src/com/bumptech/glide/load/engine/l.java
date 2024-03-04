package com.bumptech.glide.load.engine;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.engine.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import w0.a;
/* loaded from: classes.dex */
class l<R> implements h.b<R>, a.f {

    /* renamed from: z  reason: collision with root package name */
    private static final c f4378z = new c();

    /* renamed from: a  reason: collision with root package name */
    final e f4379a;

    /* renamed from: b  reason: collision with root package name */
    private final w0.c f4380b;

    /* renamed from: c  reason: collision with root package name */
    private final p.a f4381c;

    /* renamed from: d  reason: collision with root package name */
    private final Pools.Pool<l<?>> f4382d;

    /* renamed from: e  reason: collision with root package name */
    private final c f4383e;

    /* renamed from: f  reason: collision with root package name */
    private final m f4384f;

    /* renamed from: g  reason: collision with root package name */
    private final i0.a f4385g;

    /* renamed from: h  reason: collision with root package name */
    private final i0.a f4386h;

    /* renamed from: i  reason: collision with root package name */
    private final i0.a f4387i;

    /* renamed from: j  reason: collision with root package name */
    private final i0.a f4388j;

    /* renamed from: k  reason: collision with root package name */
    private final AtomicInteger f4389k;

    /* renamed from: l  reason: collision with root package name */
    private e0.b f4390l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f4391m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f4392n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f4393o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f4394p;

    /* renamed from: q  reason: collision with root package name */
    private u<?> f4395q;

    /* renamed from: r  reason: collision with root package name */
    DataSource f4396r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f4397s;

    /* renamed from: t  reason: collision with root package name */
    GlideException f4398t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f4399u;

    /* renamed from: v  reason: collision with root package name */
    p<?> f4400v;

    /* renamed from: w  reason: collision with root package name */
    private h<R> f4401w;

    /* renamed from: x  reason: collision with root package name */
    private volatile boolean f4402x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f4403y;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.request.i f4404a;

        a(com.bumptech.glide.request.i iVar) {
            this.f4404a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f4404a.f()) {
                synchronized (l.this) {
                    if (l.this.f4379a.d(this.f4404a)) {
                        l.this.f(this.f4404a);
                    }
                    l.this.i();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.bumptech.glide.request.i f4406a;

        b(com.bumptech.glide.request.i iVar) {
            this.f4406a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f4406a.f()) {
                synchronized (l.this) {
                    if (l.this.f4379a.d(this.f4406a)) {
                        l.this.f4400v.b();
                        l.this.g(this.f4406a);
                        l.this.r(this.f4406a);
                    }
                    l.this.i();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class c {
        c() {
        }

        public <R> p<R> a(u<R> uVar, boolean z10, e0.b bVar, p.a aVar) {
            return new p<>(uVar, z10, true, bVar, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final com.bumptech.glide.request.i f4408a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f4409b;

        d(com.bumptech.glide.request.i iVar, Executor executor) {
            this.f4408a = iVar;
            this.f4409b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f4408a.equals(((d) obj).f4408a);
            }
            return false;
        }

        public int hashCode() {
            return this.f4408a.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e implements Iterable<d> {

        /* renamed from: a  reason: collision with root package name */
        private final List<d> f4410a;

        e() {
            this(new ArrayList(2));
        }

        private static d g(com.bumptech.glide.request.i iVar) {
            return new d(iVar, v0.d.a());
        }

        void c(com.bumptech.glide.request.i iVar, Executor executor) {
            this.f4410a.add(new d(iVar, executor));
        }

        void clear() {
            this.f4410a.clear();
        }

        boolean d(com.bumptech.glide.request.i iVar) {
            return this.f4410a.contains(g(iVar));
        }

        e f() {
            return new e(new ArrayList(this.f4410a));
        }

        boolean isEmpty() {
            return this.f4410a.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<d> iterator() {
            return this.f4410a.iterator();
        }

        void m(com.bumptech.glide.request.i iVar) {
            this.f4410a.remove(g(iVar));
        }

        int size() {
            return this.f4410a.size();
        }

        e(List<d> list) {
            this.f4410a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(i0.a aVar, i0.a aVar2, i0.a aVar3, i0.a aVar4, m mVar, p.a aVar5, Pools.Pool<l<?>> pool) {
        this(aVar, aVar2, aVar3, aVar4, mVar, aVar5, pool, f4378z);
    }

    private i0.a j() {
        if (this.f4392n) {
            return this.f4387i;
        }
        return this.f4393o ? this.f4388j : this.f4386h;
    }

    private boolean m() {
        return this.f4399u || this.f4397s || this.f4402x;
    }

    private synchronized void q() {
        if (this.f4390l != null) {
            this.f4379a.clear();
            this.f4390l = null;
            this.f4400v = null;
            this.f4395q = null;
            this.f4399u = false;
            this.f4402x = false;
            this.f4397s = false;
            this.f4403y = false;
            this.f4401w.z(false);
            this.f4401w = null;
            this.f4398t = null;
            this.f4396r = null;
            this.f4382d.release(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(com.bumptech.glide.request.i iVar, Executor executor) {
        this.f4380b.c();
        this.f4379a.c(iVar, executor);
        boolean z10 = true;
        if (this.f4397s) {
            k(1);
            executor.execute(new b(iVar));
        } else if (this.f4399u) {
            k(1);
            executor.execute(new a(iVar));
        } else {
            if (this.f4402x) {
                z10 = false;
            }
            v0.j.a(z10, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.h.b
    public void b(u<R> uVar, DataSource dataSource, boolean z10) {
        synchronized (this) {
            this.f4395q = uVar;
            this.f4396r = dataSource;
            this.f4403y = z10;
        }
        o();
    }

    @Override // com.bumptech.glide.load.engine.h.b
    public void c(GlideException glideException) {
        synchronized (this) {
            this.f4398t = glideException;
        }
        n();
    }

    @Override // w0.a.f
    @NonNull
    public w0.c d() {
        return this.f4380b;
    }

    @Override // com.bumptech.glide.load.engine.h.b
    public void e(h<?> hVar) {
        j().execute(hVar);
    }

    @GuardedBy("this")
    void f(com.bumptech.glide.request.i iVar) {
        try {
            iVar.c(this.f4398t);
        } catch (Throwable th2) {
            throw new com.bumptech.glide.load.engine.b(th2);
        }
    }

    @GuardedBy("this")
    void g(com.bumptech.glide.request.i iVar) {
        try {
            iVar.b(this.f4400v, this.f4396r, this.f4403y);
        } catch (Throwable th2) {
            throw new com.bumptech.glide.load.engine.b(th2);
        }
    }

    void h() {
        if (m()) {
            return;
        }
        this.f4402x = true;
        this.f4401w.g();
        this.f4384f.c(this, this.f4390l);
    }

    void i() {
        p<?> pVar;
        synchronized (this) {
            this.f4380b.c();
            v0.j.a(m(), "Not yet complete!");
            int decrementAndGet = this.f4389k.decrementAndGet();
            v0.j.a(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                pVar = this.f4400v;
                q();
            } else {
                pVar = null;
            }
        }
        if (pVar != null) {
            pVar.e();
        }
    }

    synchronized void k(int i9) {
        p<?> pVar;
        v0.j.a(m(), "Not yet complete!");
        if (this.f4389k.getAndAdd(i9) == 0 && (pVar = this.f4400v) != null) {
            pVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public synchronized l<R> l(e0.b bVar, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f4390l = bVar;
        this.f4391m = z10;
        this.f4392n = z11;
        this.f4393o = z12;
        this.f4394p = z13;
        return this;
    }

    void n() {
        synchronized (this) {
            this.f4380b.c();
            if (this.f4402x) {
                q();
            } else if (!this.f4379a.isEmpty()) {
                if (!this.f4399u) {
                    this.f4399u = true;
                    e0.b bVar = this.f4390l;
                    e f10 = this.f4379a.f();
                    k(f10.size() + 1);
                    this.f4384f.b(this, bVar, null);
                    Iterator<d> it = f10.iterator();
                    while (it.hasNext()) {
                        d next = it.next();
                        next.f4409b.execute(new a(next.f4408a));
                    }
                    i();
                    return;
                }
                throw new IllegalStateException("Already failed once");
            } else {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
        }
    }

    void o() {
        synchronized (this) {
            this.f4380b.c();
            if (this.f4402x) {
                this.f4395q.recycle();
                q();
            } else if (!this.f4379a.isEmpty()) {
                if (!this.f4397s) {
                    this.f4400v = this.f4383e.a(this.f4395q, this.f4391m, this.f4390l, this.f4381c);
                    this.f4397s = true;
                    e f10 = this.f4379a.f();
                    k(f10.size() + 1);
                    this.f4384f.b(this, this.f4390l, this.f4400v);
                    Iterator<d> it = f10.iterator();
                    while (it.hasNext()) {
                        d next = it.next();
                        next.f4409b.execute(new b(next.f4408a));
                    }
                    i();
                    return;
                }
                throw new IllegalStateException("Already have resource");
            } else {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p() {
        return this.f4394p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void r(com.bumptech.glide.request.i iVar) {
        boolean z10;
        this.f4380b.c();
        this.f4379a.m(iVar);
        if (this.f4379a.isEmpty()) {
            h();
            if (!this.f4397s && !this.f4399u) {
                z10 = false;
                if (z10 && this.f4389k.get() == 0) {
                    q();
                }
            }
            z10 = true;
            if (z10) {
                q();
            }
        }
    }

    public synchronized void s(h<R> hVar) {
        this.f4401w = hVar;
        (hVar.L() ? this.f4385g : j()).execute(hVar);
    }

    @VisibleForTesting
    l(i0.a aVar, i0.a aVar2, i0.a aVar3, i0.a aVar4, m mVar, p.a aVar5, Pools.Pool<l<?>> pool, c cVar) {
        this.f4379a = new e();
        this.f4380b = w0.c.a();
        this.f4389k = new AtomicInteger();
        this.f4385g = aVar;
        this.f4386h = aVar2;
        this.f4387i = aVar3;
        this.f4388j = aVar4;
        this.f4384f = mVar;
        this.f4381c = aVar5;
        this.f4382d = pool;
        this.f4383e = cVar;
    }
}
