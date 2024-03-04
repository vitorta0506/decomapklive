package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class TreeRangeSet<C extends Comparable<?>> extends r<C> implements Serializable {
    private transient Set<Range<C>> asDescendingSetOfRanges;
    private transient Set<Range<C>> asRanges;
    private transient e7<C> complement;
    final NavigableMap<g3<C>, Range<C>> rangesByLowerBound;

    /* loaded from: classes2.dex */
    final class b extends q3<Range<C>> implements Set<Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        final Collection<Range<C>> f12862a;

        b(TreeRangeSet treeRangeSet, Collection<Range<C>> collection) {
            this.f12862a = collection;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return w7.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return w7.e(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.q3, com.google.common.collect.w3
        public Collection<Range<C>> delegate() {
            return this.f12862a;
        }
    }

    /* loaded from: classes2.dex */
    private final class c extends TreeRangeSet<C> {
        c() {
            super(new d(TreeRangeSet.this.rangesByLowerBound));
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r, com.google.common.collect.e7
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.e7
        public e7<C> complement() {
            return TreeRangeSet.this;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r
        public boolean contains(C c10) {
            return !TreeRangeSet.this.contains(c10);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r, com.google.common.collect.e7
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d<C extends Comparable<?>> extends q<g3<C>, Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableMap<g3<C>, Range<C>> f12864a;

        /* renamed from: b  reason: collision with root package name */
        private final NavigableMap<g3<C>, Range<C>> f12865b;

        /* renamed from: c  reason: collision with root package name */
        private final Range<g3<C>> f12866c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<Map.Entry<g3<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            g3<C> f12867c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ g3 f12868d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ z6 f12869e;

            a(g3 g3Var, z6 z6Var) {
                this.f12868d = g3Var;
                this.f12869e = z6Var;
                this.f12867c = g3Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<g3<C>, Range<C>> a() {
                Range create;
                if (!d.this.f12866c.upperBound.k(this.f12867c) && this.f12867c != g3.a()) {
                    if (this.f12869e.hasNext()) {
                        Range range = (Range) this.f12869e.next();
                        create = Range.create(this.f12867c, range.lowerBound);
                        this.f12867c = range.upperBound;
                    } else {
                        create = Range.create(this.f12867c, g3.a());
                        this.f12867c = g3.a();
                    }
                    return d6.g(create.lowerBound, create);
                }
                return (Map.Entry) b();
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.c<Map.Entry<g3<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            g3<C> f12871c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ g3 f12872d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ z6 f12873e;

            b(g3 g3Var, z6 z6Var) {
                this.f12872d = g3Var;
                this.f12873e = z6Var;
                this.f12871c = g3Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<g3<C>, Range<C>> a() {
                if (this.f12871c == g3.c()) {
                    return (Map.Entry) b();
                }
                if (this.f12873e.hasNext()) {
                    Range range = (Range) this.f12873e.next();
                    Range create = Range.create(range.upperBound, this.f12871c);
                    this.f12871c = range.lowerBound;
                    if (d.this.f12866c.lowerBound.k(create.lowerBound)) {
                        return d6.g(create.lowerBound, create);
                    }
                } else if (d.this.f12866c.lowerBound.k(g3.c())) {
                    Range create2 = Range.create(g3.c(), this.f12871c);
                    this.f12871c = g3.c();
                    return d6.g(g3.c(), create2);
                }
                return (Map.Entry) b();
            }
        }

        d(NavigableMap<g3<C>, Range<C>> navigableMap) {
            this(navigableMap, Range.all());
        }

        private NavigableMap<g3<C>, Range<C>> f(Range<g3<C>> range) {
            if (!this.f12866c.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new d(this.f12864a, range.intersection(this.f12866c));
        }

        @Override // com.google.common.collect.q
        Iterator<Map.Entry<g3<C>, Range<C>>> a() {
            g3<C> a10;
            g3<C> higherKey;
            if (this.f12866c.hasUpperBound()) {
                a10 = this.f12866c.upperEndpoint();
            } else {
                a10 = g3.a();
            }
            z6 u10 = p5.u(this.f12865b.headMap(a10, this.f12866c.hasUpperBound() && this.f12866c.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (u10.hasNext()) {
                if (((Range) u10.peek()).upperBound == g3.a()) {
                    higherKey = ((Range) u10.next()).lowerBound;
                } else {
                    higherKey = this.f12864a.higherKey(((Range) u10.peek()).upperBound);
                }
            } else if (this.f12866c.contains(g3.c()) && !this.f12864a.containsKey(g3.c())) {
                higherKey = this.f12864a.higherKey(g3.c());
            } else {
                return p5.i();
            }
            return new b((g3) com.google.common.base.j.a(higherKey, g3.a()), u10);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: c */
        public Range<C> get(Object obj) {
            if (obj instanceof g3) {
                try {
                    g3<C> g3Var = (g3) obj;
                    Map.Entry<g3<C>, Range<C>> firstEntry = tailMap(g3Var, true).firstEntry();
                    if (firstEntry != null && firstEntry.getKey().equals(g3Var)) {
                        return firstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.SortedMap
        public Comparator<? super g3<C>> comparator() {
            return y6.e();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: d */
        public NavigableMap<g3<C>, Range<C>> headMap(g3<C> g3Var, boolean z10) {
            return f(Range.upTo(g3Var, BoundType.forBoolean(z10)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: e */
        public NavigableMap<g3<C>, Range<C>> subMap(g3<C> g3Var, boolean z10, g3<C> g3Var2, boolean z11) {
            return f(Range.range(g3Var, BoundType.forBoolean(z10), g3Var2, BoundType.forBoolean(z11)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.i
        public Iterator<Map.Entry<g3<C>, Range<C>>> entryIterator() {
            Collection<Range<C>> values;
            g3 g3Var;
            if (this.f12866c.hasLowerBound()) {
                values = this.f12865b.tailMap(this.f12866c.lowerEndpoint(), this.f12866c.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                values = this.f12865b.values();
            }
            z6 u10 = p5.u(values.iterator());
            if (this.f12866c.contains(g3.c()) && (!u10.hasNext() || ((Range) u10.peek()).lowerBound != g3.c())) {
                g3Var = g3.c();
            } else if (u10.hasNext()) {
                g3Var = ((Range) u10.next()).upperBound;
            } else {
                return p5.i();
            }
            return new a(g3Var, u10);
        }

        @Override // java.util.NavigableMap
        /* renamed from: g */
        public NavigableMap<g3<C>, Range<C>> tailMap(g3<C> g3Var, boolean z10) {
            return f(Range.downTo(g3Var, BoundType.forBoolean(z10)));
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public int size() {
            return p5.A(entryIterator());
        }

        private d(NavigableMap<g3<C>, Range<C>> navigableMap, Range<g3<C>> range) {
            this.f12864a = navigableMap;
            this.f12865b = new e(navigableMap);
            this.f12866c = range;
        }
    }

    /* loaded from: classes2.dex */
    private final class f extends TreeRangeSet<C> {

        /* renamed from: a  reason: collision with root package name */
        private final Range<C> f12881a;

        f(Range<C> range) {
            super(new g(Range.all(), range, TreeRangeSet.this.rangesByLowerBound));
            this.f12881a = range;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r, com.google.common.collect.e7
        public void add(Range<C> range) {
            com.google.common.base.o.n(this.f12881a.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.f12881a);
            TreeRangeSet.this.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r
        public void clear() {
            TreeRangeSet.this.remove(this.f12881a);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r
        public boolean contains(C c10) {
            return this.f12881a.contains(c10) && TreeRangeSet.this.contains(c10);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r, com.google.common.collect.e7
        public boolean encloses(Range<C> range) {
            Range rangeEnclosing;
            return (this.f12881a.isEmpty() || !this.f12881a.encloses(range) || (rangeEnclosing = TreeRangeSet.this.rangeEnclosing(range)) == null || rangeEnclosing.intersection(this.f12881a).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r
        public Range<C> rangeContaining(C c10) {
            Range<C> rangeContaining;
            if (this.f12881a.contains(c10) && (rangeContaining = TreeRangeSet.this.rangeContaining(c10)) != null) {
                return rangeContaining.intersection(this.f12881a);
            }
            return null;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.r, com.google.common.collect.e7
        public void remove(Range<C> range) {
            if (range.isConnected(this.f12881a)) {
                TreeRangeSet.this.remove(range.intersection(this.f12881a));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.e7
        public e7<C> subRangeSet(Range<C> range) {
            if (range.encloses(this.f12881a)) {
                return this;
            }
            if (range.isConnected(this.f12881a)) {
                return new f(this.f12881a.intersection(range));
            }
            return ImmutableRangeSet.of();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<C extends Comparable<?>> extends q<g3<C>, Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        private final Range<g3<C>> f12883a;

        /* renamed from: b  reason: collision with root package name */
        private final Range<C> f12884b;

        /* renamed from: c  reason: collision with root package name */
        private final NavigableMap<g3<C>, Range<C>> f12885c;

        /* renamed from: d  reason: collision with root package name */
        private final NavigableMap<g3<C>, Range<C>> f12886d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<Map.Entry<g3<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f12887c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ g3 f12888d;

            a(Iterator it, g3 g3Var) {
                this.f12887c = it;
                this.f12888d = g3Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<g3<C>, Range<C>> a() {
                if (!this.f12887c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f12887c.next();
                if (this.f12888d.k(range.lowerBound)) {
                    return (Map.Entry) b();
                }
                Range intersection = range.intersection(g.this.f12884b);
                return d6.g(intersection.lowerBound, intersection);
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.c<Map.Entry<g3<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f12890c;

            b(Iterator it) {
                this.f12890c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<g3<C>, Range<C>> a() {
                if (!this.f12890c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f12890c.next();
                if (g.this.f12884b.lowerBound.compareTo(range.upperBound) >= 0) {
                    return (Map.Entry) b();
                }
                Range intersection = range.intersection(g.this.f12884b);
                if (g.this.f12883a.contains(intersection.lowerBound)) {
                    return d6.g(intersection.lowerBound, intersection);
                }
                return (Map.Entry) b();
            }
        }

        private NavigableMap<g3<C>, Range<C>> g(Range<g3<C>> range) {
            if (!range.isConnected(this.f12883a)) {
                return ImmutableSortedMap.of();
            }
            return new g(this.f12883a.intersection(range), this.f12884b, this.f12885c);
        }

        @Override // com.google.common.collect.q
        Iterator<Map.Entry<g3<C>, Range<C>>> a() {
            if (this.f12884b.isEmpty()) {
                return p5.i();
            }
            g3 g3Var = (g3) y6.e().d(this.f12883a.upperBound, g3.d(this.f12884b.upperBound));
            return new b(this.f12885c.headMap((g3) g3Var.i(), g3Var.o() == BoundType.CLOSED).descendingMap().values().iterator());
        }

        @Override // java.util.SortedMap
        public Comparator<? super g3<C>> comparator() {
            return y6.e();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Range<C> get(Object obj) {
            if (obj instanceof g3) {
                try {
                    g3<C> g3Var = (g3) obj;
                    if (this.f12883a.contains(g3Var) && g3Var.compareTo(this.f12884b.lowerBound) >= 0 && g3Var.compareTo(this.f12884b.upperBound) < 0) {
                        if (g3Var.equals(this.f12884b.lowerBound)) {
                            Range range = (Range) d6.A(this.f12885c.floorEntry(g3Var));
                            if (range != null && range.upperBound.compareTo(this.f12884b.lowerBound) > 0) {
                                return range.intersection(this.f12884b);
                            }
                        } else {
                            Range range2 = (Range) this.f12885c.get(g3Var);
                            if (range2 != null) {
                                return range2.intersection(this.f12884b);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: e */
        public NavigableMap<g3<C>, Range<C>> headMap(g3<C> g3Var, boolean z10) {
            return g(Range.upTo(g3Var, BoundType.forBoolean(z10)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.i
        public Iterator<Map.Entry<g3<C>, Range<C>>> entryIterator() {
            Iterator<Range<C>> it;
            if (this.f12884b.isEmpty()) {
                return p5.i();
            }
            if (this.f12883a.upperBound.k(this.f12884b.lowerBound)) {
                return p5.i();
            }
            if (this.f12883a.lowerBound.k(this.f12884b.lowerBound)) {
                it = this.f12886d.tailMap(this.f12884b.lowerBound, false).values().iterator();
            } else {
                it = this.f12885c.tailMap(this.f12883a.lowerBound.i(), this.f12883a.lowerBoundType() == BoundType.CLOSED).values().iterator();
            }
            return new a(it, (g3) y6.e().d(this.f12883a.upperBound, g3.d(this.f12884b.upperBound)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: f */
        public NavigableMap<g3<C>, Range<C>> subMap(g3<C> g3Var, boolean z10, g3<C> g3Var2, boolean z11) {
            return g(Range.range(g3Var, BoundType.forBoolean(z10), g3Var2, BoundType.forBoolean(z11)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: h */
        public NavigableMap<g3<C>, Range<C>> tailMap(g3<C> g3Var, boolean z10) {
            return g(Range.downTo(g3Var, BoundType.forBoolean(z10)));
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public int size() {
            return p5.A(entryIterator());
        }

        private g(Range<g3<C>> range, Range<C> range2, NavigableMap<g3<C>, Range<C>> navigableMap) {
            this.f12883a = (Range) com.google.common.base.o.s(range);
            this.f12884b = (Range) com.google.common.base.o.s(range2);
            this.f12885c = (NavigableMap) com.google.common.base.o.s(navigableMap);
            this.f12886d = new e(navigableMap);
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Range<C> rangeEnclosing(Range<C> range) {
        com.google.common.base.o.s(range);
        Map.Entry<g3<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        if (floorEntry == null || !floorEntry.getValue().encloses(range)) {
            return null;
        }
        return floorEntry.getValue();
    }

    private void replaceRangeWithSameLowerBound(Range<C> range) {
        if (range.isEmpty()) {
            this.rangesByLowerBound.remove(range.lowerBound);
        } else {
            this.rangesByLowerBound.put(range.lowerBound, range);
        }
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    public void add(Range<C> range) {
        com.google.common.base.o.s(range);
        if (range.isEmpty()) {
            return;
        }
        g3<C> g3Var = range.lowerBound;
        g3<C> g3Var2 = range.upperBound;
        Map.Entry<g3<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(g3Var);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.upperBound.compareTo(g3Var) >= 0) {
                if (value.upperBound.compareTo(g3Var2) >= 0) {
                    g3Var2 = value.upperBound;
                }
                g3Var = value.lowerBound;
            }
        }
        Map.Entry<g3<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(g3Var2);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (value2.upperBound.compareTo(g3Var2) >= 0) {
                g3Var2 = value2.upperBound;
            }
        }
        this.rangesByLowerBound.subMap(g3Var, g3Var2).clear();
        replaceRangeWithSameLowerBound(Range.create(g3Var, g3Var2));
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ void addAll(e7 e7Var) {
        super.addAll(e7Var);
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ void addAll(Iterable iterable) {
        d7.a(this, iterable);
    }

    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.asDescendingSetOfRanges;
        if (set == null) {
            b bVar = new b(this, this.rangesByLowerBound.descendingMap().values());
            this.asDescendingSetOfRanges = bVar;
            return bVar;
        }
        return set;
    }

    @Override // com.google.common.collect.e7
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.asRanges;
        if (set == null) {
            b bVar = new b(this, this.rangesByLowerBound.values());
            this.asRanges = bVar;
            return bVar;
        }
        return set;
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.e7
    public e7<C> complement() {
        e7<C> e7Var = this.complement;
        if (e7Var == null) {
            c cVar = new c();
            this.complement = cVar;
            return cVar;
        }
        return e7Var;
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    public boolean encloses(Range<C> range) {
        com.google.common.base.o.s(range);
        Map.Entry<g3<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.lowerBound);
        return floorEntry != null && floorEntry.getValue().encloses(range);
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

    @Override // com.google.common.collect.r
    public boolean intersects(Range<C> range) {
        com.google.common.base.o.s(range);
        Map.Entry<g3<C>, Range<C>> ceilingEntry = this.rangesByLowerBound.ceilingEntry(range.lowerBound);
        if (ceilingEntry == null || !ceilingEntry.getValue().isConnected(range) || ceilingEntry.getValue().intersection(range).isEmpty()) {
            Map.Entry<g3<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
            return (lowerEntry == null || !lowerEntry.getValue().isConnected(range) || lowerEntry.getValue().intersection(range).isEmpty()) ? false : true;
        }
        return true;
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.r
    public Range<C> rangeContaining(C c10) {
        com.google.common.base.o.s(c10);
        Map.Entry<g3<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(g3.d(c10));
        if (floorEntry == null || !floorEntry.getValue().contains(c10)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    public void remove(Range<C> range) {
        com.google.common.base.o.s(range);
        if (range.isEmpty()) {
            return;
        }
        Map.Entry<g3<C>, Range<C>> lowerEntry = this.rangesByLowerBound.lowerEntry(range.lowerBound);
        if (lowerEntry != null) {
            Range<C> value = lowerEntry.getValue();
            if (value.upperBound.compareTo(range.lowerBound) >= 0) {
                if (range.hasUpperBound() && value.upperBound.compareTo(range.upperBound) >= 0) {
                    replaceRangeWithSameLowerBound(Range.create(range.upperBound, value.upperBound));
                }
                replaceRangeWithSameLowerBound(Range.create(value.lowerBound, range.lowerBound));
            }
        }
        Map.Entry<g3<C>, Range<C>> floorEntry = this.rangesByLowerBound.floorEntry(range.upperBound);
        if (floorEntry != null) {
            Range<C> value2 = floorEntry.getValue();
            if (range.hasUpperBound() && value2.upperBound.compareTo(range.upperBound) >= 0) {
                replaceRangeWithSameLowerBound(Range.create(range.upperBound, value2.upperBound));
            }
        }
        this.rangesByLowerBound.subMap(range.lowerBound, range.upperBound).clear();
    }

    @Override // com.google.common.collect.r, com.google.common.collect.e7
    public /* bridge */ /* synthetic */ void removeAll(e7 e7Var) {
        super.removeAll(e7Var);
    }

    @Override // com.google.common.collect.r
    public /* bridge */ /* synthetic */ void removeAll(Iterable iterable) {
        d7.c(this, iterable);
    }

    public Range<C> span() {
        Map.Entry<g3<C>, Range<C>> firstEntry = this.rangesByLowerBound.firstEntry();
        Map.Entry<g3<C>, Range<C>> lastEntry = this.rangesByLowerBound.lastEntry();
        if (firstEntry != null && lastEntry != null) {
            return Range.create(firstEntry.getValue().lowerBound, lastEntry.getValue().upperBound);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.e7
    public e7<C> subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new f(range);
    }

    private TreeRangeSet(NavigableMap<g3<C>, Range<C>> navigableMap) {
        this.rangesByLowerBound = navigableMap;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(e7<C> e7Var) {
        TreeRangeSet<C> create = create();
        create.addAll(e7Var);
        return create;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class e<C extends Comparable<?>> extends q<g3<C>, Range<C>> {

        /* renamed from: a  reason: collision with root package name */
        private final NavigableMap<g3<C>, Range<C>> f12875a;

        /* renamed from: b  reason: collision with root package name */
        private final Range<g3<C>> f12876b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends com.google.common.collect.c<Map.Entry<g3<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Iterator f12877c;

            a(Iterator it) {
                this.f12877c = it;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<g3<C>, Range<C>> a() {
                if (!this.f12877c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f12877c.next();
                if (e.this.f12876b.upperBound.k(range.upperBound)) {
                    return (Map.Entry) b();
                }
                return d6.g(range.upperBound, range);
            }
        }

        /* loaded from: classes2.dex */
        class b extends com.google.common.collect.c<Map.Entry<g3<C>, Range<C>>> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ z6 f12879c;

            b(z6 z6Var) {
                this.f12879c = z6Var;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<g3<C>, Range<C>> a() {
                if (!this.f12879c.hasNext()) {
                    return (Map.Entry) b();
                }
                Range range = (Range) this.f12879c.next();
                if (e.this.f12876b.lowerBound.k(range.upperBound)) {
                    return d6.g(range.upperBound, range);
                }
                return (Map.Entry) b();
            }
        }

        e(NavigableMap<g3<C>, Range<C>> navigableMap) {
            this.f12875a = navigableMap;
            this.f12876b = Range.all();
        }

        private NavigableMap<g3<C>, Range<C>> f(Range<g3<C>> range) {
            if (range.isConnected(this.f12876b)) {
                return new e(this.f12875a, range.intersection(this.f12876b));
            }
            return ImmutableSortedMap.of();
        }

        @Override // com.google.common.collect.q
        Iterator<Map.Entry<g3<C>, Range<C>>> a() {
            Collection<Range<C>> values;
            if (this.f12876b.hasUpperBound()) {
                values = this.f12875a.headMap(this.f12876b.upperEndpoint(), false).descendingMap().values();
            } else {
                values = this.f12875a.descendingMap().values();
            }
            z6 u10 = p5.u(values.iterator());
            if (u10.hasNext() && this.f12876b.upperBound.k(((Range) u10.peek()).upperBound)) {
                u10.next();
            }
            return new b(u10);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: c */
        public Range<C> get(Object obj) {
            Map.Entry<g3<C>, Range<C>> lowerEntry;
            if (obj instanceof g3) {
                try {
                    g3<C> g3Var = (g3) obj;
                    if (this.f12876b.contains(g3Var) && (lowerEntry = this.f12875a.lowerEntry(g3Var)) != null && lowerEntry.getValue().upperBound.equals(g3Var)) {
                        return lowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.SortedMap
        public Comparator<? super g3<C>> comparator() {
            return y6.e();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.NavigableMap
        /* renamed from: d */
        public NavigableMap<g3<C>, Range<C>> headMap(g3<C> g3Var, boolean z10) {
            return f(Range.upTo(g3Var, BoundType.forBoolean(z10)));
        }

        @Override // java.util.NavigableMap
        /* renamed from: e */
        public NavigableMap<g3<C>, Range<C>> subMap(g3<C> g3Var, boolean z10, g3<C> g3Var2, boolean z11) {
            return f(Range.range(g3Var, BoundType.forBoolean(z10), g3Var2, BoundType.forBoolean(z11)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.i
        public Iterator<Map.Entry<g3<C>, Range<C>>> entryIterator() {
            Iterator<Range<C>> it;
            if (!this.f12876b.hasLowerBound()) {
                it = this.f12875a.values().iterator();
            } else {
                Map.Entry<g3<C>, Range<C>> lowerEntry = this.f12875a.lowerEntry(this.f12876b.lowerEndpoint());
                if (lowerEntry == null) {
                    it = this.f12875a.values().iterator();
                } else if (this.f12876b.lowerBound.k(lowerEntry.getValue().upperBound)) {
                    it = this.f12875a.tailMap(lowerEntry.getKey(), true).values().iterator();
                } else {
                    it = this.f12875a.tailMap(this.f12876b.lowerEndpoint(), true).values().iterator();
                }
            }
            return new a(it);
        }

        @Override // java.util.NavigableMap
        /* renamed from: g */
        public NavigableMap<g3<C>, Range<C>> tailMap(g3<C> g3Var, boolean z10) {
            return f(Range.downTo(g3Var, BoundType.forBoolean(z10)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            if (this.f12876b.equals(Range.all())) {
                return this.f12875a.isEmpty();
            }
            return !entryIterator().hasNext();
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public int size() {
            if (this.f12876b.equals(Range.all())) {
                return this.f12875a.size();
            }
            return p5.A(entryIterator());
        }

        private e(NavigableMap<g3<C>, Range<C>> navigableMap, Range<g3<C>> range) {
            this.f12875a = navigableMap;
            this.f12876b = range;
        }
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> create = create();
        create.addAll(iterable);
        return create;
    }
}
