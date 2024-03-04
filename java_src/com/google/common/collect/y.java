package com.google.common.collect;

import com.google.common.collect.q8;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Function;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class y<R, C, V> implements q8<R, C, V> {
    private transient Set<q8.a<R, C, V>> cellSet;
    private transient Collection<V> values;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends b9<q8.a<R, C, V>, V> {
        a(y yVar, Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.b9
        /* renamed from: b */
        public V a(q8.a<R, C, V> aVar) {
            return aVar.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends AbstractSet<q8.a<R, C, V>> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            y.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof q8.a) {
                q8.a aVar = (q8.a) obj;
                Map map = (Map) d6.t(y.this.rowMap(), aVar.a());
                return map != null && c3.c(map.entrySet(), d6.g(aVar.b(), aVar.getValue()));
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<q8.a<R, C, V>> iterator() {
            return y.this.cellIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof q8.a) {
                q8.a aVar = (q8.a) obj;
                Map map = (Map) d6.t(y.this.rowMap(), aVar.a());
                return map != null && c3.d(map.entrySet(), d6.g(aVar.b(), aVar.getValue()));
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return y.this.size();
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<q8.a<R, C, V>> spliterator() {
            return y.this.cellSpliterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends AbstractCollection<V> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            y.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return y.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return y.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return y.this.size();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            return y.this.valuesSpliterator();
        }
    }

    abstract Iterator<q8.a<R, C, V>> cellIterator();

    @Override // com.google.common.collect.q8
    public Set<q8.a<R, C, V>> cellSet() {
        Set<q8.a<R, C, V>> set = this.cellSet;
        if (set == null) {
            Set<q8.a<R, C, V>> createCellSet = createCellSet();
            this.cellSet = createCellSet;
            return createCellSet;
        }
        return set;
    }

    abstract Spliterator<q8.a<R, C, V>> cellSpliterator();

    public void clear() {
        p5.e(cellSet().iterator());
    }

    @Override // com.google.common.collect.q8
    public Set<C> columnKeySet() {
        return columnMap().keySet();
    }

    public boolean contains(Object obj, Object obj2) {
        Map map = (Map) d6.t(rowMap(), obj);
        return map != null && d6.s(map, obj2);
    }

    public boolean containsColumn(Object obj) {
        return d6.s(columnMap(), obj);
    }

    public boolean containsRow(Object obj) {
        return d6.s(rowMap(), obj);
    }

    public boolean containsValue(Object obj) {
        for (Map<C, V> map : rowMap().values()) {
            if (map.containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    Set<q8.a<R, C, V>> createCellSet() {
        return new b();
    }

    Collection<V> createValues() {
        return new c();
    }

    public boolean equals(Object obj) {
        return a9.a(this, obj);
    }

    @Override // com.google.common.collect.q8
    public V get(Object obj, Object obj2) {
        Map map = (Map) d6.t(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) d6.t(map, obj2);
    }

    public int hashCode() {
        return cellSet().hashCode();
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.q8
    public V put(R r10, C c10, V v10) {
        return row(r10).put(c10, v10);
    }

    public void putAll(q8<? extends R, ? extends C, ? extends V> q8Var) {
        for (q8.a<? extends R, ? extends C, ? extends V> aVar : q8Var.cellSet()) {
            put(aVar.a(), aVar.b(), aVar.getValue());
        }
    }

    public V remove(Object obj, Object obj2) {
        Map map = (Map) d6.t(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) d6.u(map, obj2);
    }

    @Override // com.google.common.collect.q8
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    public String toString() {
        return rowMap().toString();
    }

    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection == null) {
            Collection<V> createValues = createValues();
            this.values = createValues;
            return createValues;
        }
        return collection;
    }

    Iterator<V> valuesIterator() {
        return new a(this, cellSet().iterator());
    }

    Spliterator<V> valuesSpliterator() {
        return s2.e(cellSpliterator(), new Function() { // from class: com.google.common.collect.x
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((q8.a) obj).getValue();
            }
        });
    }
}
