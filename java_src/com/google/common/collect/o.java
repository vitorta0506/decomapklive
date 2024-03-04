package com.google.common.collect;

import com.google.common.collect.l6;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class o<K, V> implements i6<K, V> {
    private transient Map<K, Collection<V>> asMap;
    private transient Collection<Map.Entry<K, V>> entries;
    private transient Set<K> keySet;
    private transient q6<K> keys;
    private transient Collection<V> values;

    /* loaded from: classes2.dex */
    class a extends l6.d<K, V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a() {
        }

        @Override // com.google.common.collect.l6.d
        i6<K, V> c() {
            return o.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return o.this.entryIterator();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<Map.Entry<K, V>> spliterator() {
            return o.this.entrySpliterator();
        }
    }

    /* loaded from: classes2.dex */
    class b extends o<K, V>.a implements Set<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(o oVar) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return w7.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return w7.e(this);
        }
    }

    /* loaded from: classes2.dex */
    class c extends AbstractCollection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            o.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return o.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return o.this.valueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return o.this.size();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            return o.this.valueSpliterator();
        }
    }

    @Override // com.google.common.collect.i6
    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.asMap;
        if (map == null) {
            Map<K, Collection<V>> createAsMap = createAsMap();
            this.asMap = createAsMap;
            return createAsMap;
        }
        return map;
    }

    @Override // com.google.common.collect.i6
    public boolean containsEntry(Object obj, Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public boolean containsValue(Object obj) {
        for (Collection<V> collection : asMap().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    abstract Map<K, Collection<V>> createAsMap();

    abstract Collection<Map.Entry<K, V>> createEntries();

    abstract Set<K> createKeySet();

    abstract q6<K> createKeys();

    abstract Collection<V> createValues();

    @Override // com.google.common.collect.i6
    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.entries;
        if (collection == null) {
            Collection<Map.Entry<K, V>> createEntries = createEntries();
            this.entries = createEntries;
            return createEntries;
        }
        return collection;
    }

    abstract Iterator<Map.Entry<K, V>> entryIterator();

    Spliterator<Map.Entry<K, V>> entrySpliterator() {
        return Spliterators.spliterator(entryIterator(), size(), this instanceof u7 ? 1 : 0);
    }

    public boolean equals(Object obj) {
        return l6.a(this, obj);
    }

    public int hashCode() {
        return asMap().hashCode();
    }

    @Override // com.google.common.collect.i6
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.i6
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set == null) {
            Set<K> createKeySet = createKeySet();
            this.keySet = createKeySet;
            return createKeySet;
        }
        return set;
    }

    public q6<K> keys() {
        q6<K> q6Var = this.keys;
        if (q6Var == null) {
            q6<K> createKeys = createKeys();
            this.keys = createKeys;
            return createKeys;
        }
        return q6Var;
    }

    @Override // com.google.common.collect.i6
    public boolean put(K k10, V v10) {
        return get(k10).add(v10);
    }

    public boolean putAll(K k10, Iterable<? extends V> iterable) {
        com.google.common.base.o.s(iterable);
        if (iterable instanceof Collection) {
            Collection<? extends V> collection = (Collection) iterable;
            return !collection.isEmpty() && get(k10).addAll(collection);
        }
        Iterator<? extends V> it = iterable.iterator();
        return it.hasNext() && p5.a(get(k10), it);
    }

    @Override // com.google.common.collect.i6
    public boolean remove(Object obj, Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public Collection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        com.google.common.base.o.s(iterable);
        Collection<V> removeAll = removeAll(k10);
        putAll(k10, iterable);
        return removeAll;
    }

    public String toString() {
        return asMap().toString();
    }

    Iterator<V> valueIterator() {
        return d6.z(entries().iterator());
    }

    Spliterator<V> valueSpliterator() {
        return Spliterators.spliterator(valueIterator(), size(), 0);
    }

    @Override // com.google.common.collect.i6
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection == null) {
            Collection<V> createValues = createValues();
            this.values = createValues;
            return createValues;
        }
        return collection;
    }

    @Override // com.google.common.collect.i6
    public boolean putAll(i6<? extends K, ? extends V> i6Var) {
        boolean z10 = false;
        for (Map.Entry<? extends K, ? extends V> entry : i6Var.entries()) {
            z10 |= put(entry.getKey(), entry.getValue());
        }
        return z10;
    }
}
