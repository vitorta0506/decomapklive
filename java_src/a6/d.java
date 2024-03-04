package a6;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public final class d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f644a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Class<? super T>> f645b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<r> f646c;

    /* renamed from: d  reason: collision with root package name */
    private final int f647d;

    /* renamed from: e  reason: collision with root package name */
    private final int f648e;

    /* renamed from: f  reason: collision with root package name */
    private final h<T> f649f;

    /* renamed from: g  reason: collision with root package name */
    private final Set<Class<?>> f650g;

    /* loaded from: classes2.dex */
    public static class b<T> {

        /* renamed from: a  reason: collision with root package name */
        private String f651a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<Class<? super T>> f652b;

        /* renamed from: c  reason: collision with root package name */
        private final Set<r> f653c;

        /* renamed from: d  reason: collision with root package name */
        private int f654d;

        /* renamed from: e  reason: collision with root package name */
        private int f655e;

        /* renamed from: f  reason: collision with root package name */
        private h<T> f656f;

        /* renamed from: g  reason: collision with root package name */
        private Set<Class<?>> f657g;

        /* JADX INFO: Access modifiers changed from: private */
        public b<T> g() {
            this.f655e = 1;
            return this;
        }

        private b<T> h(int i9) {
            z.d(this.f654d == 0, "Instantiation type has already been set.");
            this.f654d = i9;
            return this;
        }

        private void i(Class<?> cls) {
            z.a(!this.f652b.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b<T> b(r rVar) {
            z.c(rVar, "Null dependency");
            i(rVar.b());
            this.f653c.add(rVar);
            return this;
        }

        public b<T> c() {
            return h(1);
        }

        public d<T> d() {
            z.d(this.f656f != null, "Missing required property: factory.");
            return new d<>(this.f651a, new HashSet(this.f652b), new HashSet(this.f653c), this.f654d, this.f655e, this.f656f, this.f657g);
        }

        public b<T> e() {
            return h(2);
        }

        public b<T> f(h<T> hVar) {
            this.f656f = (h) z.c(hVar, "Null factory");
            return this;
        }

        @SafeVarargs
        private b(Class<T> cls, Class<? super T>... clsArr) {
            this.f651a = null;
            HashSet hashSet = new HashSet();
            this.f652b = hashSet;
            this.f653c = new HashSet();
            this.f654d = 0;
            this.f655e = 0;
            this.f657g = new HashSet();
            z.c(cls, "Null interface");
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                z.c(cls2, "Null interface");
            }
            Collections.addAll(this.f652b, clsArr);
        }
    }

    public static <T> b<T> c(Class<T> cls) {
        return new b<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> b<T> d(Class<T> cls, Class<? super T>... clsArr) {
        return new b<>(cls, clsArr);
    }

    public static <T> d<T> j(final T t10, Class<T> cls) {
        return k(cls).f(new h() { // from class: a6.b
            @Override // a6.h
            public final Object a(e eVar) {
                Object o10;
                o10 = d.o(t10, eVar);
                return o10;
            }
        }).d();
    }

    public static <T> b<T> k(Class<T> cls) {
        return c(cls).g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object o(Object obj, e eVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object p(Object obj, e eVar) {
        return obj;
    }

    @SafeVarargs
    public static <T> d<T> q(final T t10, Class<T> cls, Class<? super T>... clsArr) {
        return d(cls, clsArr).f(new h() { // from class: a6.c
            @Override // a6.h
            public final Object a(e eVar) {
                Object p10;
                p10 = d.p(t10, eVar);
                return p10;
            }
        }).d();
    }

    public Set<r> e() {
        return this.f646c;
    }

    public h<T> f() {
        return this.f649f;
    }

    @Nullable
    public String g() {
        return this.f644a;
    }

    public Set<Class<? super T>> h() {
        return this.f645b;
    }

    public Set<Class<?>> i() {
        return this.f650g;
    }

    public boolean l() {
        return this.f647d == 1;
    }

    public boolean m() {
        return this.f647d == 2;
    }

    public boolean n() {
        return this.f648e == 0;
    }

    public d<T> r(h<T> hVar) {
        return new d<>(this.f644a, this.f645b, this.f646c, this.f647d, this.f648e, hVar, this.f650g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f645b.toArray()) + ">{" + this.f647d + ", type=" + this.f648e + ", deps=" + Arrays.toString(this.f646c.toArray()) + "}";
    }

    private d(@Nullable String str, Set<Class<? super T>> set, Set<r> set2, int i9, int i10, h<T> hVar, Set<Class<?>> set3) {
        this.f644a = str;
        this.f645b = Collections.unmodifiableSet(set);
        this.f646c = Collections.unmodifiableSet(set2);
        this.f647d = i9;
        this.f648e = i10;
        this.f649f = hVar;
        this.f650g = Collections.unmodifiableSet(set3);
    }
}
