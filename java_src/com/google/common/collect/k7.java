package com.google.common.collect;

import com.google.common.collect.m4;
import com.google.common.collect.n4;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k7<K, V> extends ImmutableMap<K, V> {

    /* renamed from: d  reason: collision with root package name */
    static final ImmutableMap<Object, Object> f13201d = new k7(ImmutableMap.EMPTY_ENTRY_ARRAY, null, 0);
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    final transient Map.Entry<K, V>[] f13202a;

    /* renamed from: b  reason: collision with root package name */
    private final transient m4<K, V>[] f13203b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f13204c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends Exception {
    }

    /* loaded from: classes2.dex */
    private static final class b<K> extends l5<K> {

        /* renamed from: a  reason: collision with root package name */
        private final k7<K, ?> f13205a;

        b(k7<K, ?> k7Var) {
            this.f13205a = k7Var;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f13205a.containsKey(obj);
        }

        @Override // com.google.common.collect.l5
        K get(int i9) {
            return this.f13205a.f13202a[i9].getKey();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f13205a.size();
        }
    }

    /* loaded from: classes2.dex */
    private static final class c<K, V> extends ImmutableList<V> {

        /* renamed from: a  reason: collision with root package name */
        final k7<K, V> f13206a;

        c(k7<K, V> k7Var) {
            this.f13206a = k7Var;
        }

        @Override // java.util.List
        public V get(int i9) {
            return this.f13206a.f13202a[i9].getValue();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f13206a.size();
        }
    }

    private k7(Map.Entry<K, V>[] entryArr, m4<K, V>[] m4VarArr, int i9) {
        this.f13202a = entryArr;
        this.f13203b = m4VarArr;
        this.f13204c = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> m4<K, V> a(Object obj, Object obj2, m4<K, V> m4Var, boolean z10) throws a {
        int i9 = 0;
        while (m4Var != null) {
            if (m4Var.getKey().equals(obj)) {
                if (!z10) {
                    return m4Var;
                }
                String valueOf = String.valueOf(obj);
                String valueOf2 = String.valueOf(obj2);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
                sb2.append(valueOf);
                sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb2.append(valueOf2);
                ImmutableMap.checkNoConflict(false, "key", m4Var, sb2.toString());
            }
            i9++;
            if (i9 <= 8) {
                m4Var = m4Var.b();
            } else {
                throw new a();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableMap<K, V> b(Map.Entry<K, V>... entryArr) {
        return c(entryArr.length, entryArr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableMap<K, V> c(int i9, Map.Entry<K, V>[] entryArr, boolean z10) {
        com.google.common.base.o.w(i9, entryArr.length);
        if (i9 == 0) {
            return (ImmutableMap<K, V>) f13201d;
        }
        try {
            return d(i9, entryArr, z10);
        } catch (a unused) {
            return t5.b(i9, entryArr, z10);
        }
    }

    private static <K, V> ImmutableMap<K, V> d(int i9, Map.Entry<K, V>[] entryArr, boolean z10) throws a {
        Map.Entry<K, V>[] a10 = i9 == entryArr.length ? entryArr : m4.a(i9);
        int a11 = e4.a(i9, 1.2d);
        m4[] a12 = m4.a(a11);
        int i10 = a11 - 1;
        IdentityHashMap identityHashMap = null;
        int i11 = 0;
        for (int i12 = i9 - 1; i12 >= 0; i12--) {
            Map.Entry<K, V> entry = entryArr[i12];
            Objects.requireNonNull(entry);
            Map.Entry<K, V> entry2 = entry;
            K key = entry2.getKey();
            V value = entry2.getValue();
            p2.a(key, value);
            int c10 = e4.c(key.hashCode()) & i10;
            m4 m4Var = a12[c10];
            m4 a13 = a(key, value, m4Var, z10);
            if (a13 == null) {
                if (m4Var == null) {
                    a13 = g(entry2, key, value);
                } else {
                    a13 = new m4.b(key, value, m4Var);
                }
                a12[c10] = a13;
            } else {
                if (identityHashMap == null) {
                    identityHashMap = new IdentityHashMap();
                }
                identityHashMap.put(a13, Boolean.TRUE);
                i11++;
                if (a10 == entryArr) {
                    a10 = (Map.Entry[]) a10.clone();
                }
            }
            a10[i12] = a13;
        }
        if (identityHashMap != null) {
            a10 = h(a10, i9, i9 - i11, identityHashMap);
            if (e4.a(a10.length, 1.2d) != a11) {
                return d(a10.length, a10, true);
            }
        }
        return new k7(a10, a12, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> V e(Object obj, m4<?, V>[] m4VarArr, int i9) {
        if (obj != null && m4VarArr != null) {
            for (m4<?, V> m4Var = m4VarArr[i9 & e4.c(obj.hashCode())]; m4Var != null; m4Var = m4Var.b()) {
                if (obj.equals(m4Var.getKey())) {
                    return m4Var.getValue();
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> m4<K, V> f(Map.Entry<K, V> entry) {
        return g(entry, entry.getKey(), entry.getValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> m4<K, V> g(Map.Entry<K, V> entry, K k10, V v10) {
        return (entry instanceof m4) && ((m4) entry).h() ? (m4) entry : new m4<>(k10, v10);
    }

    static <K, V> Map.Entry<K, V>[] h(Map.Entry<K, V>[] entryArr, int i9, int i10, IdentityHashMap<Map.Entry<K, V>, Boolean> identityHashMap) {
        m4[] a10 = m4.a(i10);
        int i11 = 0;
        for (int i12 = 0; i12 < i9; i12++) {
            Map.Entry<K, V> entry = entryArr[i12];
            Boolean bool = identityHashMap.get(entry);
            if (bool != null) {
                if (bool.booleanValue()) {
                    identityHashMap.put(entry, Boolean.FALSE);
                }
            }
            a10[i11] = entry;
            i11++;
        }
        return a10;
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new n4.b(this, this.f13202a);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        return new b(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> createValues() {
        return new c(this);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        Map.Entry<K, V>[] entryArr;
        com.google.common.base.o.s(biConsumer);
        for (Map.Entry<K, V> entry : this.f13202a) {
            biConsumer.accept((K) entry.getKey(), (V) entry.getValue());
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return (V) e(obj, this.f13203b, this.f13204c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f13202a.length;
    }
}
