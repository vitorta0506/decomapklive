package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.j;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4.dex */
public class h<T extends j> implements k<T> {

    /* renamed from: a  reason: collision with root package name */
    private final we.a f35113a;

    /* renamed from: b  reason: collision with root package name */
    private final we.d<T> f35114b;

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<Long, T> f35115c;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentHashMap<Long, we.c<T>> f35116d;

    /* renamed from: e  reason: collision with root package name */
    private final we.c<T> f35117e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference<T> f35118f;

    /* renamed from: g  reason: collision with root package name */
    private final String f35119g;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f35120h;

    public h(we.a aVar, we.d<T> dVar, String str, String str2) {
        this(aVar, dVar, new ConcurrentHashMap(1), new ConcurrentHashMap(1), new we.c(aVar, dVar, str), str2);
    }

    private void f(long j10, T t10, boolean z10) {
        this.f35115c.put(Long.valueOf(j10), t10);
        we.c<T> cVar = this.f35116d.get(Long.valueOf(j10));
        if (cVar == null) {
            cVar = new we.c<>(this.f35113a, this.f35114b, e(j10));
            this.f35116d.putIfAbsent(Long.valueOf(j10), cVar);
        }
        cVar.c(t10);
        T t11 = this.f35118f.get();
        if (t11 == null || t11.b() == j10 || z10) {
            synchronized (this) {
                this.f35118f.compareAndSet(t11, t10);
                this.f35117e.c(t10);
            }
        }
    }

    private void h() {
        T b10 = this.f35117e.b();
        if (b10 != null) {
            f(b10.b(), b10, false);
        }
    }

    private synchronized void i() {
        if (this.f35120h) {
            h();
            k();
            this.f35120h = false;
        }
    }

    private void k() {
        T a10;
        for (Map.Entry<String, ?> entry : this.f35113a.get().getAll().entrySet()) {
            if (g(entry.getKey()) && (a10 = this.f35114b.a((String) entry.getValue())) != null) {
                f(a10.b(), a10, false);
            }
        }
    }

    @Override // com.twitter.sdk.android.core.k
    public void a(long j10) {
        j();
        if (this.f35118f.get() != null && this.f35118f.get().b() == j10) {
            synchronized (this) {
                this.f35118f.set(null);
                this.f35117e.a();
            }
        }
        this.f35115c.remove(Long.valueOf(j10));
        we.c<T> remove = this.f35116d.remove(Long.valueOf(j10));
        if (remove != null) {
            remove.a();
        }
    }

    @Override // com.twitter.sdk.android.core.k
    public void b(T t10) {
        if (t10 != null) {
            j();
            f(t10.b(), t10, true);
            return;
        }
        throw new IllegalArgumentException("Session must not be null!");
    }

    @Override // com.twitter.sdk.android.core.k
    public Map<Long, T> c() {
        j();
        return Collections.unmodifiableMap(this.f35115c);
    }

    @Override // com.twitter.sdk.android.core.k
    public T d() {
        j();
        return this.f35118f.get();
    }

    String e(long j10) {
        return this.f35119g + "_" + j10;
    }

    boolean g(String str) {
        return str.startsWith(this.f35119g);
    }

    void j() {
        if (this.f35120h) {
            i();
        }
    }

    h(we.a aVar, we.d<T> dVar, ConcurrentHashMap<Long, T> concurrentHashMap, ConcurrentHashMap<Long, we.c<T>> concurrentHashMap2, we.c<T> cVar, String str) {
        this.f35120h = true;
        this.f35113a = aVar;
        this.f35114b = dVar;
        this.f35115c = concurrentHashMap;
        this.f35116d = concurrentHashMap2;
        this.f35117e = cVar;
        this.f35118f = new AtomicReference<>();
        this.f35119g = str;
    }
}
