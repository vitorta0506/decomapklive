package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2.dex */
public abstract class r3<K, V> extends t3<K, V> implements ConcurrentMap<K, V> {
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k10, V v10) {
        return w0().putIfAbsent(k10, v10);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        return w0().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k10, V v10) {
        return w0().replace(k10, v10);
    }

    protected abstract ConcurrentMap<K, V> w0();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k10, V v10, V v11) {
        return w0().replace(k10, v10, v11);
    }
}
