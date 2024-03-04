package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class g3<C extends Comparable> implements Comparable<g3<C>>, Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    final C f13070a;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13071a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f13071a = iArr;
            try {
                iArr[BoundType.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13071a[BoundType.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b extends g3<Comparable<?>> {

        /* renamed from: b  reason: collision with root package name */
        private static final b f13072b = new b();
        private static final long serialVersionUID = 0;

        private b() {
            super("");
        }

        private Object readResolve() {
            return f13072b;
        }

        @Override // com.google.common.collect.g3, java.lang.Comparable
        /* renamed from: f */
        public int compareTo(g3<Comparable<?>> g3Var) {
            return g3Var == this ? 0 : 1;
        }

        @Override // com.google.common.collect.g3
        void g(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.g3
        void h(StringBuilder sb2) {
            sb2.append("+∞)");
        }

        @Override // com.google.common.collect.g3
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.g3
        Comparable<?> i() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.g3
        Comparable<?> j(l3<Comparable<?>> l3Var) {
            return l3Var.d();
        }

        @Override // com.google.common.collect.g3
        boolean k(Comparable<?> comparable) {
            return false;
        }

        @Override // com.google.common.collect.g3
        Comparable<?> l(l3<Comparable<?>> l3Var) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.g3
        BoundType m() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.g3
        BoundType o() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.g3
        g3<Comparable<?>> p(BoundType boundType, l3<Comparable<?>> l3Var) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.g3
        g3<Comparable<?>> q(BoundType boundType, l3<Comparable<?>> l3Var) {
            throw new IllegalStateException();
        }

        public String toString() {
            return "+∞";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c<C extends Comparable> extends g3<C> {
        private static final long serialVersionUID = 0;

        c(C c10) {
            super((Comparable) com.google.common.base.o.s(c10));
        }

        @Override // com.google.common.collect.g3, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((g3) obj);
        }

        @Override // com.google.common.collect.g3
        g3<C> e(l3<C> l3Var) {
            C l10 = l(l3Var);
            return l10 != null ? g3.d(l10) : g3.a();
        }

        @Override // com.google.common.collect.g3
        void g(StringBuilder sb2) {
            sb2.append('(');
            sb2.append(this.f13070a);
        }

        @Override // com.google.common.collect.g3
        void h(StringBuilder sb2) {
            sb2.append(this.f13070a);
            sb2.append(']');
        }

        @Override // com.google.common.collect.g3
        public int hashCode() {
            return ~this.f13070a.hashCode();
        }

        @Override // com.google.common.collect.g3
        C j(l3<C> l3Var) {
            return this.f13070a;
        }

        @Override // com.google.common.collect.g3
        boolean k(C c10) {
            return Range.compareOrThrow(this.f13070a, c10) < 0;
        }

        @Override // com.google.common.collect.g3
        C l(l3<C> l3Var) {
            return l3Var.f(this.f13070a);
        }

        @Override // com.google.common.collect.g3
        BoundType m() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.g3
        BoundType o() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.g3
        g3<C> p(BoundType boundType, l3<C> l3Var) {
            int i9 = a.f13071a[boundType.ordinal()];
            if (i9 == 1) {
                C f10 = l3Var.f(this.f13070a);
                return f10 == null ? g3.c() : g3.d(f10);
            } else if (i9 == 2) {
                return this;
            } else {
                throw new AssertionError();
            }
        }

        @Override // com.google.common.collect.g3
        g3<C> q(BoundType boundType, l3<C> l3Var) {
            int i9 = a.f13071a[boundType.ordinal()];
            if (i9 != 1) {
                if (i9 == 2) {
                    C f10 = l3Var.f(this.f13070a);
                    return f10 == null ? g3.a() : g3.d(f10);
                }
                throw new AssertionError();
            }
            return this;
        }

        public String toString() {
            String valueOf = String.valueOf(this.f13070a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2);
            sb2.append(FileUtils.RES_PREFIX_STORAGE);
            sb2.append(valueOf);
            sb2.append("\\");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d extends g3<Comparable<?>> {

        /* renamed from: b  reason: collision with root package name */
        private static final d f13073b = new d();
        private static final long serialVersionUID = 0;

        private d() {
            super("");
        }

        private Object readResolve() {
            return f13073b;
        }

        @Override // com.google.common.collect.g3
        g3<Comparable<?>> e(l3<Comparable<?>> l3Var) {
            try {
                return g3.d(l3Var.e());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override // com.google.common.collect.g3, java.lang.Comparable
        /* renamed from: f */
        public int compareTo(g3<Comparable<?>> g3Var) {
            return g3Var == this ? 0 : -1;
        }

        @Override // com.google.common.collect.g3
        void g(StringBuilder sb2) {
            sb2.append("(-∞");
        }

        @Override // com.google.common.collect.g3
        void h(StringBuilder sb2) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.g3
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.g3
        Comparable<?> i() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.g3
        Comparable<?> j(l3<Comparable<?>> l3Var) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.g3
        boolean k(Comparable<?> comparable) {
            return true;
        }

        @Override // com.google.common.collect.g3
        Comparable<?> l(l3<Comparable<?>> l3Var) {
            return l3Var.e();
        }

        @Override // com.google.common.collect.g3
        BoundType m() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.g3
        BoundType o() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.g3
        g3<Comparable<?>> p(BoundType boundType, l3<Comparable<?>> l3Var) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.g3
        g3<Comparable<?>> q(BoundType boundType, l3<Comparable<?>> l3Var) {
            throw new AssertionError("this statement should be unreachable");
        }

        public String toString() {
            return "-∞";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e<C extends Comparable> extends g3<C> {
        private static final long serialVersionUID = 0;

        e(C c10) {
            super((Comparable) com.google.common.base.o.s(c10));
        }

        @Override // com.google.common.collect.g3, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((g3) obj);
        }

        @Override // com.google.common.collect.g3
        void g(StringBuilder sb2) {
            sb2.append('[');
            sb2.append(this.f13070a);
        }

        @Override // com.google.common.collect.g3
        void h(StringBuilder sb2) {
            sb2.append(this.f13070a);
            sb2.append(')');
        }

        @Override // com.google.common.collect.g3
        public int hashCode() {
            return this.f13070a.hashCode();
        }

        @Override // com.google.common.collect.g3
        C j(l3<C> l3Var) {
            return l3Var.h(this.f13070a);
        }

        @Override // com.google.common.collect.g3
        boolean k(C c10) {
            return Range.compareOrThrow(this.f13070a, c10) <= 0;
        }

        @Override // com.google.common.collect.g3
        C l(l3<C> l3Var) {
            return this.f13070a;
        }

        @Override // com.google.common.collect.g3
        BoundType m() {
            return BoundType.CLOSED;
        }

        @Override // com.google.common.collect.g3
        BoundType o() {
            return BoundType.OPEN;
        }

        @Override // com.google.common.collect.g3
        g3<C> p(BoundType boundType, l3<C> l3Var) {
            int i9 = a.f13071a[boundType.ordinal()];
            if (i9 != 1) {
                if (i9 == 2) {
                    C h10 = l3Var.h(this.f13070a);
                    return h10 == null ? g3.c() : new c(h10);
                }
                throw new AssertionError();
            }
            return this;
        }

        @Override // com.google.common.collect.g3
        g3<C> q(BoundType boundType, l3<C> l3Var) {
            int i9 = a.f13071a[boundType.ordinal()];
            if (i9 == 1) {
                C h10 = l3Var.h(this.f13070a);
                return h10 == null ? g3.a() : new c(h10);
            } else if (i9 == 2) {
                return this;
            } else {
                throw new AssertionError();
            }
        }

        public String toString() {
            String valueOf = String.valueOf(this.f13070a);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2);
            sb2.append("\\");
            sb2.append(valueOf);
            sb2.append(FileUtils.RES_PREFIX_STORAGE);
            return sb2.toString();
        }
    }

    g3(C c10) {
        this.f13070a = c10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> g3<C> a() {
        return b.f13072b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> g3<C> b(C c10) {
        return new c(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> g3<C> c() {
        return d.f13073b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable> g3<C> d(C c10) {
        return new e(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g3<C> e(l3<C> l3Var) {
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof g3) {
            try {
                return compareTo((g3) obj) == 0;
            } catch (ClassCastException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    /* renamed from: f */
    public int compareTo(g3<C> g3Var) {
        if (g3Var == c()) {
            return 1;
        }
        if (g3Var == a()) {
            return -1;
        }
        int compareOrThrow = Range.compareOrThrow(this.f13070a, g3Var.f13070a);
        return compareOrThrow != 0 ? compareOrThrow : com.google.common.primitives.a.a(this instanceof c, g3Var instanceof c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void g(StringBuilder sb2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void h(StringBuilder sb2);

    public abstract int hashCode();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C i() {
        return this.f13070a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract C j(l3<C> l3Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean k(C c10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract C l(l3<C> l3Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract BoundType m();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract BoundType o();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract g3<C> p(BoundType boundType, l3<C> l3Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract g3<C> q(BoundType boundType, l3<C> l3Var);
}
