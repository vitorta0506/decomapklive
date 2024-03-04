package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.engine.p;
import h0.a;
import h0.h;
import java.util.Map;
import java.util.concurrent.Executor;
import w0.a;
/* loaded from: classes.dex */
public class k implements m, h.a, p.a {

    /* renamed from: i  reason: collision with root package name */
    private static final boolean f4352i = Log.isLoggable("Engine", 2);

    /* renamed from: a  reason: collision with root package name */
    private final r f4353a;

    /* renamed from: b  reason: collision with root package name */
    private final o f4354b;

    /* renamed from: c  reason: collision with root package name */
    private final h0.h f4355c;

    /* renamed from: d  reason: collision with root package name */
    private final b f4356d;

    /* renamed from: e  reason: collision with root package name */
    private final x f4357e;

    /* renamed from: f  reason: collision with root package name */
    private final c f4358f;

    /* renamed from: g  reason: collision with root package name */
    private final a f4359g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.a f4360h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final h.e f4361a;

        /* renamed from: b  reason: collision with root package name */
        final Pools.Pool<h<?>> f4362b = w0.a.d(150, new C0067a());

        /* renamed from: c  reason: collision with root package name */
        private int f4363c;

        /* renamed from: com.bumptech.glide.load.engine.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0067a implements a.d<h<?>> {
            C0067a() {
            }

            @Override // w0.a.d
            /* renamed from: b */
            public h<?> a() {
                a aVar = a.this;
                return new h<>(aVar.f4361a, aVar.f4362b);
            }
        }

        a(h.e eVar) {
            this.f4361a = eVar;
        }

        <R> h<R> a(com.bumptech.glide.e eVar, Object obj, n nVar, e0.b bVar, int i9, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, e0.h<?>> map, boolean z10, boolean z11, boolean z12, e0.e eVar2, h.b<R> bVar2) {
            h hVar = (h) v0.j.d(this.f4362b.acquire());
            int i11 = this.f4363c;
            this.f4363c = i11 + 1;
            return hVar.q(eVar, obj, nVar, bVar, i9, i10, cls, cls2, priority, jVar, map, z10, z11, z12, eVar2, bVar2, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final i0.a f4365a;

        /* renamed from: b  reason: collision with root package name */
        final i0.a f4366b;

        /* renamed from: c  reason: collision with root package name */
        final i0.a f4367c;

        /* renamed from: d  reason: collision with root package name */
        final i0.a f4368d;

        /* renamed from: e  reason: collision with root package name */
        final m f4369e;

        /* renamed from: f  reason: collision with root package name */
        final p.a f4370f;

        /* renamed from: g  reason: collision with root package name */
        final Pools.Pool<l<?>> f4371g = w0.a.d(150, new a());

        /* loaded from: classes.dex */
        class a implements a.d<l<?>> {
            a() {
            }

            @Override // w0.a.d
            /* renamed from: b */
            public l<?> a() {
                b bVar = b.this;
                return new l<>(bVar.f4365a, bVar.f4366b, bVar.f4367c, bVar.f4368d, bVar.f4369e, bVar.f4370f, bVar.f4371g);
            }
        }

        b(i0.a aVar, i0.a aVar2, i0.a aVar3, i0.a aVar4, m mVar, p.a aVar5) {
            this.f4365a = aVar;
            this.f4366b = aVar2;
            this.f4367c = aVar3;
            this.f4368d = aVar4;
            this.f4369e = mVar;
            this.f4370f = aVar5;
        }

        <R> l<R> a(e0.b bVar, boolean z10, boolean z11, boolean z12, boolean z13) {
            return ((l) v0.j.d(this.f4371g.acquire())).l(bVar, z10, z11, z12, z13);
        }
    }

    /* loaded from: classes.dex */
    private static class c implements h.e {

        /* renamed from: a  reason: collision with root package name */
        private final a.InterfaceC0436a f4373a;

        /* renamed from: b  reason: collision with root package name */
        private volatile h0.a f4374b;

        c(a.InterfaceC0436a interfaceC0436a) {
            this.f4373a = interfaceC0436a;
        }

        @Override // com.bumptech.glide.load.engine.h.e
        public h0.a a() {
            if (this.f4374b == null) {
                synchronized (this) {
                    if (this.f4374b == null) {
                        this.f4374b = this.f4373a.build();
                    }
                    if (this.f4374b == null) {
                        this.f4374b = new h0.b();
                    }
                }
            }
            return this.f4374b;
        }
    }

    /* loaded from: classes.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        private final l<?> f4375a;

        /* renamed from: b  reason: collision with root package name */
        private final com.bumptech.glide.request.i f4376b;

        d(com.bumptech.glide.request.i iVar, l<?> lVar) {
            this.f4376b = iVar;
            this.f4375a = lVar;
        }

        public void a() {
            synchronized (k.this) {
                this.f4375a.r(this.f4376b);
            }
        }
    }

    public k(h0.h hVar, a.InterfaceC0436a interfaceC0436a, i0.a aVar, i0.a aVar2, i0.a aVar3, i0.a aVar4, boolean z10) {
        this(hVar, interfaceC0436a, aVar, aVar2, aVar3, aVar4, null, null, null, null, null, null, z10);
    }

    private p<?> e(e0.b bVar) {
        u<?> d10 = this.f4355c.d(bVar);
        if (d10 == null) {
            return null;
        }
        if (d10 instanceof p) {
            return (p) d10;
        }
        return new p<>(d10, true, true, bVar, this);
    }

    @Nullable
    private p<?> g(e0.b bVar) {
        p<?> e10 = this.f4360h.e(bVar);
        if (e10 != null) {
            e10.b();
        }
        return e10;
    }

    private p<?> h(e0.b bVar) {
        p<?> e10 = e(bVar);
        if (e10 != null) {
            e10.b();
            this.f4360h.a(bVar, e10);
        }
        return e10;
    }

    @Nullable
    private p<?> i(n nVar, boolean z10, long j10) {
        if (z10) {
            p<?> g10 = g(nVar);
            if (g10 != null) {
                if (f4352i) {
                    j("Loaded resource from active resources", j10, nVar);
                }
                return g10;
            }
            p<?> h10 = h(nVar);
            if (h10 != null) {
                if (f4352i) {
                    j("Loaded resource from cache", j10, nVar);
                }
                return h10;
            }
            return null;
        }
        return null;
    }

    private static void j(String str, long j10, e0.b bVar) {
        Log.v("Engine", str + " in " + v0.f.a(j10) + "ms, key: " + bVar);
    }

    private <R> d l(com.bumptech.glide.e eVar, Object obj, e0.b bVar, int i9, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, e0.h<?>> map, boolean z10, boolean z11, e0.e eVar2, boolean z12, boolean z13, boolean z14, boolean z15, com.bumptech.glide.request.i iVar, Executor executor, n nVar, long j10) {
        l<?> a10 = this.f4353a.a(nVar, z15);
        if (a10 != null) {
            a10.a(iVar, executor);
            if (f4352i) {
                j("Added to existing load", j10, nVar);
            }
            return new d(iVar, a10);
        }
        l<R> a11 = this.f4356d.a(nVar, z12, z13, z14, z15);
        h<R> a12 = this.f4359g.a(eVar, obj, nVar, bVar, i9, i10, cls, cls2, priority, jVar, map, z10, z11, z15, eVar2, a11);
        this.f4353a.c(nVar, a11);
        a11.a(iVar, executor);
        a11.s(a12);
        if (f4352i) {
            j("Started new load", j10, nVar);
        }
        return new d(iVar, a11);
    }

    @Override // h0.h.a
    public void a(@NonNull u<?> uVar) {
        this.f4357e.a(uVar, true);
    }

    @Override // com.bumptech.glide.load.engine.m
    public synchronized void b(l<?> lVar, e0.b bVar, p<?> pVar) {
        if (pVar != null) {
            if (pVar.d()) {
                this.f4360h.a(bVar, pVar);
            }
        }
        this.f4353a.d(bVar, lVar);
    }

    @Override // com.bumptech.glide.load.engine.m
    public synchronized void c(l<?> lVar, e0.b bVar) {
        this.f4353a.d(bVar, lVar);
    }

    @Override // com.bumptech.glide.load.engine.p.a
    public void d(e0.b bVar, p<?> pVar) {
        this.f4360h.d(bVar);
        if (pVar.d()) {
            this.f4355c.c(bVar, pVar);
        } else {
            this.f4357e.a(pVar, false);
        }
    }

    public <R> d f(com.bumptech.glide.e eVar, Object obj, e0.b bVar, int i9, int i10, Class<?> cls, Class<R> cls2, Priority priority, j jVar, Map<Class<?>, e0.h<?>> map, boolean z10, boolean z11, e0.e eVar2, boolean z12, boolean z13, boolean z14, boolean z15, com.bumptech.glide.request.i iVar, Executor executor) {
        long b10 = f4352i ? v0.f.b() : 0L;
        n a10 = this.f4354b.a(obj, bVar, i9, i10, map, cls, cls2, eVar2);
        synchronized (this) {
            p<?> i11 = i(a10, z12, b10);
            if (i11 == null) {
                return l(eVar, obj, bVar, i9, i10, cls, cls2, priority, jVar, map, z10, z11, eVar2, z12, z13, z14, z15, iVar, executor, a10, b10);
            }
            iVar.b(i11, DataSource.MEMORY_CACHE, false);
            return null;
        }
    }

    public void k(u<?> uVar) {
        if (uVar instanceof p) {
            ((p) uVar).e();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @VisibleForTesting
    k(h0.h hVar, a.InterfaceC0436a interfaceC0436a, i0.a aVar, i0.a aVar2, i0.a aVar3, i0.a aVar4, r rVar, o oVar, com.bumptech.glide.load.engine.a aVar5, b bVar, a aVar6, x xVar, boolean z10) {
        this.f4355c = hVar;
        c cVar = new c(interfaceC0436a);
        this.f4358f = cVar;
        com.bumptech.glide.load.engine.a aVar7 = aVar5 == null ? new com.bumptech.glide.load.engine.a(z10) : aVar5;
        this.f4360h = aVar7;
        aVar7.f(this);
        this.f4354b = oVar == null ? new o() : oVar;
        this.f4353a = rVar == null ? new r() : rVar;
        this.f4356d = bVar == null ? new b(aVar, aVar2, aVar3, aVar4, this, this) : bVar;
        this.f4359g = aVar6 == null ? new a(cVar) : aVar6;
        this.f4357e = xVar == null ? new x() : xVar;
        hVar.e(this);
    }
}
