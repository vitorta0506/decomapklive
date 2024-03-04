package com.google.common.collect;

import java.util.Map;
import java.util.function.BiConsumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a8<K, V> extends ImmutableBiMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    final transient K f12909a;

    /* renamed from: b  reason: collision with root package name */
    final transient V f12910b;

    /* renamed from: c  reason: collision with root package name */
    private final transient ImmutableBiMap<V, K> f12911c;

    /* renamed from: d  reason: collision with root package name */
    private transient ImmutableBiMap<V, K> f12912d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a8(K k10, V v10) {
        p2.a(k10, v10);
        this.f12909a = k10;
        this.f12910b = v10;
        this.f12911c = null;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.f12909a.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsValue(Object obj) {
        return this.f12910b.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return ImmutableSet.of(d6.g(this.f12909a, this.f12910b));
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        return ImmutableSet.of(this.f12909a);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        ((BiConsumer) com.google.common.base.o.s(biConsumer)).accept(this.f12909a, this.f12910b);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        if (this.f12909a.equals(obj)) {
            return this.f12910b;
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
        return 1;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.e0
    public ImmutableBiMap<V, K> inverse() {
        ImmutableBiMap<V, K> immutableBiMap = this.f12911c;
        if (immutableBiMap != null) {
            return immutableBiMap;
        }
        ImmutableBiMap<V, K> immutableBiMap2 = this.f12912d;
        if (immutableBiMap2 == null) {
            a8 a8Var = new a8(this.f12910b, this.f12909a, this);
            this.f12912d = a8Var;
            return a8Var;
        }
        return immutableBiMap2;
    }

    private a8(K k10, V v10, ImmutableBiMap<V, K> immutableBiMap) {
        this.f12909a = k10;
        this.f12910b = v10;
        this.f12911c = immutableBiMap;
    }
}
