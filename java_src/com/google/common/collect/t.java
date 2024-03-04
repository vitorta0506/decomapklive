package com.google.common.collect;

import com.google.common.collect.j;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
abstract class t<K, V> extends j<K, V> implements u7<K, V> {
    private static final long serialVersionUID = 7431625294878419160L;

    /* JADX INFO: Access modifiers changed from: protected */
    public t(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j
    public abstract Set<V> createCollection();

    @Override // com.google.common.collect.o
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((t<K, V>) obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public boolean put(K k10, V v10) {
        return super.put(k10, v10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j, com.google.common.collect.o
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((t<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.j
    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override // com.google.common.collect.j
    Collection<V> wrapCollection(K k10, Collection<V> collection) {
        return new j.n(k10, (Set) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j
    public Set<V> createUnmodifiableEmptyCollection() {
        return Collections.emptySet();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public Set<V> get(K k10) {
        return (Set) super.get((t<K, V>) k10);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o
    public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((t<K, V>) k10, (Iterable) iterable);
    }
}
