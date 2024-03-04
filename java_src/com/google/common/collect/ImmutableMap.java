package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.Serializable;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.Spliterator;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];
    private transient ImmutableSet<Map.Entry<K, V>> entrySet;
    private transient ImmutableSet<K> keySet;
    private transient ImmutableSetMultimap<K, V> multimapView;
    private transient ImmutableCollection<V> values;

    /* loaded from: classes2.dex */
    class a extends e9<K> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e9 f12670a;

        a(ImmutableMap immutableMap, e9 e9Var) {
            this.f12670a = e9Var;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12670a.hasNext();
        }

        @Override // java.util.Iterator
        public K next() {
            return (K) ((Map.Entry) this.f12670a.next()).getKey();
        }
    }

    /* loaded from: classes2.dex */
    public static class b<K, V> {

        /* renamed from: a  reason: collision with root package name */
        Comparator<? super V> f12671a;

        /* renamed from: b  reason: collision with root package name */
        Map.Entry<K, V>[] f12672b;

        /* renamed from: c  reason: collision with root package name */
        int f12673c;

        /* renamed from: d  reason: collision with root package name */
        boolean f12674d;

        public b() {
            this(4);
        }

        private ImmutableMap<K, V> b(boolean z10) {
            Map.Entry<K, V>[] entryArr;
            int i9 = this.f12673c;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (this.f12671a == null) {
                        entryArr = this.f12672b;
                    } else {
                        if (this.f12674d) {
                            this.f12672b = (Map.Entry[]) Arrays.copyOf(this.f12672b, i9);
                        }
                        Map.Entry<K, V>[] entryArr2 = this.f12672b;
                        if (!z10) {
                            Map.Entry<K, V>[] g10 = g(entryArr2, this.f12673c);
                            entryArr2 = g10;
                            i9 = g10.length;
                        }
                        Arrays.sort(entryArr2, 0, i9, y6.a(this.f12671a).g(d6.y()));
                        entryArr = entryArr2;
                    }
                    this.f12674d = true;
                    return k7.c(i9, entryArr, z10);
                }
                Map.Entry<K, V> entry = this.f12672b[0];
                Objects.requireNonNull(entry);
                Map.Entry<K, V> entry2 = entry;
                return ImmutableMap.of((Object) entry2.getKey(), (Object) entry2.getValue());
            }
            return ImmutableMap.of();
        }

        private void f(int i9) {
            Map.Entry<K, V>[] entryArr = this.f12672b;
            if (i9 > entryArr.length) {
                this.f12672b = (Map.Entry[]) Arrays.copyOf(entryArr, ImmutableCollection.a.e(entryArr.length, i9));
                this.f12674d = false;
            }
        }

        private static <K, V> Map.Entry<K, V>[] g(Map.Entry<K, V>[] entryArr, int i9) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i10 = i9 - 1; i10 >= 0; i10--) {
                if (!hashSet.add(entryArr[i10].getKey())) {
                    bitSet.set(i10);
                }
            }
            if (bitSet.isEmpty()) {
                return entryArr;
            }
            Map.Entry<K, V>[] entryArr2 = new Map.Entry[i9 - bitSet.cardinality()];
            int i11 = 0;
            for (int i12 = 0; i12 < i9; i12++) {
                if (!bitSet.get(i12)) {
                    entryArr2[i11] = entryArr[i12];
                    i11++;
                }
            }
            return entryArr2;
        }

        public ImmutableMap<K, V> a() {
            return d();
        }

        public ImmutableMap<K, V> c() {
            return b(false);
        }

        public ImmutableMap<K, V> d() {
            return b(true);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b<K, V> e(b<K, V> bVar) {
            com.google.common.base.o.s(bVar);
            f(this.f12673c + bVar.f12673c);
            System.arraycopy(bVar.f12672b, 0, this.f12672b, this.f12673c, bVar.f12673c);
            this.f12673c += bVar.f12673c;
            return this;
        }

        public b<K, V> h(K k10, V v10) {
            f(this.f12673c + 1);
            Map.Entry<K, V> entryOf = ImmutableMap.entryOf(k10, v10);
            Map.Entry<K, V>[] entryArr = this.f12672b;
            int i9 = this.f12673c;
            this.f12673c = i9 + 1;
            entryArr[i9] = entryOf;
            return this;
        }

        public b<K, V> i(Map.Entry<? extends K, ? extends V> entry) {
            return h(entry.getKey(), entry.getValue());
        }

        public b<K, V> j(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                f(this.f12673c + ((Collection) iterable).size());
            }
            for (Map.Entry<? extends K, ? extends V> entry : iterable) {
                i(entry);
            }
            return this;
        }

        public b<K, V> k(Map<? extends K, ? extends V> map) {
            return j(map.entrySet());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i9) {
            this.f12672b = new Map.Entry[i9];
            this.f12673c = 0;
            this.f12674d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class c<K, V> extends ImmutableMap<K, V> {

        /* loaded from: classes2.dex */
        class a extends n4<K, V> {
            a() {
            }

            @Override // com.google.common.collect.n4
            ImmutableMap<K, V> c() {
                return c.this;
            }

            @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public e9<Map.Entry<K, V>> iterator() {
                return c.this.a();
            }
        }

        abstract e9<Map.Entry<K, V>> a();

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<Map.Entry<K, V>> createEntrySet() {
            return new a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<K> createKeySet() {
            return new p4(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableCollection<V> createValues() {
            return new s4(this);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    /* loaded from: classes2.dex */
    private final class d extends c<K, ImmutableSet<V>> {

        /* loaded from: classes2.dex */
        class a extends e9<Map.Entry<K, ImmutableSet<V>>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Iterator f12677a;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.google.common.collect.ImmutableMap$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0108a extends n<K, ImmutableSet<V>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Map.Entry f12678a;

                C0108a(a aVar, Map.Entry entry) {
                    this.f12678a = entry;
                }

                @Override // com.google.common.collect.n, java.util.Map.Entry
                /* renamed from: a */
                public ImmutableSet<V> getValue() {
                    return ImmutableSet.of(this.f12678a.getValue());
                }

                @Override // com.google.common.collect.n, java.util.Map.Entry
                public K getKey() {
                    return (K) this.f12678a.getKey();
                }
            }

            a(d dVar, Iterator it) {
                this.f12677a = it;
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, ImmutableSet<V>> next() {
                return new C0108a(this, (Map.Entry) this.f12677a.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f12677a.hasNext();
            }
        }

        private d() {
        }

        @Override // com.google.common.collect.ImmutableMap.c
        e9<Map.Entry<K, ImmutableSet<V>>> a() {
            return new a(this, ImmutableMap.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        /* renamed from: b */
        public ImmutableSet<V> get(Object obj) {
            Object obj2 = ImmutableMap.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return ImmutableSet.of(obj2);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public boolean containsKey(Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.c, com.google.common.collect.ImmutableMap
        public ImmutableSet<K> createKeySet() {
            return ImmutableMap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isHashCodeFast() {
            return ImmutableMap.this.isHashCodeFast();
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isPartialView() {
            return ImmutableMap.this.isPartialView();
        }

        @Override // java.util.Map
        public int size() {
            return ImmutableMap.this.size();
        }

        /* synthetic */ d(ImmutableMap immutableMap, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    static class e<K, V> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Object f12679a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f12680b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(ImmutableMap<K, V> immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            e9<Map.Entry<K, V>> it = immutableMap.entrySet().iterator();
            int i9 = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i9] = next.getKey();
                objArr2[i9] = next.getValue();
                i9++;
            }
            this.f12679a = objArr;
            this.f12680b = objArr2;
        }

        final Object a() {
            Object[] objArr = (Object[]) this.f12679a;
            Object[] objArr2 = (Object[]) this.f12680b;
            b<K, V> b10 = b(objArr.length);
            for (int i9 = 0; i9 < objArr.length; i9++) {
                b10.h((K) objArr[i9], (V) objArr2[i9]);
            }
            return b10.d();
        }

        b<K, V> b(int i9) {
            return new b<>(i9);
        }

        final Object readResolve() {
            Object obj = this.f12679a;
            if (!(obj instanceof ImmutableSet)) {
                return a();
            }
            ImmutableSet immutableSet = (ImmutableSet) obj;
            b<K, V> b10 = b(immutableSet.size());
            e9 it = immutableSet.iterator();
            e9 it2 = ((ImmutableCollection) this.f12680b).iterator();
            while (it.hasNext()) {
                b10.h((K) it.next(), (V) it2.next());
            }
            return b10.d();
        }
    }

    public static <K, V> b<K, V> builder() {
        return new b<>();
    }

    public static <K, V> b<K, V> builderWithExpectedSize(int i9) {
        p2.b(i9, "expectedSize");
        return new b<>(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkNoConflict(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw conflictException(str, obj, obj2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static IllegalArgumentException conflictException(String str, Object obj, Object obj2) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 34 + valueOf.length() + valueOf2.length());
        sb2.append("Multiple entries with same ");
        sb2.append(str);
        sb2.append(": ");
        sb2.append(valueOf);
        sb2.append(" and ");
        sb2.append(valueOf2);
        return new IllegalArgumentException(sb2.toString());
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.isPartialView()) {
                return immutableMap;
            }
        } else if (map instanceof EnumMap) {
            return copyOfEnumMap((EnumMap) map);
        }
        return copyOf(map.entrySet());
    }

    private static <K extends Enum<K>, V> ImmutableMap<K, V> copyOfEnumMap(EnumMap<K, ? extends V> enumMap) {
        EnumMap enumMap2 = new EnumMap((EnumMap) enumMap);
        for (Map.Entry<K, V> entry : enumMap2.entrySet()) {
            p2.a(entry.getKey(), entry.getValue());
        }
        return i4.b(enumMap2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> Map.Entry<K, V> entryOf(K k10, V v10) {
        return new m4(k10, v10);
    }

    public static <K, V> ImmutableMap<K, V> of() {
        return (ImmutableMap<K, V>) k7.f13201d;
    }

    @SafeVarargs
    public static <K, V> ImmutableMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return k7.b(entryArr);
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return o2.Q(function, function2);
    }

    public ImmutableSetMultimap<K, V> asMultimap() {
        if (isEmpty()) {
            return ImmutableSetMultimap.of();
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap = this.multimapView;
        if (immutableSetMultimap == null) {
            ImmutableSetMultimap<K, V> immutableSetMultimap2 = new ImmutableSetMultimap<>(new d(this, null), size(), null);
            this.multimapView = immutableSetMultimap2;
            return immutableSetMultimap2;
        }
        return immutableSetMultimap;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V compute(K k10, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V computeIfAbsent(K k10, Function<? super K, ? extends V> function) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V computeIfPresent(K k10, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    abstract ImmutableSet<Map.Entry<K, V>> createEntrySet();

    abstract ImmutableSet<K> createKeySet();

    abstract ImmutableCollection<V> createValues();

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return d6.f(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    @Override // java.util.Map
    public int hashCode() {
        return w7.e(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHashCodeFast() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isPartialView();

    /* JADX INFO: Access modifiers changed from: package-private */
    public e9<K> keyIterator() {
        return new a(this, entrySet().iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Spliterator<K> keySpliterator() {
        return s2.e(entrySet().spliterator(), l4.f13216a);
    }

    @Override // java.util.Map
    @Deprecated
    public final V merge(K k10, V v10, BiFunction<? super V, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V putIfAbsent(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final boolean replace(K k10, V v10, V v11) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return d6.v(this);
    }

    Object writeReplace() {
        return new e(this);
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10) {
        return ImmutableBiMap.of((Object) k10, (Object) v10);
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        return o2.R(function, function2, binaryOperator);
    }

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entrySet;
        if (immutableSet == null) {
            ImmutableSet<Map.Entry<K, V>> createEntrySet = createEntrySet();
            this.entrySet = createEntrySet;
            return createEntrySet;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.keySet;
        if (immutableSet == null) {
            ImmutableSet<K> createKeySet = createKeySet();
            this.keySet = createKeySet;
            return createKeySet;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V replace(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.values;
        if (immutableCollection == null) {
            ImmutableCollection<V> createValues = createValues();
            this.values = createValues;
            return createValues;
        }
        return immutableCollection;
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11));
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12));
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12), entryOf(k13, v13));
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) n5.n(iterable, EMPTY_ENTRY_ARRAY);
        int length = entryArr.length;
        if (length != 0) {
            if (length != 1) {
                return k7.b(entryArr);
            }
            Map.Entry entry = entryArr[0];
            Objects.requireNonNull(entry);
            Map.Entry entry2 = entry;
            return of(entry2.getKey(), entry2.getValue());
        }
        return of();
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12), entryOf(k13, v13), entryOf(k14, v14));
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12), entryOf(k13, v13), entryOf(k14, v14), entryOf(k15, v15));
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12), entryOf(k13, v13), entryOf(k14, v14), entryOf(k15, v15), entryOf(k16, v16));
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12), entryOf(k13, v13), entryOf(k14, v14), entryOf(k15, v15), entryOf(k16, v16), entryOf(k17, v17));
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12), entryOf(k13, v13), entryOf(k14, v14), entryOf(k15, v15), entryOf(k16, v16), entryOf(k17, v17), entryOf(k18, v18));
    }

    public static <K, V> ImmutableMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
        return k7.b(entryOf(k10, v10), entryOf(k11, v11), entryOf(k12, v12), entryOf(k13, v13), entryOf(k14, v14), entryOf(k15, v15), entryOf(k16, v16), entryOf(k17, v17), entryOf(k18, v18), entryOf(k19, v19));
    }
}
