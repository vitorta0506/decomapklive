package com.bumptech.glide.util;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
/* loaded from: classes.dex */
public final class CachedHashCodeArrayMap<K, V> extends ArrayMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private int f4743a;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        this.f4743a = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public int hashCode() {
        if (this.f4743a == 0) {
            this.f4743a = super.hashCode();
        }
        return this.f4743a;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k10, V v10) {
        this.f4743a = 0;
        return (V) super.put(k10, v10);
    }

    @Override // androidx.collection.SimpleArrayMap
    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f4743a = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V removeAt(int i9) {
        this.f4743a = 0;
        return (V) super.removeAt(i9);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V setValueAt(int i9, V v10) {
        this.f4743a = 0;
        return (V) super.setValueAt(i9, v10);
    }
}
