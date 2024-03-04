package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.t7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
/* loaded from: classes2.dex */
public final class ConcurrentHashMultiset<E> extends p<E> implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient ConcurrentMap<E, AtomicInteger> countMap;

    /* loaded from: classes2.dex */
    class b extends com.google.common.collect.c<q6.a<E>> {

        /* renamed from: c  reason: collision with root package name */
        private final Iterator<Map.Entry<E, AtomicInteger>> f12624c;

        b() {
            this.f12624c = ConcurrentHashMultiset.this.countMap.entrySet().iterator();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c
        /* renamed from: d */
        public q6.a<E> a() {
            while (this.f12624c.hasNext()) {
                Map.Entry<E, AtomicInteger> next = this.f12624c.next();
                int i9 = next.getValue().get();
                if (i9 != 0) {
                    return t6.g(next.getKey(), i9);
                }
            }
            return b();
        }
    }

    /* loaded from: classes2.dex */
    class c extends s3<q6.a<E>> {

        /* renamed from: a  reason: collision with root package name */
        private q6.a<E> f12626a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Iterator f12627b;

        c(Iterator it) {
            this.f12627b = it;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.o.A(this.f12626a != null, "no calls to next() since the last call to remove()");
            ConcurrentHashMultiset.this.setCount(this.f12626a.a(), 0);
            this.f12626a = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.w3
        /* renamed from: w0 */
        public Iterator<q6.a<E>> delegate() {
            return this.f12627b;
        }

        @Override // com.google.common.collect.s3, java.util.Iterator
        /* renamed from: y0 */
        public q6.a<E> next() {
            q6.a<E> aVar = (q6.a) super.next();
            this.f12626a = aVar;
            return aVar;
        }
    }

    /* loaded from: classes2.dex */
    private class d extends p<E>.b {
        private d() {
            super();
        }

        private List<q6.a<E>> u() {
            ArrayList l10 = z5.l(size());
            p5.a(l10, iterator());
            return l10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.p.b, com.google.common.collect.t6.d
        /* renamed from: n */
        public ConcurrentHashMultiset<E> m() {
            return ConcurrentHashMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return u().toArray();
        }

        /* synthetic */ d(ConcurrentHashMultiset concurrentHashMultiset, a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) u().toArray(tArr);
        }
    }

    /* loaded from: classes2.dex */
    private static class e {

        /* renamed from: a  reason: collision with root package name */
        static final t7.b<ConcurrentHashMultiset> f12630a = t7.a(ConcurrentHashMultiset.class, "countMap");
    }

    ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        com.google.common.base.o.m(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.countMap = concurrentMap;
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        e.f12630a.b(this, (ConcurrentMap) objectInputStream.readObject());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> snapshot() {
        ArrayList l10 = z5.l(size());
        for (q6.a aVar : entrySet()) {
            Object a10 = aVar.a();
            for (int count = aVar.getCount(); count > 0; count--) {
                l10.add(a10);
            }
        }
        return l10;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.countMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005c, code lost:
        r2 = new java.util.concurrent.atomic.AtomicInteger(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
        if (r4.countMap.putIfAbsent(r5, r2) == null) goto L31;
     */
    @Override // com.google.common.collect.p, com.google.common.collect.q6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int add(E r5, int r6) {
        /*
            r4 = this;
            com.google.common.base.o.s(r5)
            if (r6 != 0) goto La
            int r5 = r4.count(r5)
            return r5
        La:
            java.lang.String r0 = "occurrences"
            com.google.common.collect.p2.d(r6, r0)
        Lf:
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.countMap
            java.lang.Object r0 = com.google.common.collect.d6.t(r0, r5)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r1 = 0
            if (r0 != 0) goto L2a
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.countMap
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.lang.Object r0 = r0.putIfAbsent(r5, r2)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            if (r0 != 0) goto L2a
            return r1
        L2a:
            int r2 = r0.get()
            if (r2 == 0) goto L5c
            int r3 = com.google.common.math.c.a(r2, r6)     // Catch: java.lang.ArithmeticException -> L3b
            boolean r3 = r0.compareAndSet(r2, r3)     // Catch: java.lang.ArithmeticException -> L3b
            if (r3 == 0) goto L2a
            return r2
        L3b:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            r0 = 65
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Overflow adding "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r6 = " occurrences to a count of "
            r1.append(r6)
            r1.append(r2)
            java.lang.String r6 = r1.toString()
            r5.<init>(r6)
            throw r5
        L5c:
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.countMap
            java.lang.Object r3 = r3.putIfAbsent(r5, r2)
            if (r3 == 0) goto L71
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.countMap
            boolean r0 = r3.replace(r5, r0, r2)
            if (r0 == 0) goto Lf
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentHashMultiset.add(java.lang.Object, int):int");
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.countMap.clear();
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.q6
    public int count(Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) d6.t(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override // com.google.common.collect.p
    Set<E> createElementSet() {
        return new a(this, this.countMap.keySet());
    }

    @Override // com.google.common.collect.p
    @Deprecated
    public Set<q6.a<E>> createEntrySet() {
        return new d(this, null);
    }

    @Override // com.google.common.collect.p
    int distinctElements() {
        return this.countMap.size();
    }

    @Override // com.google.common.collect.p
    Iterator<E> elementIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.p
    public Iterator<q6.a<E>> entryIterator() {
        return new c(new b());
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.p, java.lang.Iterable
    public /* bridge */ /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ void forEachEntry(ObjIntConsumer objIntConsumer) {
        p6.b(this, objIntConsumer);
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.countMap.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return t6.i(this);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public int remove(Object obj, int i9) {
        int i10;
        int max;
        if (i9 == 0) {
            return count(obj);
        }
        p2.d(i9, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) d6.t(this.countMap, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i10 = atomicInteger.get();
            if (i10 == 0) {
                return 0;
            }
            max = Math.max(0, i10 - i9);
        } while (!atomicInteger.compareAndSet(i10, max));
        if (max == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return i10;
    }

    public boolean removeExactly(Object obj, int i9) {
        int i10;
        int i11;
        if (i9 == 0) {
            return true;
        }
        p2.d(i9, "occurrences");
        AtomicInteger atomicInteger = (AtomicInteger) d6.t(this.countMap, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i10 = atomicInteger.get();
            if (i10 < i9) {
                return false;
            }
            i11 = i10 - i9;
        } while (!atomicInteger.compareAndSet(i10, i11));
        if (i11 == 0) {
            this.countMap.remove(obj, atomicInteger);
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
        if (r6 != 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        r2 = new java.util.concurrent.atomic.AtomicInteger(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        if (r4.countMap.putIfAbsent(r5, r2) == null) goto L29;
     */
    @Override // com.google.common.collect.p, com.google.common.collect.q6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setCount(E r5, int r6) {
        /*
            r4 = this;
            com.google.common.base.o.s(r5)
            java.lang.String r0 = "count"
            com.google.common.collect.p2.b(r6, r0)
        L8:
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.countMap
            java.lang.Object r0 = com.google.common.collect.d6.t(r0, r5)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            r1 = 0
            if (r0 != 0) goto L26
            if (r6 != 0) goto L16
            return r1
        L16:
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r0 = r4.countMap
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.lang.Object r0 = r0.putIfAbsent(r5, r2)
            java.util.concurrent.atomic.AtomicInteger r0 = (java.util.concurrent.atomic.AtomicInteger) r0
            if (r0 != 0) goto L26
            return r1
        L26:
            int r2 = r0.get()
            if (r2 != 0) goto L45
            if (r6 != 0) goto L2f
            return r1
        L2f:
            java.util.concurrent.atomic.AtomicInteger r2 = new java.util.concurrent.atomic.AtomicInteger
            r2.<init>(r6)
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.countMap
            java.lang.Object r3 = r3.putIfAbsent(r5, r2)
            if (r3 == 0) goto L44
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r3 = r4.countMap
            boolean r0 = r3.replace(r5, r0, r2)
            if (r0 == 0) goto L8
        L44:
            return r1
        L45:
            boolean r3 = r0.compareAndSet(r2, r6)
            if (r3 == 0) goto L26
            if (r6 != 0) goto L52
            java.util.concurrent.ConcurrentMap<E, java.util.concurrent.atomic.AtomicInteger> r6 = r4.countMap
            r6.remove(r5, r0)
        L52:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ConcurrentHashMultiset.setCount(java.lang.Object, int):int");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        long j10 = 0;
        for (AtomicInteger atomicInteger : this.countMap.values()) {
            j10 += atomicInteger.get();
        }
        return com.google.common.primitives.f.i(j10);
    }

    @Override // com.google.common.collect.p, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Spliterator spliterator() {
        return p6.c(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return snapshot().toArray();
    }

    /* loaded from: classes2.dex */
    class a extends y3<E> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Set f12623a;

        a(ConcurrentHashMultiset concurrentHashMultiset, Set set) {
            this.f12623a = set;
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return obj != null && c3.c(this.f12623a, obj);
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return obj != null && c3.d(this.f12623a, obj);
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<E> delegate() {
            return this.f12623a;
        }
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> create = create();
        n5.a(create, iterable);
        return create;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) snapshot().toArray(tArr);
    }

    public static <E> ConcurrentHashMultiset<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new ConcurrentHashMultiset<>(concurrentMap);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public boolean setCount(E e10, int i9, int i10) {
        com.google.common.base.o.s(e10);
        p2.b(i9, "oldCount");
        p2.b(i10, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) d6.t(this.countMap, e10);
        if (atomicInteger == null) {
            if (i9 != 0) {
                return false;
            }
            return i10 == 0 || this.countMap.putIfAbsent(e10, new AtomicInteger(i10)) == null;
        }
        int i11 = atomicInteger.get();
        if (i11 == i9) {
            if (i11 == 0) {
                if (i10 == 0) {
                    this.countMap.remove(e10, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i10);
                return this.countMap.putIfAbsent(e10, atomicInteger2) == null || this.countMap.replace(e10, atomicInteger, atomicInteger2);
            } else if (atomicInteger.compareAndSet(i11, i10)) {
                if (i10 == 0) {
                    this.countMap.remove(e10, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }
}
