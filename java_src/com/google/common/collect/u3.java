package com.google.common.collect;

import java.util.Map;
/* loaded from: classes2.dex */
public abstract class u3<K, V> extends w3 implements Map.Entry<K, V> {
    public boolean equals(Object obj) {
        return w0().equals(obj);
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return w0().getKey();
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return w0().getValue();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return w0().hashCode();
    }

    public V setValue(V v10) {
        return w0().setValue(v10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean standardEquals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            return com.google.common.base.l.a(getKey(), entry.getKey()) && com.google.common.base.l.a(getValue(), entry.getValue());
        }
        return false;
    }

    protected abstract Map.Entry<K, V> w0();
}
