package a6;

import a6.o;
import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import com.google.firebase.components.MissingDependencyException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class o extends a6.a implements c6.a {

    /* renamed from: h  reason: collision with root package name */
    private static final k6.b<Set<Object>> f671h = new k6.b() { // from class: a6.n
        @Override // k6.b
        public final Object get() {
            return Collections.emptySet();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Map<d<?>, k6.b<?>> f672a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, k6.b<?>> f673b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, v<?>> f674c;

    /* renamed from: d  reason: collision with root package name */
    private final List<k6.b<ComponentRegistrar>> f675d;

    /* renamed from: e  reason: collision with root package name */
    private final t f676e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference<Boolean> f677f;

    /* renamed from: g  reason: collision with root package name */
    private final j f678g;

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f679a;

        /* renamed from: b  reason: collision with root package name */
        private final List<k6.b<ComponentRegistrar>> f680b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final List<d<?>> f681c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private j f682d = j.f663a;

        b(Executor executor) {
            this.f679a = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ComponentRegistrar f(ComponentRegistrar componentRegistrar) {
            return componentRegistrar;
        }

        public b b(d<?> dVar) {
            this.f681c.add(dVar);
            return this;
        }

        public b c(final ComponentRegistrar componentRegistrar) {
            this.f680b.add(new k6.b() { // from class: a6.p
                @Override // k6.b
                public final Object get() {
                    ComponentRegistrar f10;
                    f10 = o.b.f(ComponentRegistrar.this);
                    return f10;
                }
            });
            return this;
        }

        public b d(Collection<k6.b<ComponentRegistrar>> collection) {
            this.f680b.addAll(collection);
            return this;
        }

        public o e() {
            return new o(this.f679a, this.f680b, this.f681c, this.f682d);
        }

        public b g(j jVar) {
            this.f682d = jVar;
            return this;
        }
    }

    public static b d(Executor executor) {
        return new b(executor);
    }

    private void e(List<d<?>> list) {
        ArrayList<Runnable> arrayList = new ArrayList();
        synchronized (this) {
            Iterator<k6.b<ComponentRegistrar>> it = this.f675d.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = it.next().get();
                    if (componentRegistrar != null) {
                        list.addAll(this.f678g.a(componentRegistrar));
                        it.remove();
                    }
                } catch (InvalidRegistrarException e10) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e10);
                }
            }
            if (this.f672a.isEmpty()) {
                q.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.f672a.keySet());
                arrayList2.addAll(list);
                q.a(arrayList2);
            }
            for (final d<?> dVar : list) {
                this.f672a.put(dVar, new u(new k6.b() { // from class: a6.m
                    @Override // k6.b
                    public final Object get() {
                        Object m10;
                        m10 = o.this.m(dVar);
                        return m10;
                    }
                }));
            }
            arrayList.addAll(r(list));
            arrayList.addAll(s());
            q();
        }
        for (Runnable runnable : arrayList) {
            runnable.run();
        }
        p();
    }

    private void f(Map<d<?>, k6.b<?>> map, boolean z10) {
        for (Map.Entry<d<?>, k6.b<?>> entry : map.entrySet()) {
            d<?> key = entry.getKey();
            k6.b<?> value = entry.getValue();
            if (key.l() || (key.m() && z10)) {
                value.get();
            }
        }
        this.f676e.e();
    }

    private static <T> List<T> h(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t10 : iterable) {
            arrayList.add(t10);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object m(d dVar) {
        return dVar.f().a(new a0(dVar, this));
    }

    private void p() {
        Boolean bool = this.f677f.get();
        if (bool != null) {
            f(this.f672a, bool.booleanValue());
        }
    }

    private void q() {
        for (d<?> dVar : this.f672a.keySet()) {
            for (r rVar : dVar.e()) {
                if (rVar.f() && !this.f674c.containsKey(rVar.b())) {
                    this.f674c.put(rVar.b(), v.b(Collections.emptySet()));
                } else if (this.f673b.containsKey(rVar.b())) {
                    continue;
                } else if (!rVar.e()) {
                    if (!rVar.f()) {
                        this.f673b.put(rVar.b(), y.c());
                    }
                } else {
                    throw new MissingDependencyException(String.format("Unsatisfied dependency for component %s: %s", dVar, rVar.b()));
                }
            }
        }
    }

    private List<Runnable> r(List<d<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (d<?> dVar : list) {
            if (dVar.n()) {
                final k6.b<?> bVar = this.f672a.get(dVar);
                for (Class<? super Object> cls : dVar.h()) {
                    if (!this.f673b.containsKey(cls)) {
                        this.f673b.put(cls, bVar);
                    } else {
                        final y yVar = (y) this.f673b.get(cls);
                        arrayList.add(new Runnable() { // from class: a6.l
                            @Override // java.lang.Runnable
                            public final void run() {
                                y.this.f(bVar);
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> s() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<d<?>, k6.b<?>> entry : this.f672a.entrySet()) {
            d<?> key = entry.getKey();
            if (!key.n()) {
                k6.b<?> value = entry.getValue();
                for (Class<? super Object> cls : key.h()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.f674c.containsKey(entry2.getKey())) {
                this.f674c.put((Class) entry2.getKey(), v.b((Collection) entry2.getValue()));
            } else {
                final v<?> vVar = this.f674c.get(entry2.getKey());
                for (final k6.b bVar : (Set) entry2.getValue()) {
                    arrayList.add(new Runnable() { // from class: a6.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            v.this.a(bVar);
                        }
                    });
                }
            }
        }
        return arrayList;
    }

    public void g(boolean z10) {
        HashMap hashMap;
        if (this.f677f.compareAndSet(null, Boolean.valueOf(z10))) {
            synchronized (this) {
                hashMap = new HashMap(this.f672a);
            }
            f(hashMap, z10);
        }
    }

    @Override // a6.a, a6.e
    public /* bridge */ /* synthetic */ Object i(Class cls) {
        return super.i(cls);
    }

    @Override // a6.e
    public synchronized <T> k6.b<Set<T>> j(Class<T> cls) {
        v<?> vVar = this.f674c.get(cls);
        if (vVar != null) {
            return vVar;
        }
        return (k6.b<Set<T>>) f671h;
    }

    @Override // a6.a, a6.e
    public /* bridge */ /* synthetic */ Set k(Class cls) {
        return super.k(cls);
    }

    @Override // a6.e
    public synchronized <T> k6.b<T> l(Class<T> cls) {
        z.c(cls, "Null interface requested.");
        return (k6.b<T>) this.f673b.get(cls);
    }

    private o(Executor executor, Iterable<k6.b<ComponentRegistrar>> iterable, Collection<d<?>> collection, j jVar) {
        this.f672a = new HashMap();
        this.f673b = new HashMap();
        this.f674c = new HashMap();
        this.f677f = new AtomicReference<>();
        t tVar = new t(executor);
        this.f676e = tVar;
        this.f678g = jVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(d.q(tVar, t.class, h6.d.class, h6.c.class));
        arrayList.add(d.q(this, c6.a.class, new Class[0]));
        for (d<?> dVar : collection) {
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        this.f675d = h(iterable);
        e(arrayList);
    }
}
