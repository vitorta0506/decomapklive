package com.google.common.collect;

import com.google.common.collect.l6;
import com.google.common.collect.w7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public class LinkedListMultimap<K, V> extends o<K, V> implements x5<K, V>, Serializable {
    private static final long serialVersionUID = 0;
    private transient g<K, V> head;
    private transient Map<K, f<K, V>> keyToKeyList;
    private transient int modCount;
    private transient int size;
    private transient g<K, V> tail;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends AbstractSequentialList<V> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f12793a;

        a(Object obj) {
            this.f12793a = obj;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i9) {
            return new i(this.f12793a, i9);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(this.f12793a);
            if (fVar == null) {
                return 0;
            }
            return fVar.f12806c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends AbstractSequentialList<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super Map.Entry<K, V>> consumer) {
            com.google.common.base.o.s(consumer);
            for (g<K, V> gVar = LinkedListMultimap.this.head; gVar != null; gVar = gVar.f12809c) {
                consumer.accept(gVar);
            }
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<Map.Entry<K, V>> listIterator(int i9) {
            return new h(i9);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    /* loaded from: classes2.dex */
    class c extends w7.f<K> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new e(LinkedListMultimap.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return !LinkedListMultimap.this.removeAll(obj).isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedListMultimap.this.keyToKeyList.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends AbstractSequentialList<V> {

        /* loaded from: classes2.dex */
        class a extends c9<Map.Entry<K, V>, V> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h f12798b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(d dVar, ListIterator listIterator, h hVar) {
                super(listIterator);
                this.f12798b = hVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.b9
            /* renamed from: c */
            public V a(Map.Entry<K, V> entry) {
                return entry.getValue();
            }

            @Override // com.google.common.collect.c9, java.util.ListIterator
            public void set(V v10) {
                this.f12798b.f(v10);
            }
        }

        d() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i9) {
            h hVar = new h(i9);
            return new a(this, hVar, hVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class f<K, V> {

        /* renamed from: a  reason: collision with root package name */
        g<K, V> f12804a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f12805b;

        /* renamed from: c  reason: collision with root package name */
        int f12806c;

        f(g<K, V> gVar) {
            this.f12804a = gVar;
            this.f12805b = gVar;
            gVar.f12812f = null;
            gVar.f12811e = null;
            this.f12806c = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<K, V> extends n<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final K f12807a;

        /* renamed from: b  reason: collision with root package name */
        V f12808b;

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f12809c;

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f12810d;

        /* renamed from: e  reason: collision with root package name */
        g<K, V> f12811e;

        /* renamed from: f  reason: collision with root package name */
        g<K, V> f12812f;

        g(K k10, V v10) {
            this.f12807a = k10;
            this.f12808b = v10;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public K getKey() {
            return this.f12807a;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public V getValue() {
            return this.f12808b;
        }

        @Override // com.google.common.collect.n, java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = this.f12808b;
            this.f12808b = v10;
            return v11;
        }
    }

    /* loaded from: classes2.dex */
    private class h implements ListIterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        int f12813a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f12814b;

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f12815c;

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f12816d;

        /* renamed from: e  reason: collision with root package name */
        int f12817e;

        h(int i9) {
            this.f12817e = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            com.google.common.base.o.w(i9, size);
            if (i9 >= size / 2) {
                this.f12816d = LinkedListMultimap.this.tail;
                this.f12813a = size;
                while (true) {
                    int i10 = i9 + 1;
                    if (i9 >= size) {
                        break;
                    }
                    previous();
                    i9 = i10;
                }
            } else {
                this.f12814b = LinkedListMultimap.this.head;
                while (true) {
                    int i11 = i9 - 1;
                    if (i9 <= 0) {
                        break;
                    }
                    next();
                    i9 = i11;
                }
            }
            this.f12815c = null;
        }

        private void b() {
            if (LinkedListMultimap.this.modCount != this.f12817e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        /* renamed from: a */
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* renamed from: c */
        public g<K, V> next() {
            b();
            g<K, V> gVar = this.f12814b;
            if (gVar != null) {
                this.f12815c = gVar;
                this.f12816d = gVar;
                this.f12814b = gVar.f12809c;
                this.f12813a++;
                return gVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        /* renamed from: d */
        public g<K, V> previous() {
            b();
            g<K, V> gVar = this.f12816d;
            if (gVar != null) {
                this.f12815c = gVar;
                this.f12814b = gVar;
                this.f12816d = gVar.f12810d;
                this.f12813a--;
                return gVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        /* renamed from: e */
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        void f(V v10) {
            com.google.common.base.o.z(this.f12815c != null);
            this.f12815c.f12808b = v10;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            b();
            return this.f12814b != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            b();
            return this.f12816d != null;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f12813a;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f12813a - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            b();
            com.google.common.base.o.A(this.f12815c != null, "no calls to next() since the last call to remove()");
            g<K, V> gVar = this.f12815c;
            if (gVar != this.f12814b) {
                this.f12816d = gVar.f12810d;
                this.f12813a--;
            } else {
                this.f12814b = gVar.f12809c;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.f12815c = null;
            this.f12817e = LinkedListMultimap.this.modCount;
        }
    }

    LinkedListMultimap() {
        this(12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g<K, V> addNode(K k10, V v10, g<K, V> gVar) {
        g<K, V> gVar2 = new g<>(k10, v10);
        if (this.head == null) {
            this.tail = gVar2;
            this.head = gVar2;
            this.keyToKeyList.put(k10, new f<>(gVar2));
            this.modCount++;
        } else if (gVar == null) {
            g<K, V> gVar3 = this.tail;
            Objects.requireNonNull(gVar3);
            gVar3.f12809c = gVar2;
            gVar2.f12810d = this.tail;
            this.tail = gVar2;
            f<K, V> fVar = this.keyToKeyList.get(k10);
            if (fVar == null) {
                this.keyToKeyList.put(k10, new f<>(gVar2));
                this.modCount++;
            } else {
                fVar.f12806c++;
                g<K, V> gVar4 = fVar.f12805b;
                gVar4.f12811e = gVar2;
                gVar2.f12812f = gVar4;
                fVar.f12805b = gVar2;
            }
        } else {
            f<K, V> fVar2 = this.keyToKeyList.get(k10);
            Objects.requireNonNull(fVar2);
            fVar2.f12806c++;
            gVar2.f12810d = gVar.f12810d;
            gVar2.f12812f = gVar.f12812f;
            gVar2.f12809c = gVar;
            gVar2.f12811e = gVar;
            g<K, V> gVar5 = gVar.f12812f;
            if (gVar5 == null) {
                fVar2.f12804a = gVar2;
            } else {
                gVar5.f12811e = gVar2;
            }
            g<K, V> gVar6 = gVar.f12810d;
            if (gVar6 == null) {
                this.head = gVar2;
            } else {
                gVar6.f12809c = gVar2;
            }
            gVar.f12810d = gVar2;
            gVar.f12812f = gVar2;
        }
        this.size++;
        return gVar2;
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    private List<V> getCopy(K k10) {
        return Collections.unmodifiableList(z5.i(new i(k10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.keyToKeyList = d6.p();
        int readInt = objectInputStream.readInt();
        for (int i9 = 0; i9 < readInt; i9++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllNodes(K k10) {
        p5.e(new i(k10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNode(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f12810d;
        if (gVar2 != null) {
            gVar2.f12809c = gVar.f12809c;
        } else {
            this.head = gVar.f12809c;
        }
        g<K, V> gVar3 = gVar.f12809c;
        if (gVar3 != null) {
            gVar3.f12810d = gVar2;
        } else {
            this.tail = gVar2;
        }
        if (gVar.f12812f == null && gVar.f12811e == null) {
            f<K, V> remove = this.keyToKeyList.remove(gVar.f12807a);
            Objects.requireNonNull(remove);
            remove.f12806c = 0;
            this.modCount++;
        } else {
            f<K, V> fVar = this.keyToKeyList.get(gVar.f12807a);
            Objects.requireNonNull(fVar);
            fVar.f12806c--;
            g<K, V> gVar4 = gVar.f12812f;
            if (gVar4 == null) {
                g<K, V> gVar5 = gVar.f12811e;
                Objects.requireNonNull(gVar5);
                fVar.f12804a = gVar5;
            } else {
                gVar4.f12811e = gVar.f12811e;
            }
            g<K, V> gVar6 = gVar.f12811e;
            if (gVar6 == null) {
                g<K, V> gVar7 = gVar.f12812f;
                Objects.requireNonNull(gVar7);
                fVar.f12805b = gVar7;
            } else {
                gVar6.f12812f = gVar.f12812f;
            }
        }
        this.size--;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.i6
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyToKeyList.clear();
        this.size = 0;
        this.modCount++;
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.i6
    public boolean containsKey(Object obj) {
        return this.keyToKeyList.containsKey(obj);
    }

    @Override // com.google.common.collect.o
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.o
    Map<K, Collection<V>> createAsMap() {
        return new l6.a(this);
    }

    @Override // com.google.common.collect.o
    Set<K> createKeySet() {
        return new c();
    }

    @Override // com.google.common.collect.o
    q6<K> createKeys() {
        return new l6.e(this);
    }

    @Override // com.google.common.collect.o
    Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    public /* bridge */ /* synthetic */ void forEach(BiConsumer biConsumer) {
        h6.a(this, biConsumer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((LinkedListMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ q6 keys() {
        return super.keys();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public boolean put(K k10, V v10) {
        addNode(k10, v10, null);
        return true;
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean putAll(i6 i6Var) {
        return super.putAll(i6Var);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((LinkedListMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.i6
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    private LinkedListMultimap(int i9) {
        this.keyToKeyList = a7.c(i9);
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i9) {
        return new LinkedListMultimap<>(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o
    public List<Map.Entry<K, V>> createEntries() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o
    public List<V> createValues() {
        return new d();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override // com.google.common.collect.i6
    public List<V> get(K k10) {
        return new a(k10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.i6
    public List<V> removeAll(Object obj) {
        List<V> copy = getCopy(obj);
        removeAllNodes(obj);
        return copy;
    }

    @Override // com.google.common.collect.o
    public List<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        List<V> copy = getCopy(k10);
        i iVar = new i(k10);
        Iterator<? extends V> it = iterable.iterator();
        while (iVar.hasNext() && it.hasNext()) {
            iVar.next();
            iVar.set(it.next());
        }
        while (iVar.hasNext()) {
            iVar.next();
            iVar.remove();
        }
        while (it.hasNext()) {
            iVar.add(it.next());
        }
        return copy;
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public List<V> values() {
        return (List) super.values();
    }

    public static <K, V> LinkedListMultimap<K, V> create(i6<? extends K, ? extends V> i6Var) {
        return new LinkedListMultimap<>(i6Var);
    }

    /* loaded from: classes2.dex */
    private class e implements Iterator<K> {

        /* renamed from: a  reason: collision with root package name */
        final Set<K> f12799a;

        /* renamed from: b  reason: collision with root package name */
        g<K, V> f12800b;

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f12801c;

        /* renamed from: d  reason: collision with root package name */
        int f12802d;

        private e() {
            this.f12799a = w7.k(LinkedListMultimap.this.keySet().size());
            this.f12800b = LinkedListMultimap.this.head;
            this.f12802d = LinkedListMultimap.this.modCount;
        }

        private void a() {
            if (LinkedListMultimap.this.modCount != this.f12802d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f12800b != null;
        }

        @Override // java.util.Iterator
        public K next() {
            g<K, V> gVar;
            a();
            g<K, V> gVar2 = this.f12800b;
            if (gVar2 != null) {
                this.f12801c = gVar2;
                this.f12799a.add(gVar2.f12807a);
                do {
                    gVar = this.f12800b.f12809c;
                    this.f12800b = gVar;
                    if (gVar == null) {
                        break;
                    }
                } while (!this.f12799a.add(gVar.f12807a));
                return this.f12801c.f12807a;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            com.google.common.base.o.A(this.f12801c != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.removeAllNodes(this.f12801c.f12807a);
            this.f12801c = null;
            this.f12802d = LinkedListMultimap.this.modCount;
        }

        /* synthetic */ e(LinkedListMultimap linkedListMultimap, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class i implements ListIterator<V> {

        /* renamed from: a  reason: collision with root package name */
        final K f12819a;

        /* renamed from: b  reason: collision with root package name */
        int f12820b;

        /* renamed from: c  reason: collision with root package name */
        g<K, V> f12821c;

        /* renamed from: d  reason: collision with root package name */
        g<K, V> f12822d;

        /* renamed from: e  reason: collision with root package name */
        g<K, V> f12823e;

        i(K k10) {
            this.f12819a = k10;
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(k10);
            this.f12821c = fVar == null ? null : fVar.f12804a;
        }

        @Override // java.util.ListIterator
        public void add(V v10) {
            this.f12823e = LinkedListMultimap.this.addNode(this.f12819a, v10, this.f12821c);
            this.f12820b++;
            this.f12822d = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f12821c != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f12823e != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public V next() {
            g<K, V> gVar = this.f12821c;
            if (gVar != null) {
                this.f12822d = gVar;
                this.f12823e = gVar;
                this.f12821c = gVar.f12811e;
                this.f12820b++;
                return gVar.f12808b;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f12820b;
        }

        @Override // java.util.ListIterator
        public V previous() {
            g<K, V> gVar = this.f12823e;
            if (gVar != null) {
                this.f12822d = gVar;
                this.f12821c = gVar;
                this.f12823e = gVar.f12812f;
                this.f12820b--;
                return gVar.f12808b;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f12820b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(this.f12822d != null, "no calls to next() since the last call to remove()");
            g<K, V> gVar = this.f12822d;
            if (gVar != this.f12821c) {
                this.f12823e = gVar.f12812f;
                this.f12820b--;
            } else {
                this.f12821c = gVar.f12811e;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.f12822d = null;
        }

        @Override // java.util.ListIterator
        public void set(V v10) {
            com.google.common.base.o.z(this.f12822d != null);
            this.f12822d.f12808b = v10;
        }

        public i(K k10, int i9) {
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(k10);
            int i10 = fVar == null ? 0 : fVar.f12806c;
            com.google.common.base.o.w(i9, i10);
            if (i9 >= i10 / 2) {
                this.f12823e = fVar == null ? null : fVar.f12805b;
                this.f12820b = i10;
                while (true) {
                    int i11 = i9 + 1;
                    if (i9 >= i10) {
                        break;
                    }
                    previous();
                    i9 = i11;
                }
            } else {
                this.f12821c = fVar == null ? null : fVar.f12804a;
                while (true) {
                    int i12 = i9 - 1;
                    if (i9 <= 0) {
                        break;
                    }
                    next();
                    i9 = i12;
                }
            }
            this.f12819a = k10;
            this.f12822d = null;
        }
    }

    private LinkedListMultimap(i6<? extends K, ? extends V> i6Var) {
        this(i6Var.keySet().size());
        putAll(i6Var);
    }
}
