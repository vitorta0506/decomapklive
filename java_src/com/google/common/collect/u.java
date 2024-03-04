package com.google.common.collect;

import java.util.Collection;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
/* loaded from: classes2.dex */
abstract class u<K, V> extends w<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u(SortedMap<K, Collection<V>> sortedMap) {
        super(sortedMap);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o
    Set<K> createKeySet() {
        return createMaybeNavigableKeySet();
    }

    @Override // com.google.common.collect.w, com.google.common.collect.t, com.google.common.collect.o, com.google.common.collect.i6
    public SortedMap<K, Collection<V>> asMap() {
        return (SortedMap) super.asMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j
    public SortedMap<K, Collection<V>> backingMap() {
        return (SortedMap) super.backingMap();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public SortedSet<K> keySet() {
        return (SortedSet) super.keySet();
    }
}
