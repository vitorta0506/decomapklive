package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.g8;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public final class ImmutableRangeSet<C extends Comparable> extends r<C> implements Serializable {
    private transient ImmutableRangeSet<C> complement;
    private final transient ImmutableList<Range<C>> ranges;
    private static final ImmutableRangeSet<Comparable<?>> EMPTY = new ImmutableRangeSet<>(ImmutableList.of());
    private static final ImmutableRangeSet<Comparable<?>> ALL = new ImmutableRangeSet<>(ImmutableList.of(Range.all()));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends ImmutableList<Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f12715a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f12716b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Range f12717c;

        a(int i9, int i10, Range range) {
            this.f12715a = i9;
            this.f12716b = i10;
            this.f12717c = range;
        }

        @Override // java.util.List
        /* renamed from: c */
        public Range<C> get(int i9) {
            com.google.common.base.o.q(i9, this.f12715a);
            if (i9 != 0 && i9 != this.f12715a - 1) {
                return (Range) ImmutableRangeSet.this.ranges.get(i9 + this.f12716b);
            }
            return ((Range) ImmutableRangeSet.this.ranges.get(i9 + this.f12716b)).intersection(this.f12717c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f12715a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends ImmutableSortedSet<C> {

        /* renamed from: a  reason: collision with root package name */
        private final l3<C> f12719a;

        /* renamed from: b  reason: collision with root package name */
        private transient Integer f12720b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<C> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<Range<C>> f12722c;

            /* renamed from: d  reason: collision with root package name */
            Iterator<C> f12723d = p5.i();

            a() {
                this.f12722c = ImmutableRangeSet.this.ranges.iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public C a() {
                while (!this.f12723d.hasNext()) {
                    if (this.f12722c.hasNext()) {
                        this.f12723d = ContiguousSet.create(this.f12722c.next(), b.this.f12719a).iterator();
                    } else {
                        return (C) b();
                    }
                }
                return this.f12723d.next();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.ImmutableRangeSet$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0109b extends com.google.common.collect.c<C> {

            /* renamed from: c  reason: collision with root package name */
            final Iterator<Range<C>> f12725c;

            /* renamed from: d  reason: collision with root package name */
            Iterator<C> f12726d = p5.i();

            C0109b() {
                this.f12725c = ImmutableRangeSet.this.ranges.reverse().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public C a() {
                while (!this.f12726d.hasNext()) {
                    if (this.f12725c.hasNext()) {
                        this.f12726d = ContiguousSet.create(this.f12725c.next(), b.this.f12719a).descendingIterator();
                    } else {
                        return (C) b();
                    }
                }
                return this.f12726d.next();
            }
        }

        b(l3<C> l3Var) {
            super(y6.e());
            this.f12719a = l3Var;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ImmutableRangeSet.this.contains((Comparable) obj);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        ImmutableSortedSet<C> createDescendingSet() {
            return new j3(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* renamed from: d */
        public ImmutableSortedSet<C> headSetImpl(C c10, boolean z10) {
            return f(Range.upTo(c10, BoundType.forBoolean(z10)));
        }

        ImmutableSortedSet<C> f(Range<C> range) {
            return ImmutableRangeSet.this.subRangeSet((Range) range).asSet(this.f12719a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* renamed from: g */
        public ImmutableSortedSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11) {
            if (!z10 && !z11 && Range.compareOrThrow(c10, c11) == 0) {
                return ImmutableSortedSet.of();
            }
            return f(Range.range(c10, BoundType.forBoolean(z10), c11, BoundType.forBoolean(z11)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public int indexOf(Object obj) {
            if (contains(obj)) {
                Objects.requireNonNull(obj);
                Comparable comparable = (Comparable) obj;
                long j10 = 0;
                e9 it = ImmutableRangeSet.this.ranges.iterator();
                while (it.hasNext()) {
                    Range range = (Range) it.next();
                    if (range.contains(comparable)) {
                        return com.google.common.primitives.f.i(j10 + ContiguousSet.create(range, this.f12719a).indexOf(comparable));
                    }
                    j10 += ContiguousSet.create(range, this.f12719a).size();
                }
                throw new AssertionError("impossible");
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return ImmutableRangeSet.this.ranges.isPartialView();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* renamed from: m */
        public ImmutableSortedSet<C> tailSetImpl(C c10, boolean z10) {
            return f(Range.downTo(c10, BoundType.forBoolean(z10)));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Integer num = this.f12720b;
            if (num == null) {
                long j10 = 0;
                e9 it = ImmutableRangeSet.this.ranges.iterator();
                while (it.hasNext()) {
                    j10 += ContiguousSet.create((Range) it.next(), this.f12719a).size();
                    if (j10 >= 2147483647L) {
                        break;
                    }
                }
                num = Integer.valueOf(com.google.common.primitives.f.i(j10));
                this.f12720b = num;
            }
            return num.intValue();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return ImmutableRangeSet.this.ranges.toString();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return new c(ImmutableRangeSet.this.ranges, this.f12719a);
        }

        @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
        public e9<C> descendingIterator() {
            return new C0109b();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public e9<C> iterator() {
            return new a();
        }
    }

    /* loaded from: classes2.dex */
    private static class c<C extends Comparable> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<Range<C>> f12728a;

        /* renamed from: b  reason: collision with root package name */
        private final l3<C> f12729b;

        c(ImmutableList<Range<C>> immutableList, l3<C> l3Var) {
            this.f12728a = immutableList;
            this.f12729b = l3Var;
        }

        Object readResolve() {
            return new ImmutableRangeSet(this.f12728a).asSet(this.f12729b);
        }
    }

    /* loaded from: classes2.dex */
    public static class d<C extends Comparable<?>> {

        /* renamed from: a  reason: collision with root package name */
        private final List<Range<C>> f12730a = z5.g();

        public d<C> a(Range<C> range) {
            com.google.common.base.o.m(!range.isEmpty(), "range must not be empty, but was %s", range);
            this.f12730a.add(range);
            return this;
        }

        public d<C> b(Iterable<Range<C>> iterable) {
            for (Range<C> range : iterable) {
                a(range);
            }
            return this;
        }

        public ImmutableRangeSet<C> c() {
            ImmutableList.b bVar = new ImmutableList.b(this.f12730a.size());
            Collections.sort(this.f12730a, Range.rangeLexOrdering());
            z6 u10 = p5.u(this.f12730a.iterator());
            while (u10.hasNext()) {
                Range range = (Range) u10.next();
                while (u10.hasNext()) {
                    Range<C> range2 = (Range) u10.peek();
                    if (range.isConnected(range2)) {
                        com.google.common.base.o.n(range.intersection(range2).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", range, range2);
                        range = range.span((Range) u10.next());
                    }
                }
                bVar.a(range);
            }
            ImmutableList j10 = bVar.j();
            if (j10.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (j10.size() == 1 && ((Range) n5.i(j10)).equals(Range.all())) {
                return ImmutableRangeSet.all();
            }
            return new ImmutableRangeSet<>(j10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public d<C> d(d<C> dVar) {
            b(dVar.f12730a);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class e extends ImmutableList<Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f12731a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f12732b;

        /* renamed from: c  reason: collision with root package name */
        private final int f12733c;

        e() {
            boolean hasLowerBound = ((Range) ImmutableRangeSet.this.ranges.get(0)).hasLowerBound();
            this.f12731a = hasLowerBound;
            boolean hasUpperBound = ((Range) n5.g(ImmutableRangeSet.this.ranges)).hasUpperBound();
            this.f12732b = hasUpperBound;
            int size = ImmutableRangeSet.this.ranges.size() - 1;
            size = hasLowerBound ? size + 1 : size;
            this.f12733c = hasUpperBound ? size + 1 : size;
        }

        @Override // java.util.List
        /* renamed from: c */
        public Range<C> get(int i9) {
            g3<C> g3Var;
            g3<C> g3Var2;
            com.google.common.base.o.q(i9, this.f12733c);
            if (this.f12731a) {
                g3Var = i9 == 0 ? g3.c() : ((Range) ImmutableRangeSet.this.ranges.get(i9 - 1)).upperBound;
            } else {
                g3Var = ((Range) ImmutableRangeSet.this.ranges.get(i9)).upperBound;
            }
            if (this.f12732b && i9 == this.f12733c - 1) {
                g3Var2 = g3.a();
            } else {
                g3Var2 = ((Range) ImmutableRangeSet.this.ranges.get(i9 + (!this.f12731a ? 1 : 0))).lowerBound;
            }
            return Range.create(g3Var, g3Var2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f12733c;
        }
    }

    /* loaded from: classes2.dex */
    private static final class f<C extends Comparable> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<Range<C>> f12735a;

        f(ImmutableList<Range<C>> immutableList) {
            this.f12735a = immutableList;
        }

        Object readResolve() {
            if (this.f12735a.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (this.f12735a.equals(ImmutableList.of(Range.all()))) {
                return ImmutableRangeSet.all();
            }
            return new ImmutableRangeSet(this.f12735a);
        }
    }

    ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.ranges = immutableList;
    }

    static <C extends Comparable> ImmutableRangeSet<C> all() {
        return ALL;
    }

    public static <C extends Comparable<?>> d<C> builder() {
        return new d<>();
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(e7<C> e7Var) {
        com.google.common.base.o.s(e7Var);
        if (e7Var.isEmpty()) {
            return of();
        }
        if (e7Var.encloses(Range.all())) {
            return all();
        }
        if (e7Var instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) e7Var;
            if (!immutableRangeSet.isPartialView()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) e7Var.asRanges()));
    }

    private ImmutableList<Range<C>> intersectRanges(Range<C> range) {
        int size;
        if (!this.ranges.isEmpty() && !range.isEmpty()) {
            if (range.encloses(span())) {
                return this.ranges;
            }
            int a10 = range.hasLowerBound() ? g8.a(this.ranges, Range.upperBoundFn(), range.lowerBound, g8.c.f13085d, g8.b.f13079b) : 0;
            if (range.hasUpperBound()) {
                size = g8.a(this.ranges, Range.lowerBoundFn(), range.upperBound, g8.c.f13084c, g8.b.f13079b);
            } else {
                size = this.ranges.size();
            }
            int i9 = size - a10;
            if (i9 == 0) {
                return ImmutableList.of();
            }
            return new a(i9, a10, range);
        }
        return ImmutableList.of();
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of() {
        return EMPTY;
    }

    public static <E extends Comparable<? super E>> Collector<Range<E>, ?, ImmutableRangeSet<E>> toImmutableRangeSet() {
        return o2.U();
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> unionOf(Iterable<Range<C>> iterable) {
        return copyOf(TreeRangeSet.create(iterable));
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    @Deprecated
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.r
    @Deprecated
    public void addAll(e7<C> e7Var) {
        throw new UnsupportedOperationException();
    }

    public ImmutableSortedSet<C> asSet(l3<C> l3Var) {
        com.google.common.base.o.s(l3Var);
        if (isEmpty()) {
            return ImmutableSortedSet.of();
        }
        Range<C> canonical = span().canonical(l3Var);
        if (canonical.hasLowerBound()) {
            if (!canonical.hasUpperBound()) {
                try {
                    l3Var.d();
                } catch (NoSuchElementException unused) {
                    throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
                }
            }
            return new b(l3Var);
        }
        throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    public ImmutableRangeSet<C> difference(e7<C> e7Var) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(e7Var);
        return copyOf(create);
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    public boolean encloses(Range<C> range) {
        int b10 = g8.b(this.ranges, Range.lowerBoundFn(), range.lowerBound, y6.e(), g8.c.f13082a, g8.b.f13078a);
        return b10 != -1 && this.ranges.get(b10).encloses(range);
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ boolean enclosesAll(e7 e7Var) {
        return super.enclosesAll(e7Var);
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return d7.b(this, iterable);
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public ImmutableRangeSet<C> intersection(e7<C> e7Var) {
        TreeRangeSet create = TreeRangeSet.create(this);
        create.removeAll(e7Var.complement());
        return copyOf(create);
    }

    @Override // com.google.common.collect.r
    public boolean intersects(Range<C> range) {
        int b10 = g8.b(this.ranges, Range.lowerBoundFn(), range.lowerBound, y6.e(), g8.c.f13082a, g8.b.f13079b);
        if (b10 >= this.ranges.size() || !this.ranges.get(b10).isConnected(range) || this.ranges.get(b10).intersection(range).isEmpty()) {
            if (b10 > 0) {
                int i9 = b10 - 1;
                if (this.ranges.get(i9).isConnected(range) && !this.ranges.get(i9).intersection(range).isEmpty()) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    public boolean isEmpty() {
        return this.ranges.isEmpty();
    }

    boolean isPartialView() {
        return this.ranges.isPartialView();
    }

    @Override // com.google.common.collect.r
    public Range<C> rangeContaining(C c10) {
        int b10 = g8.b(this.ranges, Range.lowerBoundFn(), g3.d(c10), y6.e(), g8.c.f13082a, g8.b.f13078a);
        if (b10 != -1) {
            Range<C> range = this.ranges.get(b10);
            if (range.contains(c10)) {
                return range;
            }
            return null;
        }
        return null;
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    @Deprecated
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    @Deprecated
    public void removeAll(e7<C> e7Var) {
        throw new UnsupportedOperationException();
    }

    public Range<C> span() {
        if (!this.ranges.isEmpty()) {
            g3<C> g3Var = this.ranges.get(0).lowerBound;
            ImmutableList<Range<C>> immutableList = this.ranges;
            return Range.create(g3Var, immutableList.get(immutableList.size() - 1).upperBound);
        }
        throw new NoSuchElementException();
    }

    public ImmutableRangeSet<C> union(e7<C> e7Var) {
        return unionOf(n5.d(asRanges(), e7Var.asRanges()));
    }

    Object writeReplace() {
        return new f(this.ranges);
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        com.google.common.base.o.s(range);
        if (range.isEmpty()) {
            return of();
        }
        if (range.equals(Range.all())) {
            return all();
        }
        return new ImmutableRangeSet<>(ImmutableList.of(range));
    }

    @Override // com.google.common.collect.r
    @Deprecated
    public void addAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: asDescendingSetOfRanges */
    public ImmutableSet<Range<C>> m211asDescendingSetOfRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableSet.of();
        }
        return new o7(this.ranges.reverse(), Range.rangeLexOrdering().h());
    }

    @Override // com.google.common.collect.e7
    public ImmutableSet<Range<C>> asRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableSet.of();
        }
        return new o7(this.ranges, Range.rangeLexOrdering());
    }

    @Override // com.google.common.collect.e7
    public ImmutableRangeSet<C> complement() {
        ImmutableRangeSet<C> immutableRangeSet = this.complement;
        if (immutableRangeSet != null) {
            return immutableRangeSet;
        }
        if (this.ranges.isEmpty()) {
            ImmutableRangeSet<C> all = all();
            this.complement = all;
            return all;
        } else if (this.ranges.size() == 1 && this.ranges.get(0).equals(Range.all())) {
            ImmutableRangeSet<C> of2 = of();
            this.complement = of2;
            return of2;
        } else {
            ImmutableRangeSet<C> immutableRangeSet2 = new ImmutableRangeSet<>(new e(), this);
            this.complement = immutableRangeSet2;
            return immutableRangeSet2;
        }
    }

    @Override // com.google.common.collect.r
    @Deprecated
    public void removeAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.e7
    public ImmutableRangeSet<C> subRangeSet(Range<C> range) {
        if (!isEmpty()) {
            Range<C> span = span();
            if (range.encloses(span)) {
                return this;
            }
            if (range.isConnected(span)) {
                return new ImmutableRangeSet<>(intersectRanges(range));
            }
        }
        return of();
    }

    private ImmutableRangeSet(ImmutableList<Range<C>> immutableList, ImmutableRangeSet<C> immutableRangeSet) {
        this.ranges = immutableList;
        this.complement = immutableRangeSet;
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> copyOf(Iterable<Range<C>> iterable) {
        return new d().b(iterable).c();
    }
}
