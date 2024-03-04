package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class a<K, V> extends t3<K, V> implements e0<K, V>, Serializable {
    private static final long serialVersionUID = 0;
    private transient Map<K, V> delegate;
    private transient Set<Map.Entry<K, V>> entrySet;
    transient a<V, K> inverse;
    private transient Set<K> keySet;
    private transient Set<V> valueSet;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0110a implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        Map.Entry<K, V> f12892a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f12893b;

        C0110a(Iterator it) {
            this.f12893b = it;
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            Map.Entry<K, V> entry = (Map.Entry) this.f12893b.next();
            this.f12892a = entry;
            return new b(entry);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12893b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            Map.Entry<K, V> entry = this.f12892a;
            if (entry != null) {
                V value = entry.getValue();
                this.f12893b.remove();
                a.this.removeFromInverseMap(value);
                this.f12892a = null;
                return;
            }
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends u3<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final Map.Entry<K, V> f12895a;

        b(Map.Entry<K, V> entry) {
            this.f12895a = entry;
        }

        @Override // com.google.common.collect.u3, java.util.Map.Entry
        public V setValue(V v10) {
            a.this.checkValue(v10);
            com.google.common.base.o.A(a.this.entrySet().contains(this), "entry no longer in map");
            if (com.google.common.base.l.a(v10, getValue())) {
                return v10;
            }
            com.google.common.base.o.m(!a.this.containsValue(v10), "value already present: %s", v10);
            V value = this.f12895a.setValue(v10);
            com.google.common.base.o.A(com.google.common.base.l.a(v10, a.this.get(getKey())), "entry no longer in map");
            a.this.updateInverseMap(getKey(), true, value, v10);
            return value;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.w3
        /* renamed from: w0 */
        public Map.Entry<K, V> delegate() {
            return this.f12895a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c extends y3<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Set<Map.Entry<K, V>> f12897a;

        private c() {
            this.f12897a = a.this.delegate.entrySet();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public void clear() {
            a.this.clear();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return d6.c(delegate(), obj);
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return a.this.entrySetIterator();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (this.f12897a.contains(obj) && (obj instanceof Map.Entry)) {
                Map.Entry entry = (Map.Entry) obj;
                ((a) a.this.inverse).delegate.remove(entry.getValue());
                this.f12897a.remove(entry);
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }

        @Override // com.google.common.collect.q3, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        /* synthetic */ c(a aVar, C0110a c0110a) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<Map.Entry<K, V>> delegate() {
            return this.f12897a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class d<K, V> extends a<K, V> {
        private static final long serialVersionUID = 0;

        d(Map<K, V> map, a<V, K> aVar) {
            super(map, aVar, null);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            setInverse((a) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(inverse());
        }

        @Override // com.google.common.collect.a
        K checkKey(K k10) {
            return this.inverse.checkValue(k10);
        }

        @Override // com.google.common.collect.a
        V checkValue(V v10) {
            return this.inverse.checkKey(v10);
        }

        @Override // com.google.common.collect.a, com.google.common.collect.t3, com.google.common.collect.w3
        protected /* bridge */ /* synthetic */ Object delegate() {
            return super.delegate();
        }

        Object readResolve() {
            return inverse().inverse();
        }

        @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends y3<K> {
        private e() {
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public void clear() {
            a.this.clear();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return d6.j(a.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                a.this.removeFromBothMaps(obj);
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }

        /* synthetic */ e(a aVar, C0110a c0110a) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<K> delegate() {
            return a.this.delegate.keySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class f extends y3<V> {

        /* renamed from: a  reason: collision with root package name */
        final Set<V> f12900a;

        private f() {
            this.f12900a = a.this.inverse.keySet();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return d6.z(a.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.q3, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.w3
        public String toString() {
            return standardToString();
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        /* synthetic */ f(a aVar, C0110a c0110a) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<V> delegate() {
            return this.f12900a;
        }
    }

    /* synthetic */ a(Map map, a aVar, C0110a c0110a) {
        this(map, aVar);
    }

    private V putInBothMaps(K k10, V v10, boolean z10) {
        checkKey(k10);
        checkValue(v10);
        boolean containsKey = containsKey(k10);
        if (containsKey && com.google.common.base.l.a(v10, get(k10))) {
            return v10;
        }
        if (z10) {
            inverse().remove(v10);
        } else {
            com.google.common.base.o.m(!containsValue(v10), "value already present: %s", v10);
        }
        V put = this.delegate.put(k10, v10);
        updateInverseMap(k10, containsKey, put, v10);
        return put;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V removeFromBothMaps(Object obj) {
        V v10 = (V) w6.a(this.delegate.remove(obj));
        removeFromInverseMap(v10);
        return v10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFromInverseMap(V v10) {
        this.inverse.delegate.remove(v10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void updateInverseMap(K k10, boolean z10, V v10, V v11) {
        if (z10) {
            removeFromInverseMap(w6.a(v10));
        }
        this.inverse.delegate.put(v11, k10);
    }

    K checkKey(K k10) {
        return k10;
    }

    V checkValue(V v10) {
        return v10;
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public void clear() {
        this.delegate.clear();
        this.inverse.delegate.clear();
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public boolean containsValue(Object obj) {
        return this.inverse.containsKey(obj);
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set == null) {
            c cVar = new c(this, null);
            this.entrySet = cVar;
            return cVar;
        }
        return set;
    }

    Iterator<Map.Entry<K, V>> entrySetIterator() {
        return new C0110a(this.delegate.entrySet().iterator());
    }

    public V forcePut(K k10, V v10) {
        return putInBothMaps(k10, v10, true);
    }

    public e0<V, K> inverse() {
        return this.inverse;
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set == null) {
            e eVar = new e(this, null);
            this.keySet = eVar;
            return eVar;
        }
        return set;
    }

    a<V, K> makeInverse(Map<V, K> map) {
        return new d(map, this);
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public V put(K k10, V v10) {
        return putInBothMaps(k10, v10, false);
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public V remove(Object obj) {
        if (containsKey(obj)) {
            return removeFromBothMaps(obj);
        }
        return null;
    }

    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        this.delegate.replaceAll(biFunction);
        this.inverse.delegate.clear();
        Iterator<Map.Entry<K, V>> it = this.delegate.entrySet().iterator();
        Map.Entry<K, V> entry = null;
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            K key = next.getKey();
            if (this.inverse.delegate.putIfAbsent(next.getValue(), key) != null) {
                it.remove();
                entry = next;
            }
        }
        if (entry == null) {
            return;
        }
        String valueOf = String.valueOf(entry.getValue());
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 23);
        sb2.append("value already present: ");
        sb2.append(valueOf);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDelegates(Map<K, V> map, Map<V, K> map2) {
        com.google.common.base.o.z(this.delegate == null);
        com.google.common.base.o.z(this.inverse == null);
        com.google.common.base.o.d(map.isEmpty());
        com.google.common.base.o.d(map2.isEmpty());
        com.google.common.base.o.d(map != map2);
        this.delegate = map;
        this.inverse = makeInverse(map2);
    }

    void setInverse(a<V, K> aVar) {
        this.inverse = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Map<K, V> map, Map<V, K> map2) {
        setDelegates(map, map2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.t3, com.google.common.collect.w3
    public Map<K, V> delegate() {
        return this.delegate;
    }

    @Override // com.google.common.collect.t3, java.util.Map
    public Set<V> values() {
        Set<V> set = this.valueSet;
        if (set == null) {
            f fVar = new f(this, null);
            this.valueSet = fVar;
            return fVar;
        }
        return set;
    }

    private a(Map<K, V> map, a<V, K> aVar) {
        this.delegate = map;
        this.inverse = aVar;
    }
}
