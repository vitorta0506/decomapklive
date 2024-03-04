package com.google.common.collect;

import com.google.common.collect.k7;
import com.google.common.collect.m4;
import com.google.common.collect.n4;
import java.io.Serializable;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class h7<K, V> extends ImmutableBiMap<K, V> {

    /* renamed from: g  reason: collision with root package name */
    static final h7<Object, Object> f13114g = new h7<>(null, null, ImmutableMap.EMPTY_ENTRY_ARRAY, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    private final transient m4<K, V>[] f13115a;

    /* renamed from: b  reason: collision with root package name */
    private final transient m4<K, V>[] f13116b;

    /* renamed from: c  reason: collision with root package name */
    final transient Map.Entry<K, V>[] f13117c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f13118d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f13119e;

    /* renamed from: f  reason: collision with root package name */
    private transient ImmutableBiMap<V, K> f13120f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends ImmutableBiMap<V, K> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public final class a extends n4<V, K> {

            /* renamed from: com.google.common.collect.h7$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            class C0113a extends f4<Map.Entry<V, K>> {
                C0113a() {
                }

                @Override // com.google.common.collect.f4
                ImmutableCollection<Map.Entry<V, K>> c() {
                    return a.this;
                }

                @Override // java.util.List
                /* renamed from: d */
                public Map.Entry<V, K> get(int i9) {
                    Map.Entry<K, V> entry = h7.this.f13117c[i9];
                    return d6.g(entry.getValue(), entry.getKey());
                }
            }

            a() {
            }

            @Override // com.google.common.collect.n4
            ImmutableMap<V, K> c() {
                return b.this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableSet.b
            public ImmutableList<Map.Entry<V, K>> createAsList() {
                return new C0113a();
            }

            @Override // java.lang.Iterable
            public void forEach(Consumer<? super Map.Entry<V, K>> consumer) {
                asList().forEach(consumer);
            }

            @Override // com.google.common.collect.n4, com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
            public int hashCode() {
                return h7.this.f13119e;
            }

            @Override // com.google.common.collect.n4, com.google.common.collect.ImmutableSet
            boolean isHashCodeFast() {
                return true;
            }

            @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public e9<Map.Entry<V, K>> iterator() {
                return (e9<Map.Entry<K, V>>) asList().iterator();
            }
        }

        private b() {
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<Map.Entry<V, K>> createEntrySet() {
            return new a();
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<V> createKeySet() {
            return new p4(this);
        }

        @Override // java.util.Map
        public void forEach(final BiConsumer<? super V, ? super K> biConsumer) {
            com.google.common.base.o.s(biConsumer);
            h7.this.forEach(new BiConsumer() { // from class: com.google.common.collect.i7
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    biConsumer.accept(obj2, obj);
                }
            });
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public K get(Object obj) {
            if (obj != null && h7.this.f13116b != null) {
                for (m4 m4Var = h7.this.f13116b[e4.c(obj.hashCode()) & h7.this.f13118d]; m4Var != null; m4Var = m4Var.e()) {
                    if (obj.equals(m4Var.getValue())) {
                        return m4Var.getKey();
                    }
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.Map
        public int size() {
            return inverse().size();
        }

        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.ImmutableMap
        Object writeReplace() {
            return new c(h7.this);
        }

        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.e0
        public ImmutableBiMap<K, V> inverse() {
            return h7.this;
        }
    }

    /* loaded from: classes2.dex */
    private static class c<K, V> implements Serializable {
        private static final long serialVersionUID = 1;

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableBiMap<K, V> f13124a;

        c(ImmutableBiMap<K, V> immutableBiMap) {
            this.f13124a = immutableBiMap;
        }

        Object readResolve() {
            return this.f13124a.inverse();
        }
    }

    private h7(m4<K, V>[] m4VarArr, m4<K, V>[] m4VarArr2, Map.Entry<K, V>[] entryArr, int i9, int i10) {
        this.f13115a = m4VarArr;
        this.f13116b = m4VarArr2;
        this.f13117c = entryArr;
        this.f13118d = i9;
        this.f13119e = i10;
    }

    private static void d(Object obj, Map.Entry<?, ?> entry, m4<?, ?> m4Var) throws k7.a {
        int i9 = 0;
        while (m4Var != null) {
            ImmutableMap.checkNoConflict(!obj.equals(m4Var.getValue()), "value", entry, m4Var);
            i9++;
            if (i9 <= 8) {
                m4Var = m4Var.e();
            } else {
                throw new k7.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableBiMap<K, V> e(Map.Entry<K, V>... entryArr) {
        return f(entryArr.length, entryArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableBiMap<K, V> f(int i9, Map.Entry<K, V>[] entryArr) {
        m4 aVar;
        int i10 = i9;
        Map.Entry<K, V>[] entryArr2 = entryArr;
        com.google.common.base.o.w(i10, entryArr2.length);
        int a10 = e4.a(i10, 1.2d);
        int i11 = a10 - 1;
        m4[] a11 = m4.a(a10);
        m4[] a12 = m4.a(a10);
        m4[] a13 = i10 == entryArr2.length ? entryArr2 : m4.a(i9);
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            Map.Entry<K, V> entry = entryArr2[i12];
            Objects.requireNonNull(entry);
            Map.Entry<K, V> entry2 = entry;
            K key = entry2.getKey();
            V value = entry2.getValue();
            p2.a(key, value);
            int hashCode = key.hashCode();
            int hashCode2 = value.hashCode();
            int c10 = e4.c(hashCode) & i11;
            int c11 = e4.c(hashCode2) & i11;
            m4 m4Var = a11[c10];
            m4 m4Var2 = a12[c11];
            try {
                k7.a(key, value, m4Var, true);
                d(value, entry2, m4Var2);
                if (m4Var2 == null && m4Var == null) {
                    aVar = k7.g(entry2, key, value);
                } else {
                    aVar = new m4.a(key, value, m4Var, m4Var2);
                }
                a11[c10] = aVar;
                a12[c11] = aVar;
                a13[i12] = aVar;
                i13 += hashCode ^ hashCode2;
                i12++;
                i10 = i9;
                entryArr2 = entryArr;
            } catch (k7.a unused) {
                return r5.b(i9, entryArr);
            }
        }
        return new h7(a11, a12, a13, i11, i13);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        if (isEmpty()) {
            return ImmutableSet.of();
        }
        return new n4.b(this, this.f13117c);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        return new p4(this);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Map.Entry<K, V>[] entryArr;
        com.google.common.base.o.s(biConsumer);
        for (Map.Entry<K, V> entry : this.f13117c) {
            biConsumer.accept((K) entry.getKey(), (V) entry.getValue());
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return (V) k7.e(obj, this.f13115a, this.f13118d);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public int hashCode() {
        return this.f13119e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isHashCodeFast() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f13117c.length;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.e0
    public ImmutableBiMap<V, K> inverse() {
        if (isEmpty()) {
            return ImmutableBiMap.of();
        }
        ImmutableBiMap<V, K> immutableBiMap = this.f13120f;
        if (immutableBiMap == null) {
            b bVar = new b();
            this.f13120f = bVar;
            return bVar;
        }
        return immutableBiMap;
    }
}
