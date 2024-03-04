package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public interface i6<K, V> {
    Map<K, Collection<V>> asMap();

    void clear();

    boolean containsEntry(Object obj, Object obj2);

    boolean containsKey(Object obj);

    Collection<Map.Entry<K, V>> entries();

    Collection<V> get(K k10);

    boolean isEmpty();

    Set<K> keySet();

    boolean put(K k10, V v10);

    boolean putAll(i6<? extends K, ? extends V> i6Var);

    boolean remove(Object obj, Object obj2);

    Collection<V> removeAll(Object obj);

    int size();

    Collection<V> values();
}
