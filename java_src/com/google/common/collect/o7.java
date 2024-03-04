package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Spliterator;
import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class o7<E> extends ImmutableSortedSet<E> {

    /* renamed from: b  reason: collision with root package name */
    static final o7<Comparable> f13330b = new o7<>(ImmutableList.of(), y6.e());

    /* renamed from: a  reason: collision with root package name */
    private final transient ImmutableList<E> f13331a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o7(ImmutableList<E> immutableList, Comparator<? super E> comparator) {
        super(comparator);
        this.f13331a = immutableList;
    }

    private int g(Object obj) throws ClassCastException {
        return Collections.binarySearch(this.f13331a, obj, m());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o7<E> c(int i9, int i10) {
        if (i9 == 0 && i10 == size()) {
            return this;
        }
        if (i9 < i10) {
            return new o7<>(this.f13331a.subList(i9, i10), this.comparator);
        }
        return ImmutableSortedSet.emptySet(this.comparator);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e10) {
        int f10 = f(e10, true);
        if (f10 == size()) {
            return null;
        }
        return this.f13331a.get(f10);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (obj != null) {
            try {
                return g(obj) >= 0;
            } catch (ClassCastException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof q6) {
            collection = ((q6) collection).elementSet();
        }
        if (f8.b(comparator(), collection) && collection.size() > 1) {
            e9<E> it = iterator();
            Iterator<?> it2 = collection.iterator();
            if (!it.hasNext()) {
                return false;
            }
            Object next = it2.next();
            E next2 = it.next();
            while (true) {
                try {
                    int unsafeCompare = unsafeCompare(next2, next);
                    if (unsafeCompare < 0) {
                        if (!it.hasNext()) {
                            return false;
                        }
                        next2 = it.next();
                    } else if (unsafeCompare == 0) {
                        if (!it2.hasNext()) {
                            return true;
                        }
                        next = it2.next();
                    } else if (unsafeCompare > 0) {
                        break;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
        } else {
            return super.containsAll(collection);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        return this.f13331a.copyIntoArray(objArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet.b
    public ImmutableList<E> createAsList() {
        return size() <= 1 ? this.f13331a : new a5(this, this.f13331a);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> createDescendingSet() {
        Comparator reverseOrder = Collections.reverseOrder(this.comparator);
        if (isEmpty()) {
            return ImmutableSortedSet.emptySet(reverseOrder);
        }
        return new o7(this.f13331a.reverse(), reverseOrder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(E e10, boolean z10) {
        int binarySearch = Collections.binarySearch(this.f13331a, com.google.common.base.o.s(e10), comparator());
        return binarySearch >= 0 ? z10 ? binarySearch + 1 : binarySearch : ~binarySearch;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034 A[Catch: ClassCastException | NoSuchElementException -> 0x0046, TryCatch #0 {ClassCastException | NoSuchElementException -> 0x0046, blocks: (B:17:0x002a, B:18:0x002e, B:20:0x0034, B:22:0x003e), top: B:29:0x002a }] */
    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof java.util.Set
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            java.util.Set r6 = (java.util.Set) r6
            int r1 = r5.size()
            int r3 = r6.size()
            if (r1 == r3) goto L17
            return r2
        L17:
            boolean r1 = r5.isEmpty()
            if (r1 == 0) goto L1e
            return r0
        L1e:
            java.util.Comparator<? super E> r1 = r5.comparator
            boolean r1 = com.google.common.collect.f8.b(r1, r6)
            if (r1 == 0) goto L47
            java.util.Iterator r6 = r6.iterator()
            com.google.common.collect.e9 r1 = r5.iterator()     // Catch: java.lang.Throwable -> L46
        L2e:
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L45
            java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> L46
            java.lang.Object r4 = r6.next()     // Catch: java.lang.Throwable -> L46
            if (r4 == 0) goto L44
            int r3 = r5.unsafeCompare(r3, r4)     // Catch: java.lang.Throwable -> L46
            if (r3 == 0) goto L2e
        L44:
            return r2
        L45:
            return r0
        L46:
            return r2
        L47:
            boolean r6 = r5.containsAll(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.o7.equals(java.lang.Object):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(E e10, boolean z10) {
        int binarySearch = Collections.binarySearch(this.f13331a, com.google.common.base.o.s(e10), comparator());
        return binarySearch >= 0 ? z10 ? binarySearch : binarySearch + 1 : ~binarySearch;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E first() {
        if (!isEmpty()) {
            return this.f13331a.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e10) {
        int d10 = d(e10, true) - 1;
        if (d10 == -1) {
            return null;
        }
        return this.f13331a.get(d10);
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        this.f13331a.forEach(consumer);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> headSetImpl(E e10, boolean z10) {
        return c(0, d(e10, z10));
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e10) {
        int f10 = f(e10, false);
        if (f10 == size()) {
            return null;
        }
        return this.f13331a.get(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int binarySearch = Collections.binarySearch(this.f13331a, obj, m());
            if (binarySearch >= 0) {
                return binarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.f13331a.internalArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayEnd() {
        return this.f13331a.internalArrayEnd();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return this.f13331a.internalArrayStart();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return this.f13331a.isPartialView();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E last() {
        if (!isEmpty()) {
            return this.f13331a.get(size() - 1);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e10) {
        int d10 = d(e10, false) - 1;
        if (d10 == -1) {
            return null;
        }
        return this.f13331a.get(d10);
    }

    Comparator<Object> m() {
        return this.comparator;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13331a.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return asList().spliterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> subSetImpl(E e10, boolean z10, E e11, boolean z11) {
        return tailSetImpl(e10, z10).headSetImpl(e11, z11);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> tailSetImpl(E e10, boolean z10) {
        return c(f(e10, z10), size());
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public e9<E> descendingIterator() {
        return this.f13331a.reverse().iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return this.f13331a.iterator();
    }
}
