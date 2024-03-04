package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.g8;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public class ImmutableRangeMap<K extends Comparable<?>, V> implements c7<K, V>, Serializable {
    private static final ImmutableRangeMap<Comparable<?>, Object> EMPTY = new ImmutableRangeMap<>(ImmutableList.of(), ImmutableList.of());
    private static final long serialVersionUID = 0;
    private final transient ImmutableList<Range<K>> ranges;
    private final transient ImmutableList<V> values;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends ImmutableList<Range<K>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f12707a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f12708b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Range f12709c;

        a(int i9, int i10, Range range) {
            this.f12707a = i9;
            this.f12708b = i10;
            this.f12709c = range;
        }

        @Override // java.util.List
        /* renamed from: c */
        public Range<K> get(int i9) {
            com.google.common.base.o.q(i9, this.f12707a);
            if (i9 != 0 && i9 != this.f12707a - 1) {
                return (Range) ImmutableRangeMap.this.ranges.get(i9 + this.f12708b);
            }
            return ((Range) ImmutableRangeMap.this.ranges.get(i9 + this.f12708b)).intersection(this.f12709c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f12707a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends ImmutableRangeMap<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Range f12711a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmutableRangeMap f12712b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ImmutableRangeMap immutableRangeMap, ImmutableList immutableList, ImmutableList immutableList2, Range range, ImmutableRangeMap immutableRangeMap2) {
            super(immutableList, immutableList2);
            this.f12711a = range;
            this.f12712b = immutableRangeMap2;
        }

        @Override // com.google.common.collect.ImmutableRangeMap
        /* renamed from: asDescendingMapOfRanges */
        public /* bridge */ /* synthetic */ Map mo209asDescendingMapOfRanges() {
            return super.mo209asDescendingMapOfRanges();
        }

        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.c7
        public /* bridge */ /* synthetic */ Map asMapOfRanges() {
            return super.asMapOfRanges();
        }

        @Override // com.google.common.collect.ImmutableRangeMap
        /* renamed from: subRangeMap */
        public ImmutableRangeMap<K, V> mo210subRangeMap(Range<K> range) {
            if (this.f12711a.isConnected(range)) {
                return this.f12712b.mo210subRangeMap((Range) range.intersection(this.f12711a));
            }
            return ImmutableRangeMap.of();
        }
    }

    /* loaded from: classes2.dex */
    public static final class c<K extends Comparable<?>, V> {

        /* renamed from: a  reason: collision with root package name */
        private final List<Map.Entry<Range<K>, V>> f12713a = z5.g();

        public ImmutableRangeMap<K, V> a() {
            Collections.sort(this.f12713a, Range.rangeLexOrdering().f());
            ImmutableList.b bVar = new ImmutableList.b(this.f12713a.size());
            ImmutableList.b bVar2 = new ImmutableList.b(this.f12713a.size());
            for (int i9 = 0; i9 < this.f12713a.size(); i9++) {
                Range<K> key = this.f12713a.get(i9).getKey();
                if (i9 > 0) {
                    Range<K> key2 = this.f12713a.get(i9 - 1).getKey();
                    if (key.isConnected(key2) && !key.intersection(key2).isEmpty()) {
                        String valueOf = String.valueOf(key2);
                        String valueOf2 = String.valueOf(key);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 47 + valueOf2.length());
                        sb2.append("Overlapping ranges: range ");
                        sb2.append(valueOf);
                        sb2.append(" overlaps with entry ");
                        sb2.append(valueOf2);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                }
                bVar.a(key);
                bVar2.a(this.f12713a.get(i9).getValue());
            }
            return new ImmutableRangeMap<>(bVar.j(), bVar2.j());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c<K, V> b(c<K, V> cVar) {
            this.f12713a.addAll(cVar.f12713a);
            return this;
        }

        public c<K, V> c(Range<K> range, V v10) {
            com.google.common.base.o.s(range);
            com.google.common.base.o.s(v10);
            com.google.common.base.o.m(!range.isEmpty(), "Range must not be empty, but was %s", range);
            this.f12713a.add(d6.g(range, v10));
            return this;
        }
    }

    /* loaded from: classes2.dex */
    private static class d<K extends Comparable<?>, V> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap<Range<K>, V> f12714a;

        d(ImmutableMap<Range<K>, V> immutableMap) {
            this.f12714a = immutableMap;
        }

        Object a() {
            c cVar = new c();
            e9<Map.Entry<Range<K>, V>> it = this.f12714a.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Range<K>, V> next = it.next();
                cVar.c(next.getKey(), next.getValue());
            }
            return cVar.a();
        }

        Object readResolve() {
            if (this.f12714a.isEmpty()) {
                return ImmutableRangeMap.of();
            }
            return a();
        }
    }

    ImmutableRangeMap(ImmutableList<Range<K>> immutableList, ImmutableList<V> immutableList2) {
        this.ranges = immutableList;
        this.values = immutableList2;
    }

    public static <K extends Comparable<?>, V> c<K, V> builder() {
        return new c<>();
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(c7<K, ? extends V> c7Var) {
        if (c7Var instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) c7Var;
        }
        Map<Range<K>, ? extends V> asMapOfRanges = c7Var.asMapOfRanges();
        ImmutableList.b bVar = new ImmutableList.b(asMapOfRanges.size());
        ImmutableList.b bVar2 = new ImmutableList.b(asMapOfRanges.size());
        for (Map.Entry<Range<K>, ? extends V> entry : asMapOfRanges.entrySet()) {
            bVar.a(entry.getKey());
            bVar2.a(entry.getValue());
        }
        return new ImmutableRangeMap<>(bVar.j(), bVar2.j());
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of() {
        return (ImmutableRangeMap<K, V>) EMPTY;
    }

    public static <T, K extends Comparable<? super K>, V> Collector<T, ?, ImmutableRangeMap<K, V>> toImmutableRangeMap(Function<? super T, Range<K>> function, Function<? super T, ? extends V> function2) {
        return o2.T(function, function2);
    }

    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        if (obj instanceof c7) {
            return asMapOfRanges().equals(((c7) obj).asMapOfRanges());
        }
        return false;
    }

    public V get(K k10) {
        int a10 = g8.a(this.ranges, Range.lowerBoundFn(), g3.d(k10), g8.c.f13082a, g8.b.f13078a);
        if (a10 != -1 && this.ranges.get(a10).contains(k10)) {
            return this.values.get(a10);
        }
        return null;
    }

    public Map.Entry<Range<K>, V> getEntry(K k10) {
        int a10 = g8.a(this.ranges, Range.lowerBoundFn(), g3.d(k10), g8.c.f13082a, g8.b.f13078a);
        if (a10 == -1) {
            return null;
        }
        Range<K> range = this.ranges.get(a10);
        if (range.contains(k10)) {
            return d6.g(range, this.values.get(a10));
        }
        return null;
    }

    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Deprecated
    public final void merge(Range<K> range, V v10, BiFunction<? super V, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void put(Range<K> range, V v10) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void putAll(c7<K, V> c7Var) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void putCoalescing(Range<K> range, V v10) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void remove(Range<K> range) {
        throw new UnsupportedOperationException();
    }

    public Range<K> span() {
        if (!this.ranges.isEmpty()) {
            ImmutableList<Range<K>> immutableList = this.ranges;
            return Range.create(this.ranges.get(0).lowerBound, immutableList.get(immutableList.size() - 1).upperBound);
        }
        throw new NoSuchElementException();
    }

    public String toString() {
        return asMapOfRanges().toString();
    }

    Object writeReplace() {
        return new d(asMapOfRanges());
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of(Range<K> range, V v10) {
        return new ImmutableRangeMap<>(ImmutableList.of(range), ImmutableList.of(v10));
    }

    @Override // 
    /* renamed from: asDescendingMapOfRanges */
    public ImmutableMap<Range<K>, V> mo209asDescendingMapOfRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableMap.of();
        }
        return new ImmutableSortedMap(new o7(this.ranges.reverse(), Range.rangeLexOrdering().h()), this.values.reverse());
    }

    @Override // com.google.common.collect.c7
    public ImmutableMap<Range<K>, V> asMapOfRanges() {
        if (this.ranges.isEmpty()) {
            return ImmutableMap.of();
        }
        return new ImmutableSortedMap(new o7(this.ranges, Range.rangeLexOrdering()), this.values);
    }

    @Override // 
    /* renamed from: subRangeMap */
    public ImmutableRangeMap<K, V> mo210subRangeMap(Range<K> range) {
        if (((Range) com.google.common.base.o.s(range)).isEmpty()) {
            return of();
        }
        if (this.ranges.isEmpty() || range.encloses(span())) {
            return this;
        }
        ImmutableList<Range<K>> immutableList = this.ranges;
        com.google.common.base.h upperBoundFn = Range.upperBoundFn();
        g3<K> g3Var = range.lowerBound;
        g8.c cVar = g8.c.f13085d;
        g8.b bVar = g8.b.f13079b;
        int a10 = g8.a(immutableList, upperBoundFn, g3Var, cVar, bVar);
        int a11 = g8.a(this.ranges, Range.lowerBoundFn(), range.upperBound, g8.c.f13082a, bVar);
        if (a10 >= a11) {
            return of();
        }
        return new b(this, new a(a11 - a10, a10, range), this.values.subList(a10, a11), range, this);
    }
}
