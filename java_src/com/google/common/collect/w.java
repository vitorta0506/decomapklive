package com.google.common.collect;

import com.google.common.collect.j;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
/* loaded from: classes2.dex */
abstract class w<K, V> extends t<K, V> {
    private static final long serialVersionUID = 430848587173315748L;

    /* JADX INFO: Access modifiers changed from: protected */
    public w(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.o, com.google.common.collect.i6
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t, com.google.common.collect.j
    public abstract SortedSet<V> createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((w<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((w<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j
    Collection<V> wrapCollection(K k10, Collection<V> collection) {
        if (collection instanceof NavigableSet) {
            return new j.m(k10, (NavigableSet) collection, null);
        }
        return new j.o(k10, (SortedSet) collection, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return get((w<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return replaceValues((w<K, V>) obj, iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t, com.google.common.collect.j
    public <E> SortedSet<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        if (collection instanceof NavigableSet) {
            return w7.r((NavigableSet) collection);
        }
        return Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t, com.google.common.collect.j
    public SortedSet<V> createUnmodifiableEmptyCollection() {
        return (SortedSet<V>) unmodifiableCollectionSubclass((Collection) createCollection());
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public SortedSet<V> get(K k10) {
        return (SortedSet) super.get((w<K, V>) k10);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public SortedSet<V> removeAll(Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o
    public SortedSet<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((w<K, V>) k10, (Iterable) iterable);
    }
}
