package com.google.common.collect;

import com.google.common.collect.d6;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
/* loaded from: classes2.dex */
public final class HashBiMap<K, V> extends d6.i<K, V> implements e0<K, V>, Serializable {
    private static final double LOAD_FACTOR = 1.0d;
    private static final long serialVersionUID = 0;
    private transient b<K, V> firstInKeyInsertionOrder;
    private transient b<K, V>[] hashTableKToV;
    private transient b<K, V>[] hashTableVToK;
    private transient e0<V, K> inverse;
    private transient b<K, V> lastInKeyInsertionOrder;
    private transient int mask;
    private transient int modCount;
    private transient int size;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends HashBiMap<K, V>.e<Map.Entry<K, V>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.HashBiMap$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0106a extends n<K, V> {

            /* renamed from: a  reason: collision with root package name */
            b<K, V> f12640a;

            C0106a(b<K, V> bVar) {
                this.f12640a = bVar;
            }

            @Override // com.google.common.collect.n, java.util.Map.Entry
            public K getKey() {
                return this.f12640a.f13111a;
            }

            @Override // com.google.common.collect.n, java.util.Map.Entry
            public V getValue() {
                return this.f12640a.f13112b;
            }

            @Override // com.google.common.collect.n, java.util.Map.Entry
            public V setValue(V v10) {
                V v11 = this.f12640a.f13112b;
                int d10 = e4.d(v10);
                if (d10 == this.f12640a.f12643d && com.google.common.base.l.a(v10, v11)) {
                    return v10;
                }
                com.google.common.base.o.m(HashBiMap.this.seekByValue(v10, d10) == null, "value already present: %s", v10);
                HashBiMap.this.delete(this.f12640a);
                b<K, V> bVar = this.f12640a;
                b<K, V> bVar2 = new b<>(bVar.f13111a, bVar.f12642c, v10, d10);
                HashBiMap.this.insert(bVar2, this.f12640a);
                b<K, V> bVar3 = this.f12640a;
                bVar3.f12647h = null;
                bVar3.f12646g = null;
                a aVar = a.this;
                aVar.f12656c = HashBiMap.this.modCount;
                a aVar2 = a.this;
                if (aVar2.f12655b == this.f12640a) {
                    aVar2.f12655b = bVar2;
                }
                this.f12640a = bVar2;
                return v11;
            }
        }

        a() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.HashBiMap.e
        /* renamed from: b */
        public Map.Entry<K, V> a(b<K, V> bVar) {
            return new C0106a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b<K, V> extends h4<K, V> {

        /* renamed from: c  reason: collision with root package name */
        final int f12642c;

        /* renamed from: d  reason: collision with root package name */
        final int f12643d;

        /* renamed from: e  reason: collision with root package name */
        b<K, V> f12644e;

        /* renamed from: f  reason: collision with root package name */
        b<K, V> f12645f;

        /* renamed from: g  reason: collision with root package name */
        b<K, V> f12646g;

        /* renamed from: h  reason: collision with root package name */
        b<K, V> f12647h;

        b(K k10, int i9, V v10, int i10) {
            super(k10, v10);
            this.f12642c = i9;
            this.f12643d = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class c extends d6.i<V, K> implements e0<V, K>, Serializable {

        /* loaded from: classes2.dex */
        class a extends HashBiMap<K, V>.e<Map.Entry<V, K>> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.google.common.collect.HashBiMap$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public class C0107a extends n<V, K> {

                /* renamed from: a  reason: collision with root package name */
                b<K, V> f12650a;

                C0107a(b<K, V> bVar) {
                    this.f12650a = bVar;
                }

                @Override // com.google.common.collect.n, java.util.Map.Entry
                public V getKey() {
                    return this.f12650a.f13112b;
                }

                @Override // com.google.common.collect.n, java.util.Map.Entry
                public K getValue() {
                    return this.f12650a.f13111a;
                }

                @Override // com.google.common.collect.n, java.util.Map.Entry
                public K setValue(K k10) {
                    K k11 = this.f12650a.f13111a;
                    int d10 = e4.d(k10);
                    if (d10 == this.f12650a.f12642c && com.google.common.base.l.a(k10, k11)) {
                        return k10;
                    }
                    com.google.common.base.o.m(HashBiMap.this.seekByKey(k10, d10) == null, "value already present: %s", k10);
                    HashBiMap.this.delete(this.f12650a);
                    b<K, V> bVar = this.f12650a;
                    b<K, V> bVar2 = new b<>(k10, d10, bVar.f13112b, bVar.f12643d);
                    this.f12650a = bVar2;
                    HashBiMap.this.insert(bVar2, null);
                    a aVar = a.this;
                    aVar.f12656c = HashBiMap.this.modCount;
                    return k11;
                }
            }

            a() {
                super();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.HashBiMap.e
            /* renamed from: b */
            public Map.Entry<V, K> a(b<K, V> bVar) {
                return new C0107a(bVar);
            }
        }

        /* loaded from: classes2.dex */
        private final class b extends d6.j<V, K> {

            /* loaded from: classes2.dex */
            class a extends HashBiMap<K, V>.e<V> {
                a(b bVar) {
                    super();
                }

                @Override // com.google.common.collect.HashBiMap.e
                V a(b<K, V> bVar) {
                    return bVar.f13112b;
                }
            }

            b() {
                super(c.this);
            }

            @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new a(this);
            }

            @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                b seekByValue = HashBiMap.this.seekByValue(obj, e4.d(obj));
                if (seekByValue == null) {
                    return false;
                }
                HashBiMap.this.delete(seekByValue);
                return true;
            }
        }

        private c() {
        }

        e0<K, V> b() {
            return HashBiMap.this;
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public void clear() {
            b().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return b().containsValue(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.i
        public Iterator<Map.Entry<V, K>> entryIterator() {
            return new a();
        }

        @Override // java.util.Map
        public void forEach(final BiConsumer<? super V, ? super K> biConsumer) {
            com.google.common.base.o.s(biConsumer);
            HashBiMap.this.forEach(new BiConsumer() { // from class: com.google.common.collect.c4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    biConsumer.accept(obj2, obj);
                }
            });
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K get(Object obj) {
            return (K) d6.k(HashBiMap.this.seekByValue(obj, e4.d(obj)));
        }

        @Override // com.google.common.collect.e0
        public e0<K, V> inverse() {
            return b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return new b();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K put(V v10, K k10) {
            return (K) HashBiMap.this.putInverse(v10, k10, false);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K remove(Object obj) {
            b seekByValue = HashBiMap.this.seekByValue(obj, e4.d(obj));
            if (seekByValue == null) {
                return null;
            }
            HashBiMap.this.delete(seekByValue);
            seekByValue.f12647h = null;
            seekByValue.f12646g = null;
            return seekByValue.f13111a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map
        public void replaceAll(BiFunction<? super V, ? super K, ? extends K> biFunction) {
            com.google.common.base.o.s(biFunction);
            clear();
            for (b<K, V> bVar = HashBiMap.this.firstInKeyInsertionOrder; bVar != null; bVar = bVar.f12646g) {
                Object obj = (V) bVar.f13112b;
                put(obj, biFunction.apply(obj, (K) bVar.f13111a));
            }
        }

        @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
        public int size() {
            return HashBiMap.this.size;
        }

        Object writeReplace() {
            return new d(HashBiMap.this);
        }

        /* synthetic */ c(HashBiMap hashBiMap, a aVar) {
            this();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> values() {
            return b().keySet();
        }
    }

    /* loaded from: classes2.dex */
    private static final class d<K, V> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final HashBiMap<K, V> f12653a;

        d(HashBiMap<K, V> hashBiMap) {
            this.f12653a = hashBiMap;
        }

        Object readResolve() {
            return this.f12653a.inverse();
        }
    }

    /* loaded from: classes2.dex */
    abstract class e<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        b<K, V> f12654a;

        /* renamed from: b  reason: collision with root package name */
        b<K, V> f12655b = null;

        /* renamed from: c  reason: collision with root package name */
        int f12656c;

        /* renamed from: d  reason: collision with root package name */
        int f12657d;

        e() {
            this.f12654a = HashBiMap.this.firstInKeyInsertionOrder;
            this.f12656c = HashBiMap.this.modCount;
            this.f12657d = HashBiMap.this.size();
        }

        abstract T a(b<K, V> bVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (HashBiMap.this.modCount == this.f12656c) {
                return this.f12654a != null && this.f12657d > 0;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                b<K, V> bVar = this.f12654a;
                Objects.requireNonNull(bVar);
                this.f12654a = bVar.f12646g;
                this.f12655b = bVar;
                this.f12657d--;
                return a(bVar);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (HashBiMap.this.modCount == this.f12656c) {
                b<K, V> bVar = this.f12655b;
                if (bVar != null) {
                    HashBiMap.this.delete(bVar);
                    this.f12656c = HashBiMap.this.modCount;
                    this.f12655b = null;
                    return;
                }
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            throw new ConcurrentModificationException();
        }
    }

    /* loaded from: classes2.dex */
    private final class f extends d6.j<K, V> {

        /* loaded from: classes2.dex */
        class a extends HashBiMap<K, V>.e<K> {
            a(f fVar) {
                super();
            }

            @Override // com.google.common.collect.HashBiMap.e
            K a(b<K, V> bVar) {
                return bVar.f13111a;
            }
        }

        f() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this);
        }

        @Override // com.google.common.collect.d6.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            b seekByKey = HashBiMap.this.seekByKey(obj, e4.d(obj));
            if (seekByKey == null) {
                return false;
            }
            HashBiMap.this.delete(seekByKey);
            seekByKey.f12647h = null;
            seekByKey.f12646g = null;
            return true;
        }
    }

    private HashBiMap(int i9) {
        init(i9);
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    private b<K, V>[] createTable(int i9) {
        return new b[i9];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delete(b<K, V> bVar) {
        b<K, V> bVar2;
        int i9 = bVar.f12642c & this.mask;
        b<K, V> bVar3 = null;
        b<K, V> bVar4 = null;
        for (b<K, V> bVar5 = this.hashTableKToV[i9]; bVar5 != bVar; bVar5 = bVar5.f12644e) {
            bVar4 = bVar5;
        }
        if (bVar4 == null) {
            this.hashTableKToV[i9] = bVar.f12644e;
        } else {
            bVar4.f12644e = bVar.f12644e;
        }
        int i10 = bVar.f12643d & this.mask;
        b<K, V> bVar6 = this.hashTableVToK[i10];
        while (true) {
            bVar2 = bVar3;
            bVar3 = bVar6;
            if (bVar3 == bVar) {
                break;
            }
            bVar6 = bVar3.f12645f;
        }
        if (bVar2 == null) {
            this.hashTableVToK[i10] = bVar.f12645f;
        } else {
            bVar2.f12645f = bVar.f12645f;
        }
        b<K, V> bVar7 = bVar.f12647h;
        if (bVar7 == null) {
            this.firstInKeyInsertionOrder = bVar.f12646g;
        } else {
            bVar7.f12646g = bVar.f12646g;
        }
        b<K, V> bVar8 = bVar.f12646g;
        if (bVar8 == null) {
            this.lastInKeyInsertionOrder = bVar7;
        } else {
            bVar8.f12647h = bVar7;
        }
        this.size--;
        this.modCount++;
    }

    private void init(int i9) {
        p2.b(i9, "expectedSize");
        int a10 = e4.a(i9, LOAD_FACTOR);
        this.hashTableKToV = createTable(a10);
        this.hashTableVToK = createTable(a10);
        this.firstInKeyInsertionOrder = null;
        this.lastInKeyInsertionOrder = null;
        this.size = 0;
        this.mask = a10 - 1;
        this.modCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insert(b<K, V> bVar, b<K, V> bVar2) {
        int i9 = bVar.f12642c;
        int i10 = this.mask;
        int i11 = i9 & i10;
        b<K, V>[] bVarArr = this.hashTableKToV;
        bVar.f12644e = bVarArr[i11];
        bVarArr[i11] = bVar;
        int i12 = bVar.f12643d & i10;
        b<K, V>[] bVarArr2 = this.hashTableVToK;
        bVar.f12645f = bVarArr2[i12];
        bVarArr2[i12] = bVar;
        if (bVar2 == null) {
            b<K, V> bVar3 = this.lastInKeyInsertionOrder;
            bVar.f12647h = bVar3;
            bVar.f12646g = null;
            if (bVar3 == null) {
                this.firstInKeyInsertionOrder = bVar;
            } else {
                bVar3.f12646g = bVar;
            }
            this.lastInKeyInsertionOrder = bVar;
        } else {
            b<K, V> bVar4 = bVar2.f12647h;
            bVar.f12647h = bVar4;
            if (bVar4 == null) {
                this.firstInKeyInsertionOrder = bVar;
            } else {
                bVar4.f12646g = bVar;
            }
            b<K, V> bVar5 = bVar2.f12646g;
            bVar.f12646g = bVar5;
            if (bVar5 == null) {
                this.lastInKeyInsertionOrder = bVar;
            } else {
                bVar5.f12647h = bVar;
            }
        }
        this.size++;
        this.modCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K putInverse(V v10, K k10, boolean z10) {
        int d10 = e4.d(v10);
        int d11 = e4.d(k10);
        b<K, V> seekByValue = seekByValue(v10, d10);
        b<K, V> seekByKey = seekByKey(k10, d11);
        if (seekByValue != null && d11 == seekByValue.f12642c && com.google.common.base.l.a(k10, seekByValue.f13111a)) {
            return k10;
        }
        if (seekByKey != null && !z10) {
            String valueOf = String.valueOf(k10);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 21);
            sb2.append("key already present: ");
            sb2.append(valueOf);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (seekByValue != null) {
            delete(seekByValue);
        }
        if (seekByKey != null) {
            delete(seekByKey);
        }
        insert(new b<>(k10, d11, v10, d10), seekByKey);
        if (seekByKey != null) {
            seekByKey.f12647h = null;
            seekByKey.f12646g = null;
        }
        if (seekByValue != null) {
            seekByValue.f12647h = null;
            seekByValue.f12646g = null;
        }
        rehashIfNecessary();
        return (K) d6.k(seekByValue);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int h10 = t7.h(objectInputStream);
        init(16);
        t7.c(this, objectInputStream, h10);
    }

    private void rehashIfNecessary() {
        b<K, V>[] bVarArr = this.hashTableKToV;
        if (e4.b(this.size, bVarArr.length, LOAD_FACTOR)) {
            int length = bVarArr.length * 2;
            this.hashTableKToV = createTable(length);
            this.hashTableVToK = createTable(length);
            this.mask = length - 1;
            this.size = 0;
            for (b<K, V> bVar = this.firstInKeyInsertionOrder; bVar != null; bVar = bVar.f12646g) {
                insert(bVar, bVar);
            }
            this.modCount++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b<K, V> seekByKey(Object obj, int i9) {
        for (b<K, V> bVar = this.hashTableKToV[this.mask & i9]; bVar != null; bVar = bVar.f12644e) {
            if (i9 == bVar.f12642c && com.google.common.base.l.a(obj, bVar.f13111a)) {
                return bVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b<K, V> seekByValue(Object obj, int i9) {
        for (b<K, V> bVar = this.hashTableVToK[this.mask & i9]; bVar != null; bVar = bVar.f12645f) {
            if (i9 == bVar.f12643d && com.google.common.base.l.a(obj, bVar.f13112b)) {
                return bVar;
            }
        }
        return null;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        t7.i(this, objectOutputStream);
    }

    @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
    public void clear() {
        this.size = 0;
        Arrays.fill(this.hashTableKToV, (Object) null);
        Arrays.fill(this.hashTableVToK, (Object) null);
        this.firstInKeyInsertionOrder = null;
        this.lastInKeyInsertionOrder = null;
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return seekByKey(obj, e4.d(obj)) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        return seekByValue(obj, e4.d(obj)) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d6.i
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new a();
    }

    @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        com.google.common.base.o.s(biConsumer);
        for (b<K, V> bVar = this.firstInKeyInsertionOrder; bVar != null; bVar = bVar.f12646g) {
            biConsumer.accept((K) bVar.f13111a, (V) bVar.f13112b);
        }
    }

    public V forcePut(K k10, V v10) {
        return put(k10, v10, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        return (V) d6.A(seekByKey(obj, e4.d(obj)));
    }

    @Override // com.google.common.collect.e0
    public e0<V, K> inverse() {
        e0<V, K> e0Var = this.inverse;
        if (e0Var == null) {
            c cVar = new c(this, null);
            this.inverse = cVar;
            return cVar;
        }
        return e0Var;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        return new f();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        return put(k10, v10, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        b<K, V> seekByKey = seekByKey(obj, e4.d(obj));
        if (seekByKey == null) {
            return null;
        }
        delete(seekByKey);
        seekByKey.f12647h = null;
        seekByKey.f12646g = null;
        return seekByKey.f13112b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        com.google.common.base.o.s(biFunction);
        clear();
        for (b<K, V> bVar = this.firstInKeyInsertionOrder; bVar != null; bVar = bVar.f12646g) {
            K k10 = bVar.f13111a;
            put(k10, biFunction.apply(k10, (V) bVar.f13112b));
        }
    }

    @Override // com.google.common.collect.d6.i, java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public static <K, V> HashBiMap<K, V> create(int i9) {
        return new HashBiMap<>(i9);
    }

    private V put(K k10, V v10, boolean z10) {
        int d10 = e4.d(k10);
        int d11 = e4.d(v10);
        b<K, V> seekByKey = seekByKey(k10, d10);
        if (seekByKey != null && d11 == seekByKey.f12643d && com.google.common.base.l.a(v10, seekByKey.f13112b)) {
            return v10;
        }
        b<K, V> seekByValue = seekByValue(v10, d11);
        if (seekByValue != null) {
            if (z10) {
                delete(seekByValue);
            } else {
                String valueOf = String.valueOf(v10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 23);
                sb2.append("value already present: ");
                sb2.append(valueOf);
                throw new IllegalArgumentException(sb2.toString());
            }
        }
        b<K, V> bVar = new b<>(k10, d10, v10, d11);
        if (seekByKey != null) {
            delete(seekByKey);
            insert(bVar, seekByKey);
            seekByKey.f12647h = null;
            seekByKey.f12646g = null;
            return seekByKey.f13112b;
        }
        insert(bVar, null);
        rehashIfNecessary();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<V> values() {
        return inverse().keySet();
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> create = create(map.size());
        create.putAll(map);
        return create;
    }
}
