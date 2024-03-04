package com.google.common.collect;

import com.google.common.collect.d6;
import com.google.common.collect.j;
import com.google.common.collect.l6;
import com.google.common.collect.o;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class j<K, V> extends com.google.common.collect.o<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> map;
    private transient int totalSize;

    /* loaded from: classes2.dex */
    class a extends j<K, V>.d<V> {
        a(j jVar) {
            super();
        }

        @Override // com.google.common.collect.j.d
        V a(K k10, V v10) {
            return v10;
        }
    }

    /* loaded from: classes2.dex */
    class b extends j<K, V>.d<Map.Entry<K, V>> {
        b(j jVar) {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.j.d
        /* renamed from: b */
        public Map.Entry<K, V> a(K k10, V v10) {
            return d6.g(k10, v10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c extends d6.n<K, Collection<V>> {

        /* renamed from: d  reason: collision with root package name */
        final transient Map<K, Collection<V>> f13134d;

        /* loaded from: classes2.dex */
        class a extends d6.h<K, Collection<V>> {
            a() {
            }

            @Override // com.google.common.collect.d6.h, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return c3.c(c.this.f13134d.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            @Override // com.google.common.collect.d6.h
            Map<K, Collection<V>> m() {
                return c.this;
            }

            @Override // com.google.common.collect.d6.h, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj)) {
                    Map.Entry entry = (Map.Entry) obj;
                    Objects.requireNonNull(entry);
                    j.this.removeValuesForKey(entry.getKey());
                    return true;
                }
                return false;
            }

            @Override // java.util.Collection, java.lang.Iterable, java.util.Set
            public Spliterator<Map.Entry<K, Collection<V>>> spliterator() {
                Spliterator<Map.Entry<K, Collection<V>>> spliterator = c.this.f13134d.entrySet().spliterator();
                final c cVar = c.this;
                return s2.e(spliterator, new Function() { // from class: com.google.common.collect.k
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return j.c.this.f((Map.Entry) obj);
                    }
                });
            }
        }

        /* loaded from: classes2.dex */
        class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<Map.Entry<K, Collection<V>>> f13137a;

            /* renamed from: b  reason: collision with root package name */
            Collection<V> f13138b;

            b() {
                this.f13137a = c.this.f13134d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.f13137a.next();
                this.f13138b = next.getValue();
                return c.this.f(next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f13137a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                com.google.common.base.o.A(this.f13138b != null, "no calls to next() since the last call to remove()");
                this.f13137a.remove();
                j.access$220(j.this, this.f13138b.size());
                this.f13138b.clear();
                this.f13138b = null;
            }
        }

        c(Map<K, Collection<V>> map) {
            this.f13134d = map;
        }

        @Override // com.google.common.collect.d6.n
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f13134d == j.this.map) {
                j.this.clear();
            } else {
                p5.e(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return d6.s(this.f13134d, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: d */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) d6.t(this.f13134d, obj);
            if (collection == null) {
                return null;
            }
            return j.this.wrapCollection(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: e */
        public Collection<V> remove(Object obj) {
            Collection<V> remove = this.f13134d.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> createCollection = j.this.createCollection();
            createCollection.addAll(remove);
            j.access$220(j.this, remove.size());
            remove.clear();
            return createCollection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.f13134d.equals(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map.Entry<K, Collection<V>> f(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return d6.g(key, j.this.wrapCollection(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f13134d.hashCode();
        }

        @Override // com.google.common.collect.d6.n, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return j.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f13134d.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f13134d.toString();
        }
    }

    /* loaded from: classes2.dex */
    private abstract class d<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        final Iterator<Map.Entry<K, Collection<V>>> f13140a;

        /* renamed from: b  reason: collision with root package name */
        K f13141b = null;

        /* renamed from: c  reason: collision with root package name */
        Collection<V> f13142c = null;

        /* renamed from: d  reason: collision with root package name */
        Iterator<V> f13143d = p5.k();

        d() {
            this.f13140a = (Iterator<Map.Entry<K, V>>) j.this.map.entrySet().iterator();
        }

        abstract T a(K k10, V v10);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13140a.hasNext() || this.f13143d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f13143d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.f13140a.next();
                this.f13141b = next.getKey();
                Collection<V> value = next.getValue();
                this.f13142c = value;
                this.f13143d = value.iterator();
            }
            return a(w6.a(this.f13141b), this.f13143d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f13143d.remove();
            Collection<V> collection = this.f13142c;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f13140a.remove();
            }
            j.access$210(j.this);
        }
    }

    /* loaded from: classes2.dex */
    private class e extends d6.j<K, Collection<V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Iterator<K> {

            /* renamed from: a  reason: collision with root package name */
            Map.Entry<K, Collection<V>> f13146a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Iterator f13147b;

            a(Iterator it) {
                this.f13147b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f13147b.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.f13147b.next();
                this.f13146a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                com.google.common.base.o.A(this.f13146a != null, "no calls to next() since the last call to remove()");
                Collection<V> value = this.f13146a.getValue();
                this.f13147b.remove();
                j.access$220(j.this, value.size());
                value.clear();
                this.f13146a = null;
            }
        }

        e(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            p5.e(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return u().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || u().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return u().keySet().hashCode();
        }

        @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(u().entrySet().iterator());
        }

        @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i9;
            Collection<V> remove = u().remove(obj);
            if (remove != null) {
                i9 = remove.size();
                remove.clear();
                j.access$220(j.this, i9);
            } else {
                i9 = 0;
            }
            return i9 > 0;
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.Set
        public Spliterator<K> spliterator() {
            return u().keySet().spliterator();
        }
    }

    /* loaded from: classes2.dex */
    class f extends j<K, V>.i implements NavigableMap<K, Collection<V>> {
        f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k10) {
            Map.Entry<K, Collection<V>> ceilingEntry = i().ceilingEntry(k10);
            if (ceilingEntry == null) {
                return null;
            }
            return f(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k10) {
            return i().ceilingKey(k10);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new f(i().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> firstEntry = i().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return f(firstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k10) {
            Map.Entry<K, Collection<V>> floorEntry = i().floorEntry(k10);
            if (floorEntry == null) {
                return null;
            }
            return f(floorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k10) {
            return i().floorKey(k10);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k10) {
            Map.Entry<K, Collection<V>> higherEntry = i().higherEntry(k10);
            if (higherEntry == null) {
                return null;
            }
            return f(higherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k10) {
            return i().higherKey(k10);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.j.i
        /* renamed from: j */
        public NavigableSet<K> g() {
            return new g(i());
        }

        @Override // com.google.common.collect.j.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: k */
        public NavigableMap<K, Collection<V>> headMap(K k10) {
            return headMap(k10, false);
        }

        @Override // com.google.common.collect.j.i, com.google.common.collect.j.c, com.google.common.collect.d6.n, java.util.AbstractMap, java.util.Map
        /* renamed from: l */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> lastEntry = i().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return f(lastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k10) {
            Map.Entry<K, Collection<V>> lowerEntry = i().lowerEntry(k10);
            if (lowerEntry == null) {
                return null;
            }
            return f(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k10) {
            return i().lowerKey(k10);
        }

        Map.Entry<K, Collection<V>> m(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (it.hasNext()) {
                Map.Entry<K, Collection<V>> next = it.next();
                Collection<V> createCollection = j.this.createCollection();
                createCollection.addAll(next.getValue());
                it.remove();
                return d6.g(next.getKey(), j.this.unmodifiableCollectionSubclass(createCollection));
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.j.i
        /* renamed from: n */
        public NavigableMap<K, Collection<V>> i() {
            return (NavigableMap) super.i();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override // com.google.common.collect.j.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: o */
        public NavigableMap<K, Collection<V>> subMap(K k10, K k11) {
            return subMap(k10, true, k11, false);
        }

        @Override // com.google.common.collect.j.i, java.util.SortedMap, java.util.NavigableMap
        /* renamed from: p */
        public NavigableMap<K, Collection<V>> tailMap(K k10) {
            return tailMap(k10, true);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return m(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return m(descendingMap().entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k10, boolean z10) {
            return new f(i().headMap(k10, z10));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k10, boolean z10, K k11, boolean z11) {
            return new f(i().subMap(k10, z10, k11, z11));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k10, boolean z10) {
            return new f(i().tailMap(k10, z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g extends j<K, V>.C0114j implements NavigableSet<K> {
        g(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // com.google.common.collect.j.C0114j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: B */
        public NavigableSet<K> subSet(K k10, K k11) {
            return subSet(k10, true, k11, false);
        }

        @Override // com.google.common.collect.j.C0114j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: F */
        public NavigableSet<K> tailSet(K k10) {
            return tailSet(k10, true);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k10) {
            return x().ceilingKey(k10);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new g(x().descendingMap());
        }

        @Override // java.util.NavigableSet
        public K floor(K k10) {
            return x().floorKey(k10);
        }

        @Override // java.util.NavigableSet
        public K higher(K k10) {
            return x().higherKey(k10);
        }

        @Override // java.util.NavigableSet
        public K lower(K k10) {
            return x().lowerKey(k10);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) p5.v(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) p5.v(descendingIterator());
        }

        @Override // com.google.common.collect.j.C0114j, java.util.SortedSet, java.util.NavigableSet
        /* renamed from: y */
        public NavigableSet<K> headSet(K k10) {
            return headSet(k10, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.j.C0114j
        /* renamed from: z */
        public NavigableMap<K, Collection<V>> x() {
            return (NavigableMap) super.x();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k10, boolean z10) {
            return new g(x().headMap(k10, z10));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k10, boolean z10, K k11, boolean z11) {
            return new g(x().subMap(k10, z10, k11, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k10, boolean z10) {
            return new g(x().tailMap(k10, z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class h extends j<K, V>.l implements RandomAccess {
        h(j jVar, K k10, List<V> list, j<K, V>.k kVar) {
            super(k10, list, kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class i extends j<K, V>.c implements SortedMap<K, Collection<V>> {

        /* renamed from: f  reason: collision with root package name */
        SortedSet<K> f13151f;

        i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return i().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return i().firstKey();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.n
        /* renamed from: g */
        public SortedSet<K> b() {
            return new C0114j(i());
        }

        @Override // com.google.common.collect.j.c, com.google.common.collect.d6.n, java.util.AbstractMap, java.util.Map
        /* renamed from: h */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f13151f;
            if (sortedSet == null) {
                SortedSet<K> b10 = b();
                this.f13151f = b10;
                return b10;
            }
            return sortedSet;
        }

        public SortedMap<K, Collection<V>> headMap(K k10) {
            return new i(i().headMap(k10));
        }

        SortedMap<K, Collection<V>> i() {
            return (SortedMap) this.f13134d;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return i().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k10, K k11) {
            return new i(i().subMap(k10, k11));
        }

        public SortedMap<K, Collection<V>> tailMap(K k10) {
            return new i(i().tailMap(k10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.collect.j$j  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0114j extends j<K, V>.e implements SortedSet<K> {
        C0114j(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return x().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return x().firstKey();
        }

        public SortedSet<K> headSet(K k10) {
            return new C0114j(x().headMap(k10));
        }

        @Override // java.util.SortedSet
        public K last() {
            return x().lastKey();
        }

        public SortedSet<K> subSet(K k10, K k11) {
            return new C0114j(x().subMap(k10, k11));
        }

        public SortedSet<K> tailSet(K k10) {
            return new C0114j(x().tailMap(k10));
        }

        SortedMap<K, Collection<V>> x() {
            return (SortedMap) super.u();
        }
    }

    /* loaded from: classes2.dex */
    class m extends j<K, V>.o implements NavigableSet<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public m(K k10, NavigableSet<V> navigableSet, j<K, V>.k kVar) {
            super(k10, navigableSet, kVar);
        }

        private NavigableSet<V> y(NavigableSet<V> navigableSet) {
            return new m(this.f13154a, navigableSet, d() == null ? this : d());
        }

        @Override // java.util.NavigableSet
        public V ceiling(V v10) {
            return u().ceiling(v10);
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new k.a(u().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return y(u().descendingSet());
        }

        @Override // java.util.NavigableSet
        public V floor(V v10) {
            return u().floor(v10);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(V v10, boolean z10) {
            return y(u().headSet(v10, z10));
        }

        @Override // java.util.NavigableSet
        public V higher(V v10) {
            return u().higher(v10);
        }

        @Override // java.util.NavigableSet
        public V lower(V v10) {
            return u().lower(v10);
        }

        @Override // java.util.NavigableSet
        public V pollFirst() {
            return (V) p5.v(iterator());
        }

        @Override // java.util.NavigableSet
        public V pollLast() {
            return (V) p5.v(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(V v10, boolean z10, V v11, boolean z11) {
            return y(u().subSet(v10, z10, v11, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(V v10, boolean z10) {
            return y(u().tailSet(v10, z10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.j.o
        /* renamed from: x */
        public NavigableSet<V> u() {
            return (NavigableSet) super.u();
        }
    }

    /* loaded from: classes2.dex */
    class n extends j<K, V>.k implements Set<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public n(K k10, Set<V> set) {
            super(k10, set, null);
        }

        @Override // com.google.common.collect.j.k, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean o10 = w7.o((Set) this.f13155b, collection);
            if (o10) {
                j.access$212(j.this, this.f13155b.size() - size);
                n();
            }
            return o10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o extends j<K, V>.k implements SortedSet<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public o(K k10, SortedSet<V> sortedSet, j<K, V>.k kVar) {
            super(k10, sortedSet, kVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super V> comparator() {
            return u().comparator();
        }

        @Override // java.util.SortedSet
        public V first() {
            m();
            return u().first();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> headSet(V v10) {
            m();
            return new o(g(), u().headSet(v10), d() == null ? this : d());
        }

        @Override // java.util.SortedSet
        public V last() {
            m();
            return u().last();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> subSet(V v10, V v11) {
            m();
            return new o(g(), u().subSet(v10, v11), d() == null ? this : d());
        }

        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(V v10) {
            m();
            return new o(g(), u().tailSet(v10), d() == null ? this : d());
        }

        SortedSet<V> u() {
            return (SortedSet) f();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(Map<K, Collection<V>> map) {
        com.google.common.base.o.d(map.isEmpty());
        this.map = map;
    }

    static /* synthetic */ int access$208(j jVar) {
        int i9 = jVar.totalSize;
        jVar.totalSize = i9 + 1;
        return i9;
    }

    static /* synthetic */ int access$210(j jVar) {
        int i9 = jVar.totalSize;
        jVar.totalSize = i9 - 1;
        return i9;
    }

    static /* synthetic */ int access$212(j jVar, int i9) {
        int i10 = jVar.totalSize + i9;
        jVar.totalSize = i10;
        return i10;
    }

    static /* synthetic */ int access$220(j jVar, int i9) {
        int i10 = jVar.totalSize - i9;
        jVar.totalSize = i10;
        return i10;
    }

    private Collection<V> getOrCreateCollection(K k10) {
        Collection<V> collection = this.map.get(k10);
        if (collection == null) {
            Collection<V> createCollection = createCollection(k10);
            this.map.put(k10, createCollection);
            return createCollection;
        }
        return collection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Iterator<E> iteratorOrListIterator(Collection<E> collection) {
        if (collection instanceof List) {
            return ((List) collection).listIterator();
        }
        return collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Spliterator lambda$entrySpliterator$1(Map.Entry entry) {
        final Object key = entry.getKey();
        return s2.e(((Collection) entry.getValue()).spliterator(), new Function() { // from class: com.google.common.collect.g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map.Entry g10;
                g10 = d6.g(key, obj);
                return g10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEach$3(final BiConsumer biConsumer, final Object obj, Collection collection) {
        collection.forEach(new Consumer() { // from class: com.google.common.collect.f
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                biConsumer.accept(obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeValuesForKey(Object obj) {
        Collection collection = (Collection) d6.u(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<K, Collection<V>> backingMap() {
        return this.map;
    }

    @Override // com.google.common.collect.i6
    public void clear() {
        for (Collection<V> collection : this.map.values()) {
            collection.clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override // com.google.common.collect.i6
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.o
    Map<K, Collection<V>> createAsMap() {
        return new c(this.map);
    }

    abstract Collection<V> createCollection();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection<V> createCollection(K k10) {
        return createCollection();
    }

    @Override // com.google.common.collect.o
    Collection<Map.Entry<K, V>> createEntries() {
        if (this instanceof u7) {
            return new o.b(this);
        }
        return new o.a();
    }

    @Override // com.google.common.collect.o
    Set<K> createKeySet() {
        return new e(this.map);
    }

    @Override // com.google.common.collect.o
    q6<K> createKeys() {
        return new l6.e(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.map);
        }
        if (map instanceof SortedMap) {
            return new i((SortedMap) this.map);
        }
        return new c(this.map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new g((NavigableMap) this.map);
        }
        if (map instanceof SortedMap) {
            return new C0114j((SortedMap) this.map);
        }
        return new e(this.map);
    }

    Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection());
    }

    @Override // com.google.common.collect.o
    Collection<V> createValues() {
        return new o.c();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.o
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new b(this);
    }

    @Override // com.google.common.collect.o
    Spliterator<Map.Entry<K, V>> entrySpliterator() {
        return s2.b(this.map.entrySet().spliterator(), new Function() { // from class: com.google.common.collect.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator lambda$entrySpliterator$1;
                lambda$entrySpliterator$1 = j.lambda$entrySpliterator$1((Map.Entry) obj);
                return lambda$entrySpliterator$1;
            }
        }, 64, size());
    }

    public void forEach(final BiConsumer<? super K, ? super V> biConsumer) {
        com.google.common.base.o.s(biConsumer);
        this.map.forEach(new BiConsumer() { // from class: com.google.common.collect.e
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                j.lambda$forEach$3(biConsumer, obj, (Collection) obj2);
            }
        });
    }

    @Override // com.google.common.collect.i6
    public Collection<V> get(K k10) {
        Collection<V> collection = this.map.get(k10);
        if (collection == null) {
            collection = createCollection(k10);
        }
        return wrapCollection(k10, collection);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public boolean put(K k10, V v10) {
        Collection<V> collection = this.map.get(k10);
        if (collection == null) {
            Collection<V> createCollection = createCollection(k10);
            if (createCollection.add(v10)) {
                this.totalSize++;
                this.map.put(k10, createCollection);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (collection.add(v10)) {
            this.totalSize++;
            return true;
        } else {
            return false;
        }
    }

    @Override // com.google.common.collect.i6
    public Collection<V> removeAll(Object obj) {
        Collection<V> remove = this.map.remove(obj);
        if (remove == null) {
            return createUnmodifiableEmptyCollection();
        }
        Collection createCollection = createCollection();
        createCollection.addAll(remove);
        this.totalSize -= remove.size();
        remove.clear();
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection);
    }

    @Override // com.google.common.collect.o
    public Collection<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k10);
        }
        Collection<V> orCreateCollection = getOrCreateCollection(k10);
        Collection createCollection = createCollection();
        createCollection.addAll(orCreateCollection);
        this.totalSize -= orCreateCollection.size();
        orCreateCollection.clear();
        while (it.hasNext()) {
            if (orCreateCollection.add(it.next())) {
                this.totalSize++;
            }
        }
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setMap(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            com.google.common.base.o.d(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    @Override // com.google.common.collect.i6
    public int size() {
        return this.totalSize;
    }

    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.google.common.collect.o
    Iterator<V> valueIterator() {
        return new a(this);
    }

    @Override // com.google.common.collect.o
    Spliterator<V> valueSpliterator() {
        return s2.b(this.map.values().spliterator(), new Function() { // from class: com.google.common.collect.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Collection) obj).spliterator();
            }
        }, 64, size());
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public Collection<V> values() {
        return super.values();
    }

    Collection<V> wrapCollection(K k10, Collection<V> collection) {
        return new k(k10, collection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<V> wrapList(K k10, List<V> list, j<K, V>.k kVar) {
        if (list instanceof RandomAccess) {
            return new h(this, k10, list, kVar);
        }
        return new l(k10, list, kVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class k extends AbstractCollection<V> {

        /* renamed from: a  reason: collision with root package name */
        final K f13154a;

        /* renamed from: b  reason: collision with root package name */
        Collection<V> f13155b;

        /* renamed from: c  reason: collision with root package name */
        final j<K, V>.k f13156c;

        /* renamed from: d  reason: collision with root package name */
        final Collection<V> f13157d;

        k(K k10, Collection<V> collection, j<K, V>.k kVar) {
            this.f13154a = k10;
            this.f13155b = collection;
            this.f13156c = kVar;
            this.f13157d = kVar == null ? null : kVar.f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v10) {
            m();
            boolean isEmpty = this.f13155b.isEmpty();
            boolean add = this.f13155b.add(v10);
            if (add) {
                j.access$208(j.this);
                if (isEmpty) {
                    c();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f13155b.addAll(collection);
            if (addAll) {
                j.access$212(j.this, this.f13155b.size() - size);
                if (size == 0) {
                    c();
                }
            }
            return addAll;
        }

        void c() {
            j<K, V>.k kVar = this.f13156c;
            if (kVar != null) {
                kVar.c();
            } else {
                j.this.map.put(this.f13154a, this.f13155b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f13155b.clear();
            j.access$220(j.this, size);
            n();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            m();
            return this.f13155b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            m();
            return this.f13155b.containsAll(collection);
        }

        j<K, V>.k d() {
            return this.f13156c;
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            m();
            return this.f13155b.equals(obj);
        }

        Collection<V> f() {
            return this.f13155b;
        }

        K g() {
            return this.f13154a;
        }

        @Override // java.util.Collection
        public int hashCode() {
            m();
            return this.f13155b.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            m();
            return new a();
        }

        void m() {
            Collection<V> collection;
            j<K, V>.k kVar = this.f13156c;
            if (kVar != null) {
                kVar.m();
                if (this.f13156c.f() != this.f13157d) {
                    throw new ConcurrentModificationException();
                }
            } else if (!this.f13155b.isEmpty() || (collection = (Collection) j.this.map.get(this.f13154a)) == null) {
            } else {
                this.f13155b = collection;
            }
        }

        void n() {
            j<K, V>.k kVar = this.f13156c;
            if (kVar != null) {
                kVar.n();
            } else if (this.f13155b.isEmpty()) {
                j.this.map.remove(this.f13154a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            m();
            boolean remove = this.f13155b.remove(obj);
            if (remove) {
                j.access$210(j.this);
                n();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f13155b.removeAll(collection);
            if (removeAll) {
                j.access$212(j.this, this.f13155b.size() - size);
                n();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            com.google.common.base.o.s(collection);
            int size = size();
            boolean retainAll = this.f13155b.retainAll(collection);
            if (retainAll) {
                j.access$212(j.this, this.f13155b.size() - size);
                n();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            m();
            return this.f13155b.size();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<V> spliterator() {
            m();
            return this.f13155b.spliterator();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            m();
            return this.f13155b.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            final Iterator<V> f13159a;

            /* renamed from: b  reason: collision with root package name */
            final Collection<V> f13160b;

            a() {
                Collection<V> collection = k.this.f13155b;
                this.f13160b = collection;
                this.f13159a = j.iteratorOrListIterator(collection);
            }

            Iterator<V> a() {
                b();
                return this.f13159a;
            }

            void b() {
                k.this.m();
                if (k.this.f13155b != this.f13160b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                b();
                return this.f13159a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                b();
                return this.f13159a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f13159a.remove();
                j.access$210(j.this);
                k.this.n();
            }

            a(Iterator<V> it) {
                this.f13160b = k.this.f13155b;
                this.f13159a = it;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l extends j<K, V>.k implements List<V> {

        /* loaded from: classes2.dex */
        private class a extends j<K, V>.k.a implements ListIterator<V> {
            a() {
                super();
            }

            private ListIterator<V> c() {
                return (ListIterator) a();
            }

            @Override // java.util.ListIterator
            public void add(V v10) {
                boolean isEmpty = l.this.isEmpty();
                c().add(v10);
                j.access$208(j.this);
                if (isEmpty) {
                    l.this.c();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v10) {
                c().set(v10);
            }

            public a(int i9) {
                super(l.this.u().listIterator(i9));
            }
        }

        l(K k10, List<V> list, j<K, V>.k kVar) {
            super(k10, list, kVar);
        }

        @Override // java.util.List
        public void add(int i9, V v10) {
            m();
            boolean isEmpty = f().isEmpty();
            u().add(i9, v10);
            j.access$208(j.this);
            if (isEmpty) {
                c();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i9, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = u().addAll(i9, collection);
            if (addAll) {
                j.access$212(j.this, f().size() - size);
                if (size == 0) {
                    c();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public V get(int i9) {
            m();
            return u().get(i9);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            m();
            return u().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            m();
            return u().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            m();
            return new a();
        }

        @Override // java.util.List
        public V remove(int i9) {
            m();
            V remove = u().remove(i9);
            j.access$210(j.this);
            n();
            return remove;
        }

        @Override // java.util.List
        public V set(int i9, V v10) {
            m();
            return u().set(i9, v10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i9, int i10) {
            m();
            return j.this.wrapList(g(), u().subList(i9, i10), d() == null ? this : d());
        }

        List<V> u() {
            return (List) f();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i9) {
            m();
            return new a(i9);
        }
    }
}
