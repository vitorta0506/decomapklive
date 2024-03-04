package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableBiMap<K, V> extends g4<K, V> implements e0<K, V> {

    /* loaded from: classes2.dex */
    public static final class a<K, V> extends ImmutableMap.b<K, V> {
        public a() {
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: l */
        public ImmutableBiMap<K, V> a() {
            return d();
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @Deprecated
        /* renamed from: m */
        public ImmutableBiMap<K, V> c() {
            throw new UnsupportedOperationException("Not supported for bimaps");
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: n */
        public ImmutableBiMap<K, V> d() {
            int i9 = this.f12673c;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (this.f12671a != null) {
                        if (this.f12674d) {
                            this.f12672b = (Map.Entry[]) Arrays.copyOf(this.f12672b, i9);
                        }
                        Arrays.sort(this.f12672b, 0, this.f12673c, y6.a(this.f12671a).g(d6.y()));
                    }
                    this.f12674d = true;
                    return h7.f(this.f12673c, this.f12672b);
                }
                Map.Entry<K, V> entry = this.f12672b[0];
                Objects.requireNonNull(entry);
                Map.Entry<K, V> entry2 = entry;
                return ImmutableBiMap.of((Object) entry2.getKey(), (Object) entry2.getValue());
            }
            return ImmutableBiMap.of();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: o */
        public a<K, V> e(ImmutableMap.b<K, V> bVar) {
            super.e(bVar);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: p */
        public a<K, V> h(K k10, V v10) {
            super.h(k10, v10);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: q */
        public a<K, V> i(Map.Entry<? extends K, ? extends V> entry) {
            super.i(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: r */
        public a<K, V> j(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.j(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* renamed from: s */
        public a<K, V> k(Map<? extends K, ? extends V> map) {
            super.k(map);
            return this;
        }

        a(int i9) {
            super(i9);
        }
    }

    /* loaded from: classes2.dex */
    private static class b<K, V> extends ImmutableMap.e<K, V> {
        private static final long serialVersionUID = 0;

        b(ImmutableBiMap<K, V> immutableBiMap) {
            super(immutableBiMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.e
        /* renamed from: c */
        public a<K, V> b(int i9) {
            return new a<>(i9);
        }
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> a<K, V> builderWithExpectedSize(int i9) {
        p2.b(i9, "expectedSize");
        return new a<>(i9);
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof ImmutableBiMap) {
            ImmutableBiMap<K, V> immutableBiMap = (ImmutableBiMap) map;
            if (!immutableBiMap.isPartialView()) {
                return immutableBiMap;
            }
        }
        return copyOf((Iterable) map.entrySet());
    }

    public static <K, V> ImmutableBiMap<K, V> of() {
        return h7.f13114g;
    }

    @SafeVarargs
    public static <K, V> ImmutableBiMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return h7.e(entryArr);
    }

    public static <T, K, V> Collector<T, ?, ImmutableBiMap<K, V>> toImmutableBiMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return o2.N(function, function2);
    }

    @Deprecated
    public final V forcePut(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.e0
    public abstract ImmutableBiMap<V, K> inverse();

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new b(this);
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10) {
        return new a8(k10, v10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet<V> createValues() {
        throw new AssertionError("should never be called");
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11));
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSet<V> values() {
        return inverse().keySet();
    }

    public static <K, V> ImmutableBiMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) n5.n(iterable, ImmutableMap.EMPTY_ENTRY_ARRAY);
        int length = entryArr.length;
        if (length != 0) {
            if (length != 1) {
                return h7.e(entryArr);
            }
            Map.Entry entry = entryArr[0];
            return of(entry.getKey(), entry.getValue());
        }
        return of();
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12), ImmutableMap.entryOf(k13, v13));
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12), ImmutableMap.entryOf(k13, v13), ImmutableMap.entryOf(k14, v14));
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12), ImmutableMap.entryOf(k13, v13), ImmutableMap.entryOf(k14, v14), ImmutableMap.entryOf(k15, v15));
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12), ImmutableMap.entryOf(k13, v13), ImmutableMap.entryOf(k14, v14), ImmutableMap.entryOf(k15, v15), ImmutableMap.entryOf(k16, v16));
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12), ImmutableMap.entryOf(k13, v13), ImmutableMap.entryOf(k14, v14), ImmutableMap.entryOf(k15, v15), ImmutableMap.entryOf(k16, v16), ImmutableMap.entryOf(k17, v17));
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12), ImmutableMap.entryOf(k13, v13), ImmutableMap.entryOf(k14, v14), ImmutableMap.entryOf(k15, v15), ImmutableMap.entryOf(k16, v16), ImmutableMap.entryOf(k17, v17), ImmutableMap.entryOf(k18, v18));
    }

    public static <K, V> ImmutableBiMap<K, V> of(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
        return h7.e(ImmutableMap.entryOf(k10, v10), ImmutableMap.entryOf(k11, v11), ImmutableMap.entryOf(k12, v12), ImmutableMap.entryOf(k13, v13), ImmutableMap.entryOf(k14, v14), ImmutableMap.entryOf(k15, v15), ImmutableMap.entryOf(k16, v16), ImmutableMap.entryOf(k17, v17), ImmutableMap.entryOf(k18, v18), ImmutableMap.entryOf(k19, v19));
    }
}
