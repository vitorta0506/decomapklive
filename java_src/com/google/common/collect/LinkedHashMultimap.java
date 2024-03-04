package com.google.common.collect;

import com.google.common.collect.w7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public final class LinkedHashMultimap<K, V> extends w5<K, V> {
    private static final int DEFAULT_KEY_CAPACITY = 16;
    private static final int DEFAULT_VALUE_SET_CAPACITY = 2;
    static final double VALUE_SET_LOAD_FACTOR = 1.0d;
    private static final long serialVersionUID = 1;
    private transient b<K, V> multimapHeaderEntry;
    transient int valueSetCapacity;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        b<K, V> f12773a;

        /* renamed from: b  reason: collision with root package name */
        b<K, V> f12774b;

        a() {
            this.f12773a = LinkedHashMultimap.this.multimapHeaderEntry.b();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                b<K, V> bVar = this.f12773a;
                this.f12774b = bVar;
                this.f12773a = bVar.b();
                return bVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12773a != LinkedHashMultimap.this.multimapHeaderEntry;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(this.f12774b != null, "no calls to next() since the last call to remove()");
            LinkedHashMultimap.this.remove(this.f12774b.getKey(), this.f12774b.getValue());
            this.f12774b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b<K, V> extends h4<K, V> implements d<K, V> {

        /* renamed from: c  reason: collision with root package name */
        final int f12776c;

        /* renamed from: d  reason: collision with root package name */
        b<K, V> f12777d;

        /* renamed from: e  reason: collision with root package name */
        d<K, V> f12778e;

        /* renamed from: f  reason: collision with root package name */
        d<K, V> f12779f;

        /* renamed from: g  reason: collision with root package name */
        b<K, V> f12780g;

        /* renamed from: h  reason: collision with root package name */
        b<K, V> f12781h;

        b(K k10, V v10, int i9, b<K, V> bVar) {
            super(k10, v10);
            this.f12776c = i9;
            this.f12777d = bVar;
        }

        static <K, V> b<K, V> h() {
            return new b<>(null, null, 0, null);
        }

        public b<K, V> a() {
            b<K, V> bVar = this.f12780g;
            Objects.requireNonNull(bVar);
            return bVar;
        }

        public b<K, V> b() {
            b<K, V> bVar = this.f12781h;
            Objects.requireNonNull(bVar);
            return bVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> c() {
            d<K, V> dVar = this.f12778e;
            Objects.requireNonNull(dVar);
            return dVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> d() {
            d<K, V> dVar = this.f12779f;
            Objects.requireNonNull(dVar);
            return dVar;
        }

        boolean e(Object obj, int i9) {
            return this.f12776c == i9 && com.google.common.base.l.a(getValue(), obj);
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void f(d<K, V> dVar) {
            this.f12779f = dVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void g(d<K, V> dVar) {
            this.f12778e = dVar;
        }

        public void i(b<K, V> bVar) {
            this.f12780g = bVar;
        }

        public void j(b<K, V> bVar) {
            this.f12781h = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class c extends w7.f<V> implements d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final K f12782a;

        /* renamed from: b  reason: collision with root package name */
        b<K, V>[] f12783b;

        /* renamed from: c  reason: collision with root package name */
        private int f12784c = 0;

        /* renamed from: d  reason: collision with root package name */
        private int f12785d = 0;

        /* renamed from: e  reason: collision with root package name */
        private d<K, V> f12786e = this;

        /* renamed from: f  reason: collision with root package name */
        private d<K, V> f12787f = this;

        /* loaded from: classes2.dex */
        class a implements Iterator<V> {

            /* renamed from: a  reason: collision with root package name */
            d<K, V> f12789a;

            /* renamed from: b  reason: collision with root package name */
            b<K, V> f12790b;

            /* renamed from: c  reason: collision with root package name */
            int f12791c;

            a() {
                this.f12789a = c.this.f12786e;
                this.f12791c = c.this.f12785d;
            }

            private void a() {
                if (c.this.f12785d != this.f12791c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.f12789a != c.this;
            }

            @Override // java.util.Iterator
            public V next() {
                if (hasNext()) {
                    b<K, V> bVar = (b) this.f12789a;
                    V value = bVar.getValue();
                    this.f12790b = bVar;
                    this.f12789a = bVar.d();
                    return value;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                a();
                com.google.common.base.o.A(this.f12790b != null, "no calls to next() since the last call to remove()");
                c.this.remove(this.f12790b.getValue());
                this.f12791c = c.this.f12785d;
                this.f12790b = null;
            }
        }

        c(K k10, int i9) {
            this.f12782a = k10;
            this.f12783b = new b[e4.a(i9, LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)];
        }

        private int u() {
            return this.f12783b.length - 1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void x() {
            if (e4.b(this.f12784c, this.f12783b.length, LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)) {
                int length = this.f12783b.length * 2;
                b<K, V>[] bVarArr = new b[length];
                this.f12783b = bVarArr;
                int i9 = length - 1;
                for (d dVar = (d<K, V>) this.f12786e; dVar != this; dVar = (d<K, V>) dVar.d()) {
                    b<K, V> bVar = (b) dVar;
                    int i10 = bVar.f12776c & i9;
                    bVar.f12777d = bVarArr[i10];
                    bVarArr[i10] = bVar;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(V v10) {
            int d10 = e4.d(v10);
            int u10 = u() & d10;
            b<K, V> bVar = this.f12783b[u10];
            for (b<K, V> bVar2 = bVar; bVar2 != null; bVar2 = bVar2.f12777d) {
                if (bVar2.e(v10, d10)) {
                    return false;
                }
            }
            b<K, V> bVar3 = new b<>(this.f12782a, v10, d10, bVar);
            LinkedHashMultimap.succeedsInValueSet(this.f12787f, bVar3);
            LinkedHashMultimap.succeedsInValueSet(bVar3, this);
            LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.a(), bVar3);
            LinkedHashMultimap.succeedsInMultimap(bVar3, LinkedHashMultimap.this.multimapHeaderEntry);
            this.f12783b[u10] = bVar3;
            this.f12784c++;
            this.f12785d++;
            x();
            return true;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> c() {
            return this.f12787f;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.f12783b, (Object) null);
            this.f12784c = 0;
            for (d<K, V> dVar = this.f12786e; dVar != this; dVar = dVar.d()) {
                LinkedHashMultimap.deleteFromMultimap((b) dVar);
            }
            LinkedHashMultimap.succeedsInValueSet(this, this);
            this.f12785d++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            int d10 = e4.d(obj);
            for (b<K, V> bVar = this.f12783b[u() & d10]; bVar != null; bVar = bVar.f12777d) {
                if (bVar.e(obj, d10)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public d<K, V> d() {
            return this.f12786e;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void f(d<K, V> dVar) {
            this.f12786e = dVar;
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super V> consumer) {
            com.google.common.base.o.s(consumer);
            for (d<K, V> dVar = this.f12786e; dVar != this; dVar = dVar.d()) {
                consumer.accept((V) ((b) dVar).getValue());
            }
        }

        @Override // com.google.common.collect.LinkedHashMultimap.d
        public void g(d<K, V> dVar) {
            this.f12787f = dVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int d10 = e4.d(obj);
            int u10 = u() & d10;
            b<K, V> bVar = null;
            for (b<K, V> bVar2 = this.f12783b[u10]; bVar2 != null; bVar2 = bVar2.f12777d) {
                if (bVar2.e(obj, d10)) {
                    if (bVar == null) {
                        this.f12783b[u10] = bVar2.f12777d;
                    } else {
                        bVar.f12777d = bVar2.f12777d;
                    }
                    LinkedHashMultimap.deleteFromValueSet(bVar2);
                    LinkedHashMultimap.deleteFromMultimap(bVar2);
                    this.f12784c--;
                    this.f12785d++;
                    return true;
                }
                bVar = bVar2;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f12784c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface d<K, V> {
        d<K, V> c();

        d<K, V> d();

        void f(d<K, V> dVar);

        void g(d<K, V> dVar);
    }

    private LinkedHashMultimap(int i9, int i10) {
        super(a7.e(i9));
        this.valueSetCapacity = 2;
        p2.b(i10, "expectedValuesPerKey");
        this.valueSetCapacity = i10;
        b<K, V> h10 = b.h();
        this.multimapHeaderEntry = h10;
        succeedsInMultimap(h10, h10);
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromMultimap(b<K, V> bVar) {
        succeedsInMultimap(bVar.a(), bVar.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromValueSet(d<K, V> dVar) {
        succeedsInValueSet(dVar.c(), dVar.d());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        b<K, V> h10 = b.h();
        this.multimapHeaderEntry = h10;
        succeedsInMultimap(h10, h10);
        this.valueSetCapacity = 2;
        int readInt = objectInputStream.readInt();
        Map e10 = a7.e(12);
        for (int i9 = 0; i9 < readInt; i9++) {
            Object readObject = objectInputStream.readObject();
            e10.put(readObject, createCollection(readObject));
        }
        int readInt2 = objectInputStream.readInt();
        for (int i10 = 0; i10 < readInt2; i10++) {
            Object readObject2 = objectInputStream.readObject();
            Object readObject3 = objectInputStream.readObject();
            Collection collection = (Collection) e10.get(readObject2);
            Objects.requireNonNull(collection);
            collection.add(readObject3);
        }
        setMap(e10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInMultimap(b<K, V> bVar, b<K, V> bVar2) {
        bVar.j(bVar2);
        bVar2.i(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInValueSet(d<K, V> dVar, d<K, V> dVar2) {
        dVar.f(dVar2);
        dVar2.g(dVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        for (K k10 : keySet()) {
            objectOutputStream.writeObject(k10);
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.t, com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public void clear() {
        super.clear();
        b<K, V> bVar = this.multimapHeaderEntry;
        succeedsInMultimap(bVar, bVar);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new a();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o
    Spliterator<Map.Entry<K, V>> entrySpliterator() {
        return Spliterators.spliterator(entries(), 17);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j
    public /* bridge */ /* synthetic */ void forEach(BiConsumer biConsumer) {
        super.forEach(biConsumer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return super.get((LinkedHashMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public Set<K> keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ q6 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean putAll(i6 i6Var) {
        return super.putAll(i6Var);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set removeAll(Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((LinkedHashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o
    Iterator<V> valueIterator() {
        return d6.z(entryIterator());
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o
    Spliterator<V> valueSpliterator() {
        return s2.e(entrySpliterator(), r4.f13377a);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public Collection<V> values() {
        return super.values();
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i9, int i10) {
        return new LinkedHashMultimap<>(d6.b(i9), d6.b(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t, com.google.common.collect.j
    public Set<V> createCollection() {
        return a7.f(this.valueSetCapacity);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o
    public Set<V> replaceValues(K k10, Iterable<? extends V> iterable) {
        return super.replaceValues((LinkedHashMultimap<K, V>) k10, (Iterable) iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j
    public Collection<V> createCollection(K k10) {
        return new c(k10, this.valueSetCapacity);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(i6<? extends K, ? extends V> i6Var) {
        LinkedHashMultimap<K, V> create = create(i6Var.keySet().size(), 2);
        create.putAll(i6Var);
        return create;
    }
}
