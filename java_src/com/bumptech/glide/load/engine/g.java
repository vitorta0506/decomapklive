package com.bumptech.glide.load.engine;

import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.h;
import j0.n;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g<Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final List<n.a<?>> f4276a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<e0.b> f4277b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private com.bumptech.glide.e f4278c;

    /* renamed from: d  reason: collision with root package name */
    private Object f4279d;

    /* renamed from: e  reason: collision with root package name */
    private int f4280e;

    /* renamed from: f  reason: collision with root package name */
    private int f4281f;

    /* renamed from: g  reason: collision with root package name */
    private Class<?> f4282g;

    /* renamed from: h  reason: collision with root package name */
    private h.e f4283h;

    /* renamed from: i  reason: collision with root package name */
    private e0.e f4284i;

    /* renamed from: j  reason: collision with root package name */
    private Map<Class<?>, e0.h<?>> f4285j;

    /* renamed from: k  reason: collision with root package name */
    private Class<Transcode> f4286k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f4287l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f4288m;

    /* renamed from: n  reason: collision with root package name */
    private e0.b f4289n;

    /* renamed from: o  reason: collision with root package name */
    private Priority f4290o;

    /* renamed from: p  reason: collision with root package name */
    private j f4291p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f4292q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f4293r;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f4278c = null;
        this.f4279d = null;
        this.f4289n = null;
        this.f4282g = null;
        this.f4286k = null;
        this.f4284i = null;
        this.f4290o = null;
        this.f4285j = null;
        this.f4291p = null;
        this.f4276a.clear();
        this.f4287l = false;
        this.f4277b.clear();
        this.f4288m = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0.b b() {
        return this.f4278c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<e0.b> c() {
        if (!this.f4288m) {
            this.f4288m = true;
            this.f4277b.clear();
            List<n.a<?>> g10 = g();
            int size = g10.size();
            for (int i9 = 0; i9 < size; i9++) {
                n.a<?> aVar = g10.get(i9);
                if (!this.f4277b.contains(aVar.f52918a)) {
                    this.f4277b.add(aVar.f52918a);
                }
                for (int i10 = 0; i10 < aVar.f52919b.size(); i10++) {
                    if (!this.f4277b.contains(aVar.f52919b.get(i10))) {
                        this.f4277b.add(aVar.f52919b.get(i10));
                    }
                }
            }
        }
        return this.f4277b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0.a d() {
        return this.f4283h.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j e() {
        return this.f4291p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f4281f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<n.a<?>> g() {
        if (!this.f4287l) {
            this.f4287l = true;
            this.f4276a.clear();
            List i9 = this.f4278c.i().i(this.f4279d);
            int size = i9.size();
            for (int i10 = 0; i10 < size; i10++) {
                n.a<?> a10 = ((j0.n) i9.get(i10)).a(this.f4279d, this.f4280e, this.f4281f, this.f4284i);
                if (a10 != null) {
                    this.f4276a.add(a10);
                }
            }
        }
        return this.f4276a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <Data> s<Data, ?, Transcode> h(Class<Data> cls) {
        return this.f4278c.i().h(cls, this.f4282g, this.f4286k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<?> i() {
        return this.f4279d.getClass();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<j0.n<File, ?>> j(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f4278c.i().i(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0.e k() {
        return this.f4284i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Priority l() {
        return this.f4290o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Class<?>> m() {
        return this.f4278c.i().j(this.f4279d.getClass(), this.f4282g, this.f4286k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <Z> e0.g<Z> n(u<Z> uVar) {
        return this.f4278c.i().k(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> com.bumptech.glide.load.data.e<T> o(T t10) {
        return this.f4278c.i().l(t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0.b p() {
        return this.f4289n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <X> e0.a<X> q(X x10) throws Registry.NoSourceEncoderAvailableException {
        return this.f4278c.i().m(x10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Class<?> r() {
        return (Class<Transcode>) this.f4286k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <Z> e0.h<Z> s(Class<Z> cls) {
        e0.h<Z> hVar = (e0.h<Z>) this.f4285j.get(cls);
        if (hVar == null) {
            Iterator<Map.Entry<Class<?>, e0.h<?>>> it = this.f4285j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, e0.h<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    hVar = (e0.h<Z>) next.getValue();
                    break;
                }
            }
        }
        if (hVar == null) {
            if (this.f4285j.isEmpty() && this.f4292q) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            return com.bumptech.glide.load.resource.c.a();
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int t() {
        return this.f4280e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean u(Class<?> cls) {
        return h(cls) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public <R> void v(com.bumptech.glide.e eVar, Object obj, e0.b bVar, int i9, int i10, j jVar, Class<?> cls, Class<R> cls2, Priority priority, e0.e eVar2, Map<Class<?>, e0.h<?>> map, boolean z10, boolean z11, h.e eVar3) {
        this.f4278c = eVar;
        this.f4279d = obj;
        this.f4289n = bVar;
        this.f4280e = i9;
        this.f4281f = i10;
        this.f4291p = jVar;
        this.f4282g = cls;
        this.f4283h = eVar3;
        this.f4286k = cls2;
        this.f4290o = priority;
        this.f4284i = eVar2;
        this.f4285j = map;
        this.f4292q = z10;
        this.f4293r = z11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w(u<?> uVar) {
        return this.f4278c.i().n(uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        return this.f4293r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean y(e0.b bVar) {
        List<n.a<?>> g10 = g();
        int size = g10.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (g10.get(i9).f52918a.equals(bVar)) {
                return true;
            }
        }
        return false;
    }
}
