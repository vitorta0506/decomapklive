package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class g1<K, V> implements w1 {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f14964a;

    /* renamed from: b  reason: collision with root package name */
    private volatile d f14965b;

    /* renamed from: c  reason: collision with root package name */
    private c<K, V> f14966c;

    /* renamed from: d  reason: collision with root package name */
    private List<l1> f14967d;

    /* renamed from: e  reason: collision with root package name */
    private final a<K, V> f14968e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface a<K, V> {
        l1 a(K k10, V v10);

        l1 b();

        void c(l1 l1Var, Map<K, V> map);
    }

    /* loaded from: classes3.dex */
    private static class b<K, V> implements a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final e1<K, V> f14969a;

        public b(e1<K, V> e1Var) {
            this.f14969a = e1Var;
        }

        @Override // com.google.protobuf.g1.a
        public l1 a(K k10, V v10) {
            return this.f14969a.newBuilderForType().N(k10).P(v10).I();
        }

        @Override // com.google.protobuf.g1.a
        public l1 b() {
            return this.f14969a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.g1.a
        public void c(l1 l1Var, Map<K, V> map) {
            e1 e1Var = (e1) l1Var;
            map.put(e1Var.f(), e1Var.h());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c<K, V> implements Map<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final w1 f14970a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<K, V> f14971b;

        /* loaded from: classes3.dex */
        private static class a<E> implements Collection<E> {

            /* renamed from: a  reason: collision with root package name */
            private final w1 f14972a;

            /* renamed from: b  reason: collision with root package name */
            private final Collection<E> f14973b;

            a(w1 w1Var, Collection<E> collection) {
                this.f14972a = w1Var;
                this.f14973b = collection;
            }

            @Override // java.util.Collection
            public boolean add(E e10) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public void clear() {
                this.f14972a.a();
                this.f14973b.clear();
            }

            @Override // java.util.Collection
            public boolean contains(Object obj) {
                return this.f14973b.contains(obj);
            }

            @Override // java.util.Collection
            public boolean containsAll(Collection<?> collection) {
                return this.f14973b.containsAll(collection);
            }

            @Override // java.util.Collection
            public boolean equals(Object obj) {
                return this.f14973b.equals(obj);
            }

            @Override // java.util.Collection
            public int hashCode() {
                return this.f14973b.hashCode();
            }

            @Override // java.util.Collection
            public boolean isEmpty() {
                return this.f14973b.isEmpty();
            }

            @Override // java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new b(this.f14972a, this.f14973b.iterator());
            }

            @Override // java.util.Collection
            public boolean remove(Object obj) {
                this.f14972a.a();
                return this.f14973b.remove(obj);
            }

            @Override // java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                this.f14972a.a();
                return this.f14973b.removeAll(collection);
            }

            @Override // java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                this.f14972a.a();
                return this.f14973b.retainAll(collection);
            }

            @Override // java.util.Collection
            public int size() {
                return this.f14973b.size();
            }

            @Override // java.util.Collection
            public Object[] toArray() {
                return this.f14973b.toArray();
            }

            public String toString() {
                return this.f14973b.toString();
            }

            @Override // java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f14973b.toArray(tArr);
            }
        }

        /* loaded from: classes3.dex */
        private static class b<E> implements Iterator<E> {

            /* renamed from: a  reason: collision with root package name */
            private final w1 f14974a;

            /* renamed from: b  reason: collision with root package name */
            private final Iterator<E> f14975b;

            b(w1 w1Var, Iterator<E> it) {
                this.f14974a = w1Var;
                this.f14975b = it;
            }

            public boolean equals(Object obj) {
                return this.f14975b.equals(obj);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f14975b.hasNext();
            }

            public int hashCode() {
                return this.f14975b.hashCode();
            }

            @Override // java.util.Iterator
            public E next() {
                return this.f14975b.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f14974a.a();
                this.f14975b.remove();
            }

            public String toString() {
                return this.f14975b.toString();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.protobuf.g1$c$c  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0144c<E> implements Set<E> {

            /* renamed from: a  reason: collision with root package name */
            private final w1 f14976a;

            /* renamed from: b  reason: collision with root package name */
            private final Set<E> f14977b;

            C0144c(w1 w1Var, Set<E> set) {
                this.f14976a = w1Var;
                this.f14977b = set;
            }

            @Override // java.util.Set, java.util.Collection
            public boolean add(E e10) {
                this.f14976a.a();
                return this.f14977b.add(e10);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                this.f14976a.a();
                return this.f14977b.addAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public void clear() {
                this.f14976a.a();
                this.f14977b.clear();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean contains(Object obj) {
                return this.f14977b.contains(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean containsAll(Collection<?> collection) {
                return this.f14977b.containsAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean equals(Object obj) {
                return this.f14977b.equals(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public int hashCode() {
                return this.f14977b.hashCode();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean isEmpty() {
                return this.f14977b.isEmpty();
            }

            @Override // java.util.Set, java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new b(this.f14976a, this.f14977b.iterator());
            }

            @Override // java.util.Set, java.util.Collection
            public boolean remove(Object obj) {
                this.f14976a.a();
                return this.f14977b.remove(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                this.f14976a.a();
                return this.f14977b.removeAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                this.f14976a.a();
                return this.f14977b.retainAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public int size() {
                return this.f14977b.size();
            }

            @Override // java.util.Set, java.util.Collection
            public Object[] toArray() {
                return this.f14977b.toArray();
            }

            public String toString() {
                return this.f14977b.toString();
            }

            @Override // java.util.Set, java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f14977b.toArray(tArr);
            }
        }

        c(w1 w1Var, Map<K, V> map) {
            this.f14970a = w1Var;
            this.f14971b = map;
        }

        @Override // java.util.Map
        public void clear() {
            this.f14970a.a();
            this.f14971b.clear();
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            return this.f14971b.containsKey(obj);
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return this.f14971b.containsValue(obj);
        }

        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new C0144c(this.f14970a, this.f14971b.entrySet());
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            return this.f14971b.equals(obj);
        }

        @Override // java.util.Map
        public V get(Object obj) {
            return this.f14971b.get(obj);
        }

        @Override // java.util.Map
        public int hashCode() {
            return this.f14971b.hashCode();
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            return this.f14971b.isEmpty();
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            return new C0144c(this.f14970a, this.f14971b.keySet());
        }

        @Override // java.util.Map
        public V put(K k10, V v10) {
            this.f14970a.a();
            u0.a(k10);
            u0.a(v10);
            return this.f14971b.put(k10, v10);
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f14970a.a();
            for (K k10 : map.keySet()) {
                u0.a(k10);
                u0.a(map.get(k10));
            }
            this.f14971b.putAll(map);
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            this.f14970a.a();
            return this.f14971b.remove(obj);
        }

        @Override // java.util.Map
        public int size() {
            return this.f14971b.size();
        }

        public String toString() {
            return this.f14971b.toString();
        }

        @Override // java.util.Map
        public Collection<V> values() {
            return new a(this.f14970a, this.f14971b.values());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum d {
        MAP,
        LIST,
        BOTH
    }

    private g1(a<K, V> aVar, d dVar, Map<K, V> map) {
        this.f14968e = aVar;
        this.f14964a = true;
        this.f14965b = dVar;
        this.f14966c = new c<>(this, map);
        this.f14967d = null;
    }

    private l1 b(K k10, V v10) {
        return this.f14968e.a(k10, v10);
    }

    private c<K, V> c(List<l1> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (l1 l1Var : list) {
            e(l1Var, linkedHashMap);
        }
        return new c<>(this, linkedHashMap);
    }

    private List<l1> d(c<K, V> cVar) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, V> entry : cVar.entrySet()) {
            arrayList.add(b(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private void e(l1 l1Var, Map<K, V> map) {
        this.f14968e.c(l1Var, map);
    }

    public static <K, V> g1<K, V> g(e1<K, V> e1Var) {
        return new g1<>(e1Var, d.MAP, Collections.emptyMap());
    }

    public static <K, V> g1<K, V> p(e1<K, V> e1Var) {
        return new g1<>(e1Var, d.MAP, new LinkedHashMap());
    }

    @Override // com.google.protobuf.w1
    public void a() {
        if (!m()) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof g1) {
            return MapFieldLite.equals((Map) i(), (Map) ((g1) obj).i());
        }
        return false;
    }

    public g1<K, V> f() {
        return new g1<>(this.f14968e, d.MAP, MapFieldLite.copy((Map) i()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<l1> h() {
        d dVar = this.f14965b;
        d dVar2 = d.MAP;
        if (dVar == dVar2) {
            synchronized (this) {
                if (this.f14965b == dVar2) {
                    this.f14967d = d(this.f14966c);
                    this.f14965b = d.BOTH;
                }
            }
        }
        return Collections.unmodifiableList(this.f14967d);
    }

    public int hashCode() {
        return MapFieldLite.calculateHashCodeForMap(i());
    }

    public Map<K, V> i() {
        d dVar = this.f14965b;
        d dVar2 = d.LIST;
        if (dVar == dVar2) {
            synchronized (this) {
                if (this.f14965b == dVar2) {
                    this.f14966c = c(this.f14967d);
                    this.f14965b = d.BOTH;
                }
            }
        }
        return Collections.unmodifiableMap(this.f14966c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l1 j() {
        return this.f14968e.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<l1> k() {
        d dVar = this.f14965b;
        d dVar2 = d.LIST;
        if (dVar != dVar2) {
            if (this.f14965b == d.MAP) {
                this.f14967d = d(this.f14966c);
            }
            this.f14966c = null;
            this.f14965b = dVar2;
        }
        return this.f14967d;
    }

    public Map<K, V> l() {
        d dVar = this.f14965b;
        d dVar2 = d.MAP;
        if (dVar != dVar2) {
            if (this.f14965b == d.LIST) {
                this.f14966c = c(this.f14967d);
            }
            this.f14967d = null;
            this.f14965b = dVar2;
        }
        return this.f14966c;
    }

    public boolean m() {
        return this.f14964a;
    }

    public void n() {
        this.f14964a = false;
    }

    public void o(g1<K, V> g1Var) {
        l().putAll(MapFieldLite.copy((Map) g1Var.i()));
    }

    private g1(e1<K, V> e1Var, d dVar, Map<K, V> map) {
        this(new b(e1Var), dVar, map);
    }
}
