package com.google.common.base;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2.dex */
public final class r {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b<T> implements q<T>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends q<? super T>> f12374a;

        @Override // com.google.common.base.q
        public boolean apply(T t10) {
            for (int i9 = 0; i9 < this.f12374a.size(); i9++) {
                if (!this.f12374a.get(i9).apply(t10)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.base.q
        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.f12374a.equals(((b) obj).f12374a);
            }
            return false;
        }

        public int hashCode() {
            return this.f12374a.hashCode() + 306654252;
        }

        @Override // com.google.common.base.q, java.util.function.Predicate
        public /* synthetic */ boolean test(Object obj) {
            return p.a(this, obj);
        }

        public String toString() {
            return r.j("and", this.f12374a);
        }

        private b(List<? extends q<? super T>> list) {
            this.f12374a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c<A, B> implements q<A>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final q<B> f12375a;

        /* renamed from: b  reason: collision with root package name */
        final h<A, ? extends B> f12376b;

        @Override // com.google.common.base.q
        public boolean apply(A a10) {
            return this.f12375a.apply(this.f12376b.apply(a10));
        }

        @Override // com.google.common.base.q
        public boolean equals(Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f12376b.equals(cVar.f12376b) && this.f12375a.equals(cVar.f12375a);
            }
            return false;
        }

        public int hashCode() {
            return this.f12376b.hashCode() ^ this.f12375a.hashCode();
        }

        @Override // com.google.common.base.q, java.util.function.Predicate
        public /* synthetic */ boolean test(Object obj) {
            return p.a(this, obj);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f12375a);
            String valueOf2 = String.valueOf(this.f12376b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2 + valueOf2.length());
            sb2.append(valueOf);
            sb2.append("(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }

        private c(q<B> qVar, h<A, ? extends B> hVar) {
            this.f12375a = (q) o.s(qVar);
            this.f12376b = (h) o.s(hVar);
        }
    }

    /* loaded from: classes2.dex */
    private static class d<T> implements q<T>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Collection<?> f12377a;

        @Override // com.google.common.base.q
        public boolean apply(T t10) {
            try {
                return this.f12377a.contains(t10);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.q
        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f12377a.equals(((d) obj).f12377a);
            }
            return false;
        }

        public int hashCode() {
            return this.f12377a.hashCode();
        }

        @Override // com.google.common.base.q, java.util.function.Predicate
        public /* synthetic */ boolean test(Object obj) {
            return p.a(this, obj);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f12377a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 15);
            sb2.append("Predicates.in(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        private d(Collection<?> collection) {
            this.f12377a = (Collection) o.s(collection);
        }
    }

    /* loaded from: classes2.dex */
    private static class e implements q<Object>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Object f12378a;

        <T> q<T> a() {
            return this;
        }

        @Override // com.google.common.base.q
        public boolean apply(Object obj) {
            return this.f12378a.equals(obj);
        }

        @Override // com.google.common.base.q
        public boolean equals(Object obj) {
            if (obj instanceof e) {
                return this.f12378a.equals(((e) obj).f12378a);
            }
            return false;
        }

        public int hashCode() {
            return this.f12378a.hashCode();
        }

        @Override // com.google.common.base.q, java.util.function.Predicate
        public /* synthetic */ boolean test(Object obj) {
            return p.a(this, obj);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f12378a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 20);
            sb2.append("Predicates.equalTo(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        private e(Object obj) {
            this.f12378a = obj;
        }
    }

    /* loaded from: classes2.dex */
    private static class f<T> implements q<T>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final q<T> f12379a;

        f(q<T> qVar) {
            this.f12379a = (q) o.s(qVar);
        }

        @Override // com.google.common.base.q
        public boolean apply(T t10) {
            return !this.f12379a.apply(t10);
        }

        @Override // com.google.common.base.q
        public boolean equals(Object obj) {
            if (obj instanceof f) {
                return this.f12379a.equals(((f) obj).f12379a);
            }
            return false;
        }

        public int hashCode() {
            return ~this.f12379a.hashCode();
        }

        @Override // com.google.common.base.q, java.util.function.Predicate
        public /* synthetic */ boolean test(Object obj) {
            return p.a(this, obj);
        }

        public String toString() {
            String valueOf = String.valueOf(this.f12379a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 16);
            sb2.append("Predicates.not(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class g implements q<Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final g f12380a = new a("ALWAYS_TRUE", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final g f12381b = new b("ALWAYS_FALSE", 1);

        /* renamed from: c  reason: collision with root package name */
        public static final g f12382c = new c("IS_NULL", 2);

        /* renamed from: d  reason: collision with root package name */
        public static final g f12383d = new d("NOT_NULL", 3);

        /* renamed from: e  reason: collision with root package name */
        private static final /* synthetic */ g[] f12384e = a();

        /* loaded from: classes2.dex */
        enum a extends g {
            a(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.base.q
            public boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        }

        /* loaded from: classes2.dex */
        enum b extends g {
            b(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.base.q
            public boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        }

        /* loaded from: classes2.dex */
        enum c extends g {
            c(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.base.q
            public boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        }

        /* loaded from: classes2.dex */
        enum d extends g {
            d(String str, int i9) {
                super(str, i9);
            }

            @Override // com.google.common.base.q
            public boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        }

        private g(String str, int i9) {
        }

        private static /* synthetic */ g[] a() {
            return new g[]{f12380a, f12381b, f12382c, f12383d};
        }

        public static g valueOf(String str) {
            return (g) Enum.valueOf(g.class, str);
        }

        public static g[] values() {
            return (g[]) f12384e.clone();
        }

        <T> q<T> b() {
            return this;
        }

        @Override // com.google.common.base.q, java.util.function.Predicate
        public /* synthetic */ boolean test(Object obj) {
            return p.a(this, obj);
        }
    }

    public static <T> q<T> b() {
        return g.f12380a.b();
    }

    public static <T> q<T> c(q<? super T> qVar, q<? super T> qVar2) {
        return new b(d((q) o.s(qVar), (q) o.s(qVar2)));
    }

    private static <T> List<q<? super T>> d(q<? super T> qVar, q<? super T> qVar2) {
        return Arrays.asList(qVar, qVar2);
    }

    public static <A, B> q<A> e(q<B> qVar, h<A, ? extends B> hVar) {
        return new c(qVar, hVar);
    }

    public static <T> q<T> f(T t10) {
        if (t10 == null) {
            return h();
        }
        return new e(t10).a();
    }

    public static <T> q<T> g(Collection<? extends T> collection) {
        return new d(collection);
    }

    public static <T> q<T> h() {
        return g.f12382c.b();
    }

    public static <T> q<T> i(q<T> qVar) {
        return new f(qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String j(String str, Iterable<?> iterable) {
        StringBuilder sb2 = new StringBuilder("Predicates.");
        sb2.append(str);
        sb2.append('(');
        boolean z10 = true;
        for (Object obj : iterable) {
            if (!z10) {
                sb2.append(',');
            }
            sb2.append(obj);
            z10 = false;
        }
        sb2.append(')');
        return sb2.toString();
    }
}
