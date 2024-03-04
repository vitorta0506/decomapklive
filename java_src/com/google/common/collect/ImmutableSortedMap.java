package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSortedMap;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.SortedMap;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public final class ImmutableSortedMap<K, V> extends c5<K, V> implements NavigableMap<K, V> {
    private static final long serialVersionUID = 0;
    private transient ImmutableSortedMap<K, V> descendingMap;
    private final transient o7<K> keySet;
    private final transient ImmutableList<V> valueList;
    private static final Comparator<Comparable> NATURAL_ORDER = y6.e();
    private static final ImmutableSortedMap<Comparable, Object> NATURAL_EMPTY_MAP = new ImmutableSortedMap<>(ImmutableSortedSet.emptySet(y6.e()), ImmutableList.of());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Comparator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f12750a;

        a(Comparator comparator) {
            this.f12750a = comparator;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Map.Entry<K, V> entry, Map.Entry<K, V> entry2) {
            Objects.requireNonNull(entry);
            Objects.requireNonNull(entry2);
            return this.f12750a.compare(entry.getKey(), entry2.getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends n4<K, V> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends f4<Map.Entry<K, V>> {
            a() {
            }

            @Override // com.google.common.collect.f4
            ImmutableCollection<Map.Entry<K, V>> c() {
                return b.this;
            }

            @Override // java.util.List
            /* renamed from: d */
            public Map.Entry<K, V> get(int i9) {
                return new AbstractMap.SimpleImmutableEntry(ImmutableSortedMap.this.keySet.asList().get(i9), ImmutableSortedMap.this.valueList.get(i9));
            }

            @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
            public Spliterator<Map.Entry<K, V>> spliterator() {
                return s2.c(size(), 1297, new IntFunction() { // from class: com.google.common.collect.b5
                    @Override // java.util.function.IntFunction
                    public final Object apply(int i9) {
                        return ImmutableSortedMap.b.a.this.get(i9);
                    }
                });
            }
        }

        b() {
        }

        @Override // com.google.common.collect.n4
        ImmutableMap<K, V> c() {
            return ImmutableSortedMap.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.b
        public ImmutableList<Map.Entry<K, V>> createAsList() {
            return new a();
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super Map.Entry<K, V>> consumer) {
            asList().forEach(consumer);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
        public Spliterator<Map.Entry<K, V>> spliterator() {
            return asList().spliterator();
        }

        @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public e9<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    /* loaded from: classes2.dex */
    public static class c<K, V> extends ImmutableMap.b<K, V> {

        /* renamed from: e  reason: collision with root package name */
        private final Comparator<? super K> f12753e;

        public c(Comparator<? super K> comparator) {
            this.f12753e = (Comparator) com.google.common.base.o.s(comparator);
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: l */
        public ImmutableSortedMap<K, V> a() {
            return d();
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @Deprecated
        /* renamed from: m */
        public final ImmutableSortedMap<K, V> c() {
            throw new UnsupportedOperationException("ImmutableSortedMap.Builder does not yet implement buildKeepingLast()");
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: n */
        public ImmutableSortedMap<K, V> d() {
            int i9 = this.f12673c;
            if (i9 != 0) {
                if (i9 != 1) {
                    return ImmutableSortedMap.fromEntries(this.f12753e, false, this.f12672b, i9);
                }
                Map.Entry<K, V> entry = this.f12672b[0];
                Objects.requireNonNull(entry);
                Map.Entry<K, V> entry2 = entry;
                return ImmutableSortedMap.of(this.f12753e, entry2.getKey(), entry2.getValue());
            }
            return ImmutableSortedMap.emptyMap(this.f12753e);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: o */
        public c<K, V> e(ImmutableMap.b<K, V> bVar) {
            super.e(bVar);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: p */
        public c<K, V> h(K k10, V v10) {
            super.h(k10, v10);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: q */
        public c<K, V> i(Map.Entry<? extends K, ? extends V> entry) {
            super.i(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: r */
        public c<K, V> j(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.j(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: s */
        public c<K, V> k(Map<? extends K, ? extends V> map) {
            super.k(map);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    private static class d<K, V> extends ImmutableMap.e<K, V> {
        private static final long serialVersionUID = 0;

        /* renamed from: c  reason: collision with root package name */
        private final Comparator<? super K> f12754c;

        d(ImmutableSortedMap<K, V> immutableSortedMap) {
            super(immutableSortedMap);
            this.f12754c = immutableSortedMap.comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.e
        /* renamed from: c */
        public c<K, V> b(int i9) {
            return new c<>(this.f12754c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedMap(o7<K> o7Var, ImmutableList<V> immutableList) {
        this(o7Var, immutableList, null);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        return copyOfInternal(map, (y6) NATURAL_ORDER);
    }

    private static <K, V> ImmutableSortedMap<K, V> copyOfInternal(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        boolean z10 = false;
        if (map instanceof SortedMap) {
            Comparator<? super K> comparator2 = ((SortedMap) map).comparator();
            if (comparator2 != null) {
                z10 = comparator.equals(comparator2);
            } else if (comparator == NATURAL_ORDER) {
                z10 = true;
            }
        }
        if (z10 && (map instanceof ImmutableSortedMap)) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) map;
            if (!immutableSortedMap.isPartialView()) {
                return immutableSortedMap;
            }
        }
        return fromEntries(comparator, z10, map.entrySet());
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOfSorted(SortedMap<K, ? extends V> sortedMap) {
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = NATURAL_ORDER;
        }
        if (sortedMap instanceof ImmutableSortedMap) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) sortedMap;
            if (!immutableSortedMap.isPartialView()) {
                return immutableSortedMap;
            }
        }
        return fromEntries(comparator, true, sortedMap.entrySet());
    }

    static <K, V> ImmutableSortedMap<K, V> emptyMap(Comparator<? super K> comparator) {
        if (y6.e().equals(comparator)) {
            return of();
        }
        return new ImmutableSortedMap<>(ImmutableSortedSet.emptySet(comparator), ImmutableList.of());
    }

    private static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> fromEntries(Map.Entry<K, V>... entryArr) {
        return fromEntries(y6.e(), false, entryArr, entryArr.length);
    }

    private ImmutableSortedMap<K, V> getSubMap(int i9, int i10) {
        if (i9 == 0 && i10 == size()) {
            return this;
        }
        if (i9 == i10) {
            return emptyMap(comparator());
        }
        return new ImmutableSortedMap<>(this.keySet.c(i9, i10), this.valueList.subList(i9, i10));
    }

    public static <K extends Comparable<?>, V> c<K, V> naturalOrder() {
        return new c<>(y6.e());
    }

    public static <K, V> ImmutableSortedMap<K, V> of() {
        return (ImmutableSortedMap<K, V>) NATURAL_EMPTY_MAP;
    }

    public static <K, V> c<K, V> orderedBy(Comparator<K> comparator) {
        return new c<>(comparator);
    }

    public static <K extends Comparable<?>, V> c<K, V> reverseOrder() {
        return new c<>(y6.e().h());
    }

    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> toImmutableSortedMap(Comparator<? super K> comparator, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return o2.X(comparator, function, function2);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k10) {
        return tailMap((ImmutableSortedMap<K, V>) k10, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k10) {
        return (K) d6.k(ceilingEntry(k10));
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return keySet().comparator();
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return isEmpty() ? ImmutableSet.of() : new b();
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> createValues() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(0);
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return keySet().first();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k10) {
        return headMap((ImmutableSortedMap<K, V>) k10, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k10) {
        return (K) d6.k(floorEntry(k10));
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        com.google.common.base.o.s(biConsumer);
        ImmutableList asList = this.keySet.asList();
        for (int i9 = 0; i9 < size(); i9++) {
            biConsumer.accept((Object) asList.get(i9), (V) this.valueList.get(i9));
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        int indexOf = this.keySet.indexOf(obj);
        if (indexOf == -1) {
            return null;
        }
        return this.valueList.get(indexOf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap headMap(Object obj, boolean z10) {
        return headMap((ImmutableSortedMap<K, V>) obj, z10);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k10) {
        return tailMap((ImmutableSortedMap<K, V>) k10, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k10) {
        return (K) d6.k(higherEntry(k10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return this.keySet.isPartialView() || this.valueList.isPartialView();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(size() - 1);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return keySet().last();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k10) {
        return headMap((ImmutableSortedMap<K, V>) k10, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k10) {
        return (K) d6.k(lowerEntry(k10));
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public int size() {
        return this.valueList.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
        return subMap((boolean) obj, z10, (boolean) obj2, z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap tailMap(Object obj, boolean z10) {
        return tailMap((ImmutableSortedMap<K, V>) obj, z10);
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new d(this);
    }

    ImmutableSortedMap(o7<K> o7Var, ImmutableList<V> immutableList, ImmutableSortedMap<K, V> immutableSortedMap) {
        this.keySet = o7Var;
        this.valueList = immutableList;
        this.descendingMap = immutableSortedMap;
    }

    private static <K, V> ImmutableSortedMap<K, V> fromEntries(Comparator<? super K> comparator, boolean z10, Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) n5.n(iterable, ImmutableMap.EMPTY_ENTRY_ARRAY);
        return fromEntries(comparator, z10, entryArr, entryArr.length);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj) {
        return of(y6.e(), comparable, obj);
    }

    public static <T, K, V> Collector<T, ?, ImmutableSortedMap<K, V>> toImmutableSortedMap(Comparator<? super K> comparator, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        return o2.Y(comparator, function, function2, binaryOperator);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> descendingKeySet() {
        return this.keySet.descendingSet();
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> descendingMap() {
        ImmutableSortedMap<K, V> immutableSortedMap = this.descendingMap;
        if (immutableSortedMap == null) {
            if (isEmpty()) {
                return emptyMap(y6.a(comparator()).h());
            }
            return new ImmutableSortedMap<>((o7) this.keySet.descendingSet(), this.valueList.reverse(), this);
        }
        return immutableSortedMap;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap((ImmutableSortedMap<K, V>) obj);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> navigableKeySet() {
        return this.keySet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap((ImmutableSortedMap<K, V>) obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableCollection<V> values() {
        return this.valueList;
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return copyOfInternal(map, (Comparator) com.google.common.base.o.s(comparator));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> ImmutableSortedMap<K, V> of(Comparator<? super K> comparator, K k10, V v10) {
        return new ImmutableSortedMap<>(new o7(ImmutableList.of(k10), (Comparator) com.google.common.base.o.s(comparator)), ImmutableList.of(v10));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> headMap(K k10) {
        return headMap((ImmutableSortedMap<K, V>) k10, false);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSortedSet<K> keySet() {
        return this.keySet;
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> subMap(K k10, K k11) {
        return subMap((boolean) k10, true, (boolean) k11, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> tailMap(K k10) {
        return tailMap((ImmutableSortedMap<K, V>) k10, true);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return copyOf(iterable, (y6) NATURAL_ORDER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> ImmutableSortedMap<K, V> fromEntries(Comparator<? super K> comparator, boolean z10, Map.Entry<K, V>[] entryArr, int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                Object[] objArr = new Object[i9];
                Object[] objArr2 = new Object[i9];
                if (z10) {
                    for (int i10 = 0; i10 < i9; i10++) {
                        Map.Entry<K, V> entry = entryArr[i10];
                        Objects.requireNonNull(entry);
                        Map.Entry<K, V> entry2 = entry;
                        K key = entry2.getKey();
                        V value = entry2.getValue();
                        p2.a(key, value);
                        objArr[i10] = key;
                        objArr2[i10] = value;
                    }
                } else {
                    Arrays.sort(entryArr, 0, i9, new a(comparator));
                    Map.Entry<K, V> entry3 = entryArr[0];
                    Objects.requireNonNull(entry3);
                    Map.Entry<K, V> entry4 = entry3;
                    Object key2 = entry4.getKey();
                    objArr[0] = key2;
                    objArr2[0] = entry4.getValue();
                    p2.a(objArr[0], objArr2[0]);
                    int i11 = 1;
                    while (i11 < i9) {
                        Map.Entry<K, V> entry5 = entryArr[i11 - 1];
                        Objects.requireNonNull(entry5);
                        Map.Entry<K, V> entry6 = entry5;
                        Map.Entry<K, V> entry7 = entryArr[i11];
                        Objects.requireNonNull(entry7);
                        Map.Entry<K, V> entry8 = entry7;
                        Object key3 = entry8.getKey();
                        V value2 = entry8.getValue();
                        p2.a(key3, value2);
                        objArr[i11] = key3;
                        objArr2[i11] = value2;
                        ImmutableMap.checkNoConflict(comparator.compare(key2, key3) != 0, "key", entry6, entry8);
                        i11++;
                        key2 = key3;
                    }
                }
                return new ImmutableSortedMap<>(new o7(new j7(objArr), comparator), new j7(objArr2));
            }
            Map.Entry<K, V> entry9 = entryArr[0];
            Objects.requireNonNull(entry9);
            Map.Entry<K, V> entry10 = entry9;
            return of(comparator, entry10.getKey(), entry10.getValue());
        }
        return emptyMap(comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> headMap(K k10, boolean z10) {
        return getSubMap(0, this.keySet.d(com.google.common.base.o.s(k10), z10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> subMap(K k10, boolean z10, K k11, boolean z11) {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(k11);
        com.google.common.base.o.n(comparator().compare(k10, k11) <= 0, "expected fromKey <= toKey but %s > %s", k10, k11);
        return headMap((ImmutableSortedMap<K, V>) k11, z11).tailMap((ImmutableSortedMap<K, V>) k10, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> tailMap(K k10, boolean z10) {
        return getSubMap(this.keySet.f(com.google.common.base.o.s(k10), z10), size());
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable, Comparator<? super K> comparator) {
        return fromEntries((Comparator) com.google.common.base.o.s(comparator), false, iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3), ImmutableMap.entryOf(comparable4, obj4));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3), ImmutableMap.entryOf(comparable4, obj4), ImmutableMap.entryOf(comparable5, obj5));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3), ImmutableMap.entryOf(comparable4, obj4), ImmutableMap.entryOf(comparable5, obj5), ImmutableMap.entryOf(comparable6, obj6));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3), ImmutableMap.entryOf(comparable4, obj4), ImmutableMap.entryOf(comparable5, obj5), ImmutableMap.entryOf(comparable6, obj6), ImmutableMap.entryOf(comparable7, obj7));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3), ImmutableMap.entryOf(comparable4, obj4), ImmutableMap.entryOf(comparable5, obj5), ImmutableMap.entryOf(comparable6, obj6), ImmutableMap.entryOf(comparable7, obj7), ImmutableMap.entryOf(comparable8, obj8));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3), ImmutableMap.entryOf(comparable4, obj4), ImmutableMap.entryOf(comparable5, obj5), ImmutableMap.entryOf(comparable6, obj6), ImmutableMap.entryOf(comparable7, obj7), ImmutableMap.entryOf(comparable8, obj8), ImmutableMap.entryOf(comparable9, obj9));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9, Comparable comparable10, Object obj10) {
        return fromEntries(ImmutableMap.entryOf(comparable, obj), ImmutableMap.entryOf(comparable2, obj2), ImmutableMap.entryOf(comparable3, obj3), ImmutableMap.entryOf(comparable4, obj4), ImmutableMap.entryOf(comparable5, obj5), ImmutableMap.entryOf(comparable6, obj6), ImmutableMap.entryOf(comparable7, obj7), ImmutableMap.entryOf(comparable8, obj8), ImmutableMap.entryOf(comparable9, obj9), ImmutableMap.entryOf(comparable10, obj10));
    }
}
