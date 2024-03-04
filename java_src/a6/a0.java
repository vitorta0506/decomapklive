package a6;

import com.google.firebase.components.DependencyException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
final class a0 extends a6.a {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Class<?>> f633a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Class<?>> f634b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<Class<?>> f635c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<Class<?>> f636d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<Class<?>> f637e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<Class<?>> f638f;

    /* renamed from: g  reason: collision with root package name */
    private final e f639g;

    /* loaded from: classes2.dex */
    private static class a implements h6.c {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Class<?>> f640a;

        /* renamed from: b  reason: collision with root package name */
        private final h6.c f641b;

        public a(Set<Class<?>> set, h6.c cVar) {
            this.f640a = set;
            this.f641b = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(d<?> dVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (r rVar : dVar.e()) {
            if (rVar.d()) {
                if (rVar.f()) {
                    hashSet4.add(rVar.b());
                } else {
                    hashSet.add(rVar.b());
                }
            } else if (rVar.c()) {
                hashSet3.add(rVar.b());
            } else if (rVar.f()) {
                hashSet5.add(rVar.b());
            } else {
                hashSet2.add(rVar.b());
            }
        }
        if (!dVar.i().isEmpty()) {
            hashSet.add(h6.c.class);
        }
        this.f633a = Collections.unmodifiableSet(hashSet);
        this.f634b = Collections.unmodifiableSet(hashSet2);
        this.f635c = Collections.unmodifiableSet(hashSet3);
        this.f636d = Collections.unmodifiableSet(hashSet4);
        this.f637e = Collections.unmodifiableSet(hashSet5);
        this.f638f = dVar.i();
        this.f639g = eVar;
    }

    @Override // a6.a, a6.e
    public <T> T i(Class<T> cls) {
        if (this.f633a.contains(cls)) {
            T t10 = (T) this.f639g.i(cls);
            return !cls.equals(h6.c.class) ? t10 : (T) new a(this.f638f, (h6.c) t10);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // a6.e
    public <T> k6.b<Set<T>> j(Class<T> cls) {
        if (this.f637e.contains(cls)) {
            return this.f639g.j(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // a6.a, a6.e
    public <T> Set<T> k(Class<T> cls) {
        if (this.f636d.contains(cls)) {
            return this.f639g.k(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // a6.e
    public <T> k6.b<T> l(Class<T> cls) {
        if (this.f634b.contains(cls)) {
            return this.f639g.l(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }
}
