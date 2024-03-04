package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
/* loaded from: classes2.dex */
public final class Range<C extends Comparable> extends b7 implements com.google.common.base.q<C> {
    private static final Range<Comparable> ALL = new Range<>(g3.c(), g3.a());
    private static final long serialVersionUID = 0;
    final g3<C> lowerBound;
    final g3<C> upperBound;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12828a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f12828a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12828a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    static class b implements com.google.common.base.h<Range, g3> {

        /* renamed from: a  reason: collision with root package name */
        static final b f12829a = new b();

        b() {
        }

        @Override // com.google.common.base.h, java.util.function.Function
        /* renamed from: a */
        public g3 apply(Range range) {
            return range.lowerBound;
        }
    }

    /* loaded from: classes2.dex */
    private static class c extends y6<Range<?>> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        static final y6<Range<?>> f12830a = new c();
        private static final long serialVersionUID = 0;

        private c() {
        }

        @Override // com.google.common.collect.y6, java.util.Comparator
        /* renamed from: i */
        public int compare(Range<?> range, Range<?> range2) {
            return e3.k().f(range.lowerBound, range2.lowerBound).f(range.upperBound, range2.upperBound).j();
        }
    }

    /* loaded from: classes2.dex */
    static class d implements com.google.common.base.h<Range, g3> {

        /* renamed from: a  reason: collision with root package name */
        static final d f12831a = new d();

        d() {
        }

        @Override // com.google.common.base.h, java.util.function.Function
        /* renamed from: a */
        public g3 apply(Range range) {
            return range.upperBound;
        }
    }

    private Range(g3<C> g3Var, g3<C> g3Var2) {
        this.lowerBound = (g3) com.google.common.base.o.s(g3Var);
        this.upperBound = (g3) com.google.common.base.o.s(g3Var2);
        if (g3Var.compareTo(g3Var2) > 0 || g3Var == g3.a() || g3Var2 == g3.c()) {
            String valueOf = String.valueOf(toString(g3Var, g3Var2));
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid range: ".concat(valueOf) : new String("Invalid range: "));
        }
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return (Range<C>) ALL;
    }

    public static <C extends Comparable<?>> Range<C> atLeast(C c10) {
        return create(g3.d(c10), g3.a());
    }

    public static <C extends Comparable<?>> Range<C> atMost(C c10) {
        return create(g3.c(), g3.b(c10));
    }

    public static <C extends Comparable<?>> Range<C> closed(C c10, C c11) {
        return create(g3.d(c10), g3.b(c11));
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c10, C c11) {
        return create(g3.d(c10), g3.d(c11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int compareOrThrow(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> Range<C> create(g3<C> g3Var, g3<C> g3Var2) {
        return new Range<>(g3Var, g3Var2);
    }

    public static <C extends Comparable<?>> Range<C> downTo(C c10, BoundType boundType) {
        int i9 = a.f12828a[boundType.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return atLeast(c10);
            }
            throw new AssertionError();
        }
        return greaterThan(c10);
    }

    public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> iterable) {
        com.google.common.base.o.s(iterable);
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (y6.e().equals(comparator) || comparator == null) {
                return closed((Comparable) sortedSet.first(), (Comparable) sortedSet.last());
            }
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) com.google.common.base.o.s(it.next());
        Comparable comparable2 = comparable;
        while (it.hasNext()) {
            Comparable comparable3 = (Comparable) com.google.common.base.o.s(it.next());
            comparable = (Comparable) y6.e().d(comparable, comparable3);
            comparable2 = (Comparable) y6.e().c(comparable2, comparable3);
        }
        return closed(comparable, comparable2);
    }

    public static <C extends Comparable<?>> Range<C> greaterThan(C c10) {
        return create(g3.b(c10), g3.a());
    }

    public static <C extends Comparable<?>> Range<C> lessThan(C c10) {
        return create(g3.c(), g3.d(c10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> com.google.common.base.h<Range<C>, g3<C>> lowerBoundFn() {
        return b.f12829a;
    }

    public static <C extends Comparable<?>> Range<C> open(C c10, C c11) {
        return create(g3.b(c10), g3.d(c11));
    }

    public static <C extends Comparable<?>> Range<C> openClosed(C c10, C c11) {
        return create(g3.b(c10), g3.b(c11));
    }

    public static <C extends Comparable<?>> Range<C> range(C c10, BoundType boundType, C c11, BoundType boundType2) {
        com.google.common.base.o.s(boundType);
        com.google.common.base.o.s(boundType2);
        BoundType boundType3 = BoundType.OPEN;
        return create(boundType == boundType3 ? g3.b(c10) : g3.d(c10), boundType2 == boundType3 ? g3.d(c11) : g3.b(c11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> y6<Range<C>> rangeLexOrdering() {
        return (y6<Range<C>>) c.f12830a;
    }

    public static <C extends Comparable<?>> Range<C> singleton(C c10) {
        return closed(c10, c10);
    }

    public static <C extends Comparable<?>> Range<C> upTo(C c10, BoundType boundType) {
        int i9 = a.f12828a[boundType.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return atMost(c10);
            }
            throw new AssertionError();
        }
        return lessThan(c10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <C extends Comparable<?>> com.google.common.base.h<Range<C>, g3<C>> upperBoundFn() {
        return d.f12831a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.q
    @Deprecated
    public /* bridge */ /* synthetic */ boolean apply(Object obj) {
        return apply((Range<C>) ((Comparable) obj));
    }

    public Range<C> canonical(l3<C> l3Var) {
        com.google.common.base.o.s(l3Var);
        g3<C> e10 = this.lowerBound.e(l3Var);
        g3<C> e11 = this.upperBound.e(l3Var);
        return (e10 == this.lowerBound && e11 == this.upperBound) ? this : create(e10, e11);
    }

    public boolean contains(C c10) {
        com.google.common.base.o.s(c10);
        return this.lowerBound.k(c10) && !this.upperBound.k(c10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean containsAll(Iterable<? extends C> iterable) {
        if (n5.j(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) iterable;
            Comparator comparator = sortedSet.comparator();
            if (y6.e().equals(comparator) || comparator == null) {
                return contains((Comparable) sortedSet.first()) && contains((Comparable) sortedSet.last());
            }
        }
        for (C c10 : iterable) {
            if (!contains(c10)) {
                return false;
            }
        }
        return true;
    }

    public boolean encloses(Range<C> range) {
        return this.lowerBound.compareTo(range.lowerBound) <= 0 && this.upperBound.compareTo(range.upperBound) >= 0;
    }

    @Override // com.google.common.base.q
    public boolean equals(Object obj) {
        if (obj instanceof Range) {
            Range range = (Range) obj;
            return this.lowerBound.equals(range.lowerBound) && this.upperBound.equals(range.upperBound);
        }
        return false;
    }

    public Range<C> gap(Range<C> range) {
        if (this.lowerBound.compareTo(range.upperBound) < 0 && range.lowerBound.compareTo(this.upperBound) < 0) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(range);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 39 + valueOf2.length());
            sb2.append("Ranges have a nonempty intersection: ");
            sb2.append(valueOf);
            sb2.append(", ");
            sb2.append(valueOf2);
            throw new IllegalArgumentException(sb2.toString());
        }
        boolean z10 = this.lowerBound.compareTo(range.lowerBound) < 0;
        Range<C> range2 = z10 ? this : range;
        if (!z10) {
            range = this;
        }
        return create(range2.upperBound, range.lowerBound);
    }

    public boolean hasLowerBound() {
        return this.lowerBound != g3.c();
    }

    public boolean hasUpperBound() {
        return this.upperBound != g3.a();
    }

    public int hashCode() {
        return (this.lowerBound.hashCode() * 31) + this.upperBound.hashCode();
    }

    public Range<C> intersection(Range<C> range) {
        int compareTo = this.lowerBound.compareTo(range.lowerBound);
        int compareTo2 = this.upperBound.compareTo(range.upperBound);
        if (compareTo < 0 || compareTo2 > 0) {
            if (compareTo > 0 || compareTo2 < 0) {
                g3<C> g3Var = compareTo >= 0 ? this.lowerBound : range.lowerBound;
                g3<C> g3Var2 = compareTo2 <= 0 ? this.upperBound : range.upperBound;
                com.google.common.base.o.n(g3Var.compareTo(g3Var2) <= 0, "intersection is undefined for disconnected ranges %s and %s", this, range);
                return create(g3Var, g3Var2);
            }
            return range;
        }
        return this;
    }

    public boolean isConnected(Range<C> range) {
        return this.lowerBound.compareTo(range.upperBound) <= 0 && range.lowerBound.compareTo(this.upperBound) <= 0;
    }

    public boolean isEmpty() {
        return this.lowerBound.equals(this.upperBound);
    }

    public BoundType lowerBoundType() {
        return this.lowerBound.m();
    }

    public C lowerEndpoint() {
        return this.lowerBound.i();
    }

    Object readResolve() {
        return equals(ALL) ? all() : this;
    }

    public Range<C> span(Range<C> range) {
        int compareTo = this.lowerBound.compareTo(range.lowerBound);
        int compareTo2 = this.upperBound.compareTo(range.upperBound);
        if (compareTo > 0 || compareTo2 < 0) {
            if (compareTo < 0 || compareTo2 > 0) {
                return create(compareTo <= 0 ? this.lowerBound : range.lowerBound, compareTo2 >= 0 ? this.upperBound : range.upperBound);
            }
            return range;
        }
        return this;
    }

    @Override // com.google.common.base.q, java.util.function.Predicate
    public /* bridge */ /* synthetic */ boolean test(Object obj) {
        return com.google.common.base.p.a(this, obj);
    }

    public String toString() {
        return toString(this.lowerBound, this.upperBound);
    }

    public BoundType upperBoundType() {
        return this.upperBound.o();
    }

    public C upperEndpoint() {
        return this.upperBound.i();
    }

    private static String toString(g3<?> g3Var, g3<?> g3Var2) {
        StringBuilder sb2 = new StringBuilder(16);
        g3Var.g(sb2);
        sb2.append("..");
        g3Var2.h(sb2);
        return sb2.toString();
    }

    @Deprecated
    public boolean apply(C c10) {
        return contains(c10);
    }
}
