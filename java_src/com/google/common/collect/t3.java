package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class t3<K, V> extends w3 implements Map<K, V> {
    public void clear() {
        delegate().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return delegate().containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return delegate().containsValue(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.w3
    public abstract Map<K, V> delegate();

    public Set<Map.Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return delegate().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public Set<K> keySet() {
        return delegate().keySet();
    }

    public V put(K k10, V v10) {
        return delegate().put(k10, v10);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    public V remove(Object obj) {
        return delegate().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return delegate().size();
    }

    protected void standardClear() {
        p5.e(entrySet().iterator());
    }

    protected boolean standardContainsKey(Object obj) {
        return d6.d(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardContainsValue(Object obj) {
        return d6.e(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardEquals(Object obj) {
        return d6.f(this, obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int standardHashCode() {
        return w7.e(entrySet());
    }

    protected boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    protected void standardPutAll(Map<? extends K, ? extends V> map) {
        d6.r(this, map);
    }

    protected V standardRemove(Object obj) {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (com.google.common.base.l.a(next.getKey(), obj)) {
                V value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String standardToString() {
        return d6.v(this);
    }

    public Collection<V> values() {
        return delegate().values();
    }
}
