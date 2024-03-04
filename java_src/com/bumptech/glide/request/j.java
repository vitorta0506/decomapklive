package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.d;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.load.engine.u;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class j<R> implements e, s0.j, i {
    private static final boolean E = Log.isLoggable("GlideRequest", 2);
    @GuardedBy("requestLock")
    private int A;
    @GuardedBy("requestLock")
    private int B;
    @GuardedBy("requestLock")
    private boolean C;
    @Nullable
    private RuntimeException D;

    /* renamed from: a  reason: collision with root package name */
    private int f4703a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f4704b;

    /* renamed from: c  reason: collision with root package name */
    private final w0.c f4705c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f4706d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final g<R> f4707e;

    /* renamed from: f  reason: collision with root package name */
    private final RequestCoordinator f4708f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f4709g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.e f4710h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final Object f4711i;

    /* renamed from: j  reason: collision with root package name */
    private final Class<R> f4712j;

    /* renamed from: k  reason: collision with root package name */
    private final com.bumptech.glide.request.a<?> f4713k;

    /* renamed from: l  reason: collision with root package name */
    private final int f4714l;

    /* renamed from: m  reason: collision with root package name */
    private final int f4715m;

    /* renamed from: n  reason: collision with root package name */
    private final Priority f4716n;

    /* renamed from: o  reason: collision with root package name */
    private final s0.k<R> f4717o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final List<g<R>> f4718p;

    /* renamed from: q  reason: collision with root package name */
    private final t0.g<? super R> f4719q;

    /* renamed from: r  reason: collision with root package name */
    private final Executor f4720r;
    @GuardedBy("requestLock")

    /* renamed from: s  reason: collision with root package name */
    private u<R> f4721s;
    @GuardedBy("requestLock")

    /* renamed from: t  reason: collision with root package name */
    private k.d f4722t;
    @GuardedBy("requestLock")

    /* renamed from: u  reason: collision with root package name */
    private long f4723u;

    /* renamed from: v  reason: collision with root package name */
    private volatile com.bumptech.glide.load.engine.k f4724v;
    @GuardedBy("requestLock")

    /* renamed from: w  reason: collision with root package name */
    private a f4725w;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: x  reason: collision with root package name */
    private Drawable f4726x;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: y  reason: collision with root package name */
    private Drawable f4727y;
    @Nullable
    @GuardedBy("requestLock")

    /* renamed from: z  reason: collision with root package name */
    private Drawable f4728z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    private j(Context context, com.bumptech.glide.e eVar, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, com.bumptech.glide.request.a<?> aVar, int i9, int i10, Priority priority, s0.k<R> kVar, @Nullable g<R> gVar, @Nullable List<g<R>> list, RequestCoordinator requestCoordinator, com.bumptech.glide.load.engine.k kVar2, t0.g<? super R> gVar2, Executor executor) {
        this.f4704b = E ? String.valueOf(super.hashCode()) : null;
        this.f4705c = w0.c.a();
        this.f4706d = obj;
        this.f4709g = context;
        this.f4710h = eVar;
        this.f4711i = obj2;
        this.f4712j = cls;
        this.f4713k = aVar;
        this.f4714l = i9;
        this.f4715m = i10;
        this.f4716n = priority;
        this.f4717o = kVar;
        this.f4707e = gVar;
        this.f4718p = list;
        this.f4708f = requestCoordinator;
        this.f4724v = kVar2;
        this.f4719q = gVar2;
        this.f4720r = executor;
        this.f4725w = a.PENDING;
        if (this.D == null && eVar.g().a(d.C0062d.class)) {
            this.D = new RuntimeException("Glide request origin trace");
        }
    }

    @GuardedBy("requestLock")
    private void A(u<R> uVar, R r10, DataSource dataSource, boolean z10) {
        boolean z11;
        boolean s10 = s();
        this.f4725w = a.COMPLETE;
        this.f4721s = uVar;
        if (this.f4710h.h() <= 3) {
            Log.d("Glide", "Finished loading " + r10.getClass().getSimpleName() + " from " + dataSource + " for " + this.f4711i + " with size [" + this.A + x.f19108w + this.B + "] in " + v0.f.a(this.f4723u) + " ms");
        }
        boolean z12 = true;
        this.C = true;
        try {
            List<g<R>> list = this.f4718p;
            if (list != null) {
                z11 = false;
                for (g<R> gVar : list) {
                    z11 |= gVar.a(r10, this.f4711i, this.f4717o, dataSource, s10);
                }
            } else {
                z11 = false;
            }
            g<R> gVar2 = this.f4707e;
            if (gVar2 == null || !gVar2.a(r10, this.f4711i, this.f4717o, dataSource, s10)) {
                z12 = false;
            }
            if (!(z12 | z11)) {
                this.f4717o.onResourceReady(r10, this.f4719q.a(dataSource, s10));
            }
            this.C = false;
            x();
            w0.b.f("GlideRequest", this.f4703a);
        } catch (Throwable th2) {
            this.C = false;
            throw th2;
        }
    }

    @GuardedBy("requestLock")
    private void B() {
        if (l()) {
            Drawable q10 = this.f4711i == null ? q() : null;
            if (q10 == null) {
                q10 = p();
            }
            if (q10 == null) {
                q10 = r();
            }
            this.f4717o.onLoadFailed(q10);
        }
    }

    @GuardedBy("requestLock")
    private void j() {
        if (this.C) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @GuardedBy("requestLock")
    private boolean k() {
        RequestCoordinator requestCoordinator = this.f4708f;
        return requestCoordinator == null || requestCoordinator.j(this);
    }

    @GuardedBy("requestLock")
    private boolean l() {
        RequestCoordinator requestCoordinator = this.f4708f;
        return requestCoordinator == null || requestCoordinator.b(this);
    }

    @GuardedBy("requestLock")
    private boolean m() {
        RequestCoordinator requestCoordinator = this.f4708f;
        return requestCoordinator == null || requestCoordinator.c(this);
    }

    @GuardedBy("requestLock")
    private void n() {
        j();
        this.f4705c.c();
        this.f4717o.removeCallback(this);
        k.d dVar = this.f4722t;
        if (dVar != null) {
            dVar.a();
            this.f4722t = null;
        }
    }

    private void o(Object obj) {
        List<g<R>> list = this.f4718p;
        if (list == null) {
            return;
        }
        for (g<R> gVar : list) {
            if (gVar instanceof c) {
                ((c) gVar).c(obj);
            }
        }
    }

    @GuardedBy("requestLock")
    private Drawable p() {
        if (this.f4726x == null) {
            Drawable p10 = this.f4713k.p();
            this.f4726x = p10;
            if (p10 == null && this.f4713k.o() > 0) {
                this.f4726x = t(this.f4713k.o());
            }
        }
        return this.f4726x;
    }

    @GuardedBy("requestLock")
    private Drawable q() {
        if (this.f4728z == null) {
            Drawable q10 = this.f4713k.q();
            this.f4728z = q10;
            if (q10 == null && this.f4713k.r() > 0) {
                this.f4728z = t(this.f4713k.r());
            }
        }
        return this.f4728z;
    }

    @GuardedBy("requestLock")
    private Drawable r() {
        if (this.f4727y == null) {
            Drawable w6 = this.f4713k.w();
            this.f4727y = w6;
            if (w6 == null && this.f4713k.x() > 0) {
                this.f4727y = t(this.f4713k.x());
            }
        }
        return this.f4727y;
    }

    @GuardedBy("requestLock")
    private boolean s() {
        RequestCoordinator requestCoordinator = this.f4708f;
        return requestCoordinator == null || !requestCoordinator.getRoot().a();
    }

    @GuardedBy("requestLock")
    private Drawable t(@DrawableRes int i9) {
        return m0.b.a(this.f4710h, i9, this.f4713k.C() != null ? this.f4713k.C() : this.f4709g.getTheme());
    }

    private void u(String str) {
        Log.v("GlideRequest", str + " this: " + this.f4704b);
    }

    private static int v(int i9, float f10) {
        return i9 == Integer.MIN_VALUE ? i9 : Math.round(f10 * i9);
    }

    @GuardedBy("requestLock")
    private void w() {
        RequestCoordinator requestCoordinator = this.f4708f;
        if (requestCoordinator != null) {
            requestCoordinator.d(this);
        }
    }

    @GuardedBy("requestLock")
    private void x() {
        RequestCoordinator requestCoordinator = this.f4708f;
        if (requestCoordinator != null) {
            requestCoordinator.f(this);
        }
    }

    public static <R> j<R> y(Context context, com.bumptech.glide.e eVar, Object obj, Object obj2, Class<R> cls, com.bumptech.glide.request.a<?> aVar, int i9, int i10, Priority priority, s0.k<R> kVar, g<R> gVar, @Nullable List<g<R>> list, RequestCoordinator requestCoordinator, com.bumptech.glide.load.engine.k kVar2, t0.g<? super R> gVar2, Executor executor) {
        return new j<>(context, eVar, obj, obj2, cls, aVar, i9, i10, priority, kVar, gVar, list, requestCoordinator, kVar2, gVar2, executor);
    }

    private void z(GlideException glideException, int i9) {
        boolean z10;
        this.f4705c.c();
        synchronized (this.f4706d) {
            glideException.setOrigin(this.D);
            int h10 = this.f4710h.h();
            if (h10 <= i9) {
                Log.w("Glide", "Load failed for " + this.f4711i + " with size [" + this.A + x.f19108w + this.B + "]", glideException);
                if (h10 <= 4) {
                    glideException.logRootCauses("Glide");
                }
            }
            this.f4722t = null;
            this.f4725w = a.FAILED;
            boolean z11 = true;
            this.C = true;
            List<g<R>> list = this.f4718p;
            if (list != null) {
                z10 = false;
                for (g<R> gVar : list) {
                    z10 |= gVar.b(glideException, this.f4711i, this.f4717o, s());
                }
            } else {
                z10 = false;
            }
            g<R> gVar2 = this.f4707e;
            if (gVar2 == null || !gVar2.b(glideException, this.f4711i, this.f4717o, s())) {
                z11 = false;
            }
            if (!(z10 | z11)) {
                B();
            }
            this.C = false;
            w();
            w0.b.f("GlideRequest", this.f4703a);
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean a() {
        boolean z10;
        synchronized (this.f4706d) {
            z10 = this.f4725w == a.COMPLETE;
        }
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.i
    public void b(u<?> uVar, DataSource dataSource, boolean z10) {
        this.f4705c.c();
        u<?> uVar2 = null;
        try {
            synchronized (this.f4706d) {
                try {
                    this.f4722t = null;
                    if (uVar == null) {
                        c(new GlideException("Expected to receive a Resource<R> with an object of " + this.f4712j + " inside, but instead got null."));
                        return;
                    }
                    Object obj = uVar.get();
                    try {
                        if (obj != null && this.f4712j.isAssignableFrom(obj.getClass())) {
                            if (!m()) {
                                this.f4721s = null;
                                this.f4725w = a.COMPLETE;
                                w0.b.f("GlideRequest", this.f4703a);
                                this.f4724v.k(uVar);
                                return;
                            }
                            A(uVar, obj, dataSource, z10);
                            return;
                        }
                        this.f4721s = null;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Expected to receive an object of ");
                        sb2.append(this.f4712j);
                        sb2.append(" but instead got ");
                        sb2.append(obj != null ? obj.getClass() : "");
                        sb2.append("{");
                        sb2.append(obj);
                        sb2.append("} inside Resource{");
                        sb2.append(uVar);
                        sb2.append("}.");
                        sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        c(new GlideException(sb2.toString()));
                        this.f4724v.k(uVar);
                    } catch (Throwable th2) {
                        uVar2 = uVar;
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            if (uVar2 != null) {
                this.f4724v.k(uVar2);
            }
            throw th4;
        }
    }

    @Override // com.bumptech.glide.request.i
    public void c(GlideException glideException) {
        z(glideException, 5);
    }

    @Override // com.bumptech.glide.request.e
    public void clear() {
        synchronized (this.f4706d) {
            j();
            this.f4705c.c();
            a aVar = this.f4725w;
            a aVar2 = a.CLEARED;
            if (aVar == aVar2) {
                return;
            }
            n();
            u<R> uVar = this.f4721s;
            if (uVar != null) {
                this.f4721s = null;
            } else {
                uVar = null;
            }
            if (k()) {
                this.f4717o.onLoadCleared(r());
            }
            w0.b.f("GlideRequest", this.f4703a);
            this.f4725w = aVar2;
            if (uVar != null) {
                this.f4724v.k(uVar);
            }
        }
    }

    @Override // s0.j
    public void d(int i9, int i10) {
        Object obj;
        this.f4705c.c();
        Object obj2 = this.f4706d;
        synchronized (obj2) {
            try {
                try {
                    boolean z10 = E;
                    if (z10) {
                        u("Got onSizeReady in " + v0.f.a(this.f4723u));
                    }
                    if (this.f4725w == a.WAITING_FOR_SIZE) {
                        a aVar = a.RUNNING;
                        this.f4725w = aVar;
                        float B = this.f4713k.B();
                        this.A = v(i9, B);
                        this.B = v(i10, B);
                        if (z10) {
                            u("finished setup for calling load in " + v0.f.a(this.f4723u));
                        }
                        obj = obj2;
                        try {
                            this.f4722t = this.f4724v.f(this.f4710h, this.f4711i, this.f4713k.A(), this.A, this.B, this.f4713k.z(), this.f4712j, this.f4716n, this.f4713k.n(), this.f4713k.D(), this.f4713k.Q(), this.f4713k.M(), this.f4713k.t(), this.f4713k.J(), this.f4713k.G(), this.f4713k.E(), this.f4713k.s(), this, this.f4720r);
                            if (this.f4725w != aVar) {
                                this.f4722t = null;
                            }
                            if (z10) {
                                u("finished onSizeReady in " + v0.f.a(this.f4723u));
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                obj = obj2;
            }
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean e() {
        boolean z10;
        synchronized (this.f4706d) {
            z10 = this.f4725w == a.CLEARED;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.i
    public Object f() {
        this.f4705c.c();
        return this.f4706d;
    }

    @Override // com.bumptech.glide.request.e
    public boolean g() {
        boolean z10;
        synchronized (this.f4706d) {
            z10 = this.f4725w == a.COMPLETE;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.e
    public boolean h(e eVar) {
        int i9;
        int i10;
        Object obj;
        Class<R> cls;
        com.bumptech.glide.request.a<?> aVar;
        Priority priority;
        int size;
        int i11;
        int i12;
        Object obj2;
        Class<R> cls2;
        com.bumptech.glide.request.a<?> aVar2;
        Priority priority2;
        int size2;
        if (eVar instanceof j) {
            synchronized (this.f4706d) {
                i9 = this.f4714l;
                i10 = this.f4715m;
                obj = this.f4711i;
                cls = this.f4712j;
                aVar = this.f4713k;
                priority = this.f4716n;
                List<g<R>> list = this.f4718p;
                size = list != null ? list.size() : 0;
            }
            j jVar = (j) eVar;
            synchronized (jVar.f4706d) {
                i11 = jVar.f4714l;
                i12 = jVar.f4715m;
                obj2 = jVar.f4711i;
                cls2 = jVar.f4712j;
                aVar2 = jVar.f4713k;
                priority2 = jVar.f4716n;
                List<g<R>> list2 = jVar.f4718p;
                size2 = list2 != null ? list2.size() : 0;
            }
            return i9 == i11 && i10 == i12 && v0.k.c(obj, obj2) && cls.equals(cls2) && aVar.equals(aVar2) && priority == priority2 && size == size2;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.e
    public void i() {
        synchronized (this.f4706d) {
            j();
            this.f4705c.c();
            this.f4723u = v0.f.b();
            Object obj = this.f4711i;
            if (obj == null) {
                if (v0.k.u(this.f4714l, this.f4715m)) {
                    this.A = this.f4714l;
                    this.B = this.f4715m;
                }
                z(new GlideException("Received null model"), q() == null ? 5 : 3);
                return;
            }
            a aVar = this.f4725w;
            a aVar2 = a.RUNNING;
            if (aVar != aVar2) {
                if (aVar == a.COMPLETE) {
                    b(this.f4721s, DataSource.MEMORY_CACHE, false);
                    return;
                }
                o(obj);
                this.f4703a = w0.b.b("GlideRequest");
                a aVar3 = a.WAITING_FOR_SIZE;
                this.f4725w = aVar3;
                if (v0.k.u(this.f4714l, this.f4715m)) {
                    d(this.f4714l, this.f4715m);
                } else {
                    this.f4717o.getSize(this);
                }
                a aVar4 = this.f4725w;
                if ((aVar4 == aVar2 || aVar4 == aVar3) && l()) {
                    this.f4717o.onLoadStarted(r());
                }
                if (E) {
                    u("finished run method in " + v0.f.a(this.f4723u));
                }
                return;
            }
            throw new IllegalArgumentException("Cannot restart a running request");
        }
    }

    @Override // com.bumptech.glide.request.e
    public boolean isRunning() {
        boolean z10;
        synchronized (this.f4706d) {
            a aVar = this.f4725w;
            z10 = aVar == a.RUNNING || aVar == a.WAITING_FOR_SIZE;
        }
        return z10;
    }

    @Override // com.bumptech.glide.request.e
    public void pause() {
        synchronized (this.f4706d) {
            if (isRunning()) {
                clear();
            }
        }
    }

    public String toString() {
        Object obj;
        Class<R> cls;
        synchronized (this.f4706d) {
            obj = this.f4711i;
            cls = this.f4712j;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
