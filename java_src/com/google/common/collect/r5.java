package com.google.common.collect;

import com.google.common.collect.n4;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r5<K, V> extends ImmutableBiMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final transient ImmutableList<Map.Entry<K, V>> f13378a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<K, V> f13379b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<V, K> f13380c;

    /* renamed from: d  reason: collision with root package name */
    private transient r5<V, K> f13381d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends ImmutableList<Map.Entry<V, K>> {
        private b() {
        }

        @Override // java.util.List
        /* renamed from: c */
        public Map.Entry<V, K> get(int i9) {
            Map.Entry entry = (Map.Entry) r5.this.f13378a.get(i9);
            return d6.g(entry.getValue(), entry.getKey());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return r5.this.f13378a.size();
        }
    }

    private r5(ImmutableList<Map.Entry<K, V>> immutableList, Map<K, V> map, Map<V, K> map2) {
        this.f13378a = immutableList;
        this.f13379b = map;
        this.f13380c = map2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableBiMap<K, V> b(int i9, Map.Entry<K, V>[] entryArr) {
        HashMap n9 = d6.n(i9);
        HashMap n10 = d6.n(i9);
        for (int i10 = 0; i10 < i9; i10++) {
            Map.Entry<K, V> entry = entryArr[i10];
            Objects.requireNonNull(entry);
            m4 f10 = k7.f(entry);
            entryArr[i10] = f10;
            Object putIfAbsent = n9.putIfAbsent(f10.getKey(), f10.getValue());
            if (putIfAbsent == null) {
                Object putIfAbsent2 = n10.putIfAbsent(f10.getValue(), f10.getKey());
                if (putIfAbsent2 != null) {
                    String valueOf = String.valueOf(putIfAbsent2);
                    String valueOf2 = String.valueOf(f10.getValue());
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
                    sb2.append(valueOf);
                    sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb2.append(valueOf2);
                    throw ImmutableMap.conflictException("value", sb2.toString(), entryArr[i10]);
                }
            } else {
                String valueOf3 = String.valueOf(f10.getKey());
                String valueOf4 = String.valueOf(putIfAbsent);
                StringBuilder sb3 = new StringBuilder(valueOf3.length() + 1 + valueOf4.length());
                sb3.append(valueOf3);
                sb3.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb3.append(valueOf4);
                throw ImmutableMap.conflictException("key", sb3.toString(), entryArr[i10]);
            }
        }
        return new r5(ImmutableList.asImmutableList(entryArr, i9), n9, n10);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new n4.b(this, this.f13378a);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        return new p4(this);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.f13379b.get(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f13378a.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.e0
    public ImmutableBiMap<V, K> inverse() {
        r5<V, K> r5Var = this.f13381d;
        if (r5Var == null) {
            r5<V, K> r5Var2 = new r5<>(new b(), this.f13380c, this.f13379b);
            this.f13381d = r5Var2;
            r5Var2.f13381d = this;
            return r5Var2;
        }
        return r5Var;
    }
}
