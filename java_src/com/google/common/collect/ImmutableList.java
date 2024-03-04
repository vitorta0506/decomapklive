package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.UnaryOperator;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends com.google.common.collect.b<E> {
        a(int i9, int i10) {
            super(i9, i10);
        }

        @Override // com.google.common.collect.b
        protected E a(int i9) {
            return ImmutableList.this.get(i9);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b<E> extends ImmutableCollection.a<E> {

        /* renamed from: a  reason: collision with root package name */
        Object[] f12662a;

        /* renamed from: b  reason: collision with root package name */
        private int f12663b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f12664c;

        public b() {
            this(4);
        }

        private void g(Object[] objArr, int i9) {
            l(this.f12663b + i9);
            System.arraycopy(objArr, 0, this.f12662a, this.f12663b, i9);
            this.f12663b += i9;
        }

        private void l(int i9) {
            Object[] objArr = this.f12662a;
            if (objArr.length < i9) {
                this.f12662a = Arrays.copyOf(objArr, ImmutableCollection.a.e(objArr.length, i9));
                this.f12664c = false;
            } else if (this.f12664c) {
                this.f12662a = Arrays.copyOf(objArr, objArr.length);
                this.f12664c = false;
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.a
        /* renamed from: f */
        public b<E> a(E e10) {
            com.google.common.base.o.s(e10);
            l(this.f12663b + 1);
            Object[] objArr = this.f12662a;
            int i9 = this.f12663b;
            this.f12663b = i9 + 1;
            objArr[i9] = e10;
            return this;
        }

        public b<E> h(Iterable<? extends E> iterable) {
            com.google.common.base.o.s(iterable);
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                l(this.f12663b + collection.size());
                if (collection instanceof ImmutableCollection) {
                    this.f12663b = ((ImmutableCollection) collection).copyIntoArray(this.f12662a, this.f12663b);
                    return this;
                }
            }
            super.c(iterable);
            return this;
        }

        public b<E> i(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        public ImmutableList<E> j() {
            this.f12664c = true;
            return ImmutableList.asImmutableList(this.f12662a, this.f12663b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b<E> k(b<E> bVar) {
            com.google.common.base.o.s(bVar);
            g(bVar.f12662a, bVar.f12663b);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i9) {
            this.f12662a = new Object[i9];
            this.f12663b = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c<E> extends ImmutableList<E> {

        /* renamed from: a  reason: collision with root package name */
        private final transient ImmutableList<E> f12665a;

        c(ImmutableList<E> immutableList) {
            this.f12665a = immutableList;
        }

        private int c(int i9) {
            return (size() - 1) - i9;
        }

        private int d(int i9) {
            return size() - i9;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f12665a.contains(obj);
        }

        @Override // java.util.List
        public E get(int i9) {
            com.google.common.base.o.q(i9, size());
            return this.f12665a.get(c(i9));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(Object obj) {
            int lastIndexOf = this.f12665a.lastIndexOf(obj);
            if (lastIndexOf >= 0) {
                return c(lastIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return this.f12665a.isPartialView();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(Object obj) {
            int indexOf = this.f12665a.indexOf(obj);
            if (indexOf >= 0) {
                return c(indexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.ImmutableList
        public ImmutableList<E> reverse() {
            return this.f12665a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f12665a.size();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i9) {
            return super.listIterator(i9);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i9, int i10) {
            com.google.common.base.o.y(i9, i10, size());
            return this.f12665a.subList(d(i10), d(i9)).reverse();
        }
    }

    /* loaded from: classes2.dex */
    static class d implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final Object[] f12666a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(Object[] objArr) {
            this.f12666a = objArr;
        }

        Object readResolve() {
            return ImmutableList.copyOf(this.f12666a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends ImmutableList<E> {

        /* renamed from: a  reason: collision with root package name */
        final transient int f12667a;

        /* renamed from: b  reason: collision with root package name */
        final transient int f12668b;

        e(int i9, int i10) {
            this.f12667a = i9;
            this.f12668b = i10;
        }

        @Override // java.util.List
        public E get(int i9) {
            com.google.common.base.o.q(i9, this.f12668b);
            return ImmutableList.this.get(i9 + this.f12667a);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f12668b;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i9) {
            return super.listIterator(i9);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<E> subList(int i9, int i10) {
            com.google.common.base.o.y(i9, i10, this.f12668b);
            ImmutableList immutableList = ImmutableList.this;
            int i11 = this.f12667a;
            return immutableList.subList(i9 + i11, i10 + i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableList<E> asImmutableList(Object[] objArr) {
        return asImmutableList(objArr, objArr.length);
    }

    public static <E> b<E> builder() {
        return new b<>();
    }

    public static <E> b<E> builderWithExpectedSize(int i9) {
        p2.b(i9, "expectedSize");
        return new b<>(i9);
    }

    private static <E> ImmutableList<E> construct(Object... objArr) {
        return asImmutableList(x6.b(objArr));
    }

    public static <E> ImmutableList<E> copyOf(Iterable<? extends E> iterable) {
        com.google.common.base.o.s(iterable);
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> ImmutableList<E> of() {
        return (ImmutableList<E>) j7.f13175b;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<? super E>> ImmutableList<E> sortedCopyOf(Iterable<? extends E> iterable) {
        Comparable[] comparableArr = (Comparable[]) n5.n(iterable, new Comparable[0]);
        x6.b(comparableArr);
        Arrays.sort(comparableArr);
        return asImmutableList(comparableArr);
    }

    public static <E> Collector<E, ?, ImmutableList<E>> toImmutableList() {
        return o2.O();
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i9, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i9, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    @Deprecated
    public final ImmutableList<E> asList() {
        return this;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i9 + i10] = get(i10);
        }
        return i9 + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return z5.b(this, obj);
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        com.google.common.base.o.s(consumer);
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            consumer.accept(get(i9));
        }
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i9 = 1;
        for (int i10 = 0; i10 < size; i10++) {
            i9 = ~(~((i9 * 31) + get(i10).hashCode()));
        }
        return i9;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return z5.c(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return z5.e(this, obj);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final void replaceAll(UnaryOperator<E> unaryOperator) {
        throw new UnsupportedOperationException();
    }

    public ImmutableList<E> reverse() {
        return size() <= 1 ? this : new c(this);
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i9, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final void sort(Comparator<? super E> comparator) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return s2.c(size(), 1296, new k4(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableList<E> subListUnchecked(int i9, int i10) {
        return new e(i9, i10 - i9);
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new d(toArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> ImmutableList<E> asImmutableList(Object[] objArr, int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 < objArr.length) {
                    objArr = Arrays.copyOf(objArr, i9);
                }
                return new j7(objArr);
            }
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return of(obj);
        }
        return of();
    }

    public static <E> ImmutableList<E> of(E e10) {
        return new b8(e10);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public ImmutableList<E> subList(int i9, int i10) {
        com.google.common.base.o.y(i9, i10, size());
        int i11 = i10 - i9;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return of();
        }
        if (i11 == 1) {
            return of((Object) get(i9));
        }
        return subListUnchecked(i9, i10);
    }

    public static <E> ImmutableList<E> of(E e10, E e11) {
        return construct(e10, e11);
    }

    @Override // java.util.List
    public f9<E> listIterator() {
        return listIterator(0);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12) {
        return construct(e10, e11, e12);
    }

    @Override // java.util.List
    public f9<E> listIterator(int i9) {
        return new a(size(), i9);
    }

    public static <E> ImmutableList<E> copyOf(Collection<? extends E> collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList<E> asList = ((ImmutableCollection) collection).asList();
            return asList.isPartialView() ? asImmutableList(asList.toArray()) : asList;
        }
        return construct(collection.toArray());
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13) {
        return construct(e10, e11, e12, e13);
    }

    public static <E> ImmutableList<E> sortedCopyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.o.s(comparator);
        Object[] m10 = n5.m(iterable);
        x6.b(m10);
        Arrays.sort(m10, comparator);
        return asImmutableList(m10);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14) {
        return construct(e10, e11, e12, e13, e14);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15) {
        return construct(e10, e11, e12, e13, e14, e15);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16) {
        return construct(e10, e11, e12, e13, e14, e15, e16);
    }

    public static <E> ImmutableList<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new b().a(next).i(it).j();
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17, e18);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17, e18, e19);
    }

    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20) {
        return construct(e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20);
    }

    @SafeVarargs
    public static <E> ImmutableList<E> of(E e10, E e11, E e12, E e13, E e14, E e15, E e16, E e17, E e18, E e19, E e20, E e21, E... eArr) {
        com.google.common.base.o.e(eArr.length <= 2147483635, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 12];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        objArr[6] = e16;
        objArr[7] = e17;
        objArr[8] = e18;
        objArr[9] = e19;
        objArr[10] = e20;
        objArr[11] = e21;
        System.arraycopy(eArr, 0, objArr, 12, eArr.length);
        return construct(objArr);
    }

    public static <E> ImmutableList<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length != 0) {
            if (length != 1) {
                return construct((Object[]) eArr.clone());
            }
            return of((Object) eArr[0]);
        }
        return of();
    }
}
