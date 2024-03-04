package com.google.common.collect;

import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableSet;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Consumer;
import java.util.stream.Collector;
/* loaded from: classes2.dex */
public abstract class ImmutableSortedSet<E> extends j5<E> implements NavigableSet<E>, e8<E> {
    static final int SPLITERATOR_CHARACTERISTICS = 1301;
    final transient Comparator<? super E> comparator;
    transient ImmutableSortedSet<E> descendingSet;

    /* loaded from: classes2.dex */
    class a extends Spliterators.AbstractSpliterator<E> {

        /* renamed from: a  reason: collision with root package name */
        final e9<E> f12758a;

        a(long j10, int i9) {
            super(j10, i9);
            this.f12758a = ImmutableSortedSet.this.iterator();
        }

        @Override // java.util.Spliterator
        public Comparator<? super E> getComparator() {
            return ImmutableSortedSet.this.comparator;
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super E> consumer) {
            if (this.f12758a.hasNext()) {
                consumer.accept((E) this.f12758a.next());
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b<E> extends ImmutableSet.a<E> {

        /* renamed from: c  reason: collision with root package name */
        private final Comparator<? super E> f12760c;

        /* renamed from: d  reason: collision with root package name */
        private E[] f12761d;

        /* renamed from: e  reason: collision with root package name */
        private int f12762e;

        public b(Comparator<? super E> comparator) {
            super(true);
            this.f12760c = (Comparator) com.google.common.base.o.s(comparator);
            this.f12761d = (E[]) new Object[4];
            this.f12762e = 0;
        }

        private void q() {
            int i9 = this.f12762e;
            if (i9 == 0) {
                return;
            }
            Arrays.sort(this.f12761d, 0, i9, this.f12760c);
            int i10 = 1;
            int i11 = 1;
            while (true) {
                int i12 = this.f12762e;
                if (i10 < i12) {
                    Comparator<? super E> comparator = this.f12760c;
                    E[] eArr = this.f12761d;
                    int compare = comparator.compare((Object) eArr[i11 - 1], (Object) eArr[i10]);
                    if (compare < 0) {
                        E[] eArr2 = this.f12761d;
                        eArr2[i11] = eArr2[i10];
                        i11++;
                    } else if (compare > 0) {
                        String valueOf = String.valueOf(this.f12760c);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 48);
                        sb2.append("Comparator ");
                        sb2.append(valueOf);
                        sb2.append(" compare method violates its contract");
                        throw new AssertionError(sb2.toString());
                    }
                    i10++;
                } else {
                    Arrays.fill(this.f12761d, i11, i12, (Object) null);
                    this.f12762e = i11;
                    return;
                }
            }
        }

        @Override // com.google.common.collect.ImmutableSet.a
        void j() {
            E[] eArr = this.f12761d;
            this.f12761d = (E[]) Arrays.copyOf(eArr, eArr.length);
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* renamed from: l */
        public b<E> f(E e10) {
            com.google.common.base.o.s(e10);
            k();
            if (this.f12762e == this.f12761d.length) {
                q();
                int i9 = this.f12762e;
                int e11 = ImmutableCollection.a.e(i9, i9 + 1);
                E[] eArr = this.f12761d;
                if (e11 > eArr.length) {
                    this.f12761d = (E[]) Arrays.copyOf(eArr, e11);
                }
            }
            E[] eArr2 = this.f12761d;
            int i10 = this.f12762e;
            this.f12762e = i10 + 1;
            eArr2[i10] = e10;
            return this;
        }

        public b<E> m(E... eArr) {
            x6.b(eArr);
            for (E e10 : eArr) {
                f(e10);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* renamed from: n */
        public b<E> g(Iterator<? extends E> it) {
            super.g(it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.a
        /* renamed from: o */
        public ImmutableSortedSet<E> h() {
            q();
            if (this.f12762e == 0) {
                return ImmutableSortedSet.emptySet(this.f12760c);
            }
            this.f12737b = true;
            return new o7(ImmutableList.asImmutableList(this.f12761d, this.f12762e), this.f12760c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.a
        /* renamed from: p */
        public b<E> i(ImmutableSet.a<E> aVar) {
            k();
            b bVar = (b) aVar;
            for (int i9 = 0; i9 < bVar.f12762e; i9++) {
                f(bVar.f12761d[i9]);
            }
            return this;
        }
    }

    /* loaded from: classes2.dex */
    private static class c<E> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super E> f12763a;

        /* renamed from: b  reason: collision with root package name */
        final Object[] f12764b;

        public c(Comparator<? super E> comparator, Object[] objArr) {
            this.f12763a = comparator;
            this.f12764b = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        Object readResolve() {
            return new b(this.f12763a).m(this.f12764b).h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedSet(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <E> ImmutableSortedSet<E> construct(Comparator<? super E> comparator, int i9, E... eArr) {
        if (i9 == 0) {
            return emptySet(comparator);
        }
        x6.c(eArr, i9);
        Arrays.sort(eArr, 0, i9, comparator);
        int i10 = 1;
        for (int i11 = 1; i11 < i9; i11++) {
            Object obj = (Object) eArr[i11];
            if (comparator.compare(obj, (Object) eArr[i10 - 1]) != 0) {
                eArr[i10] = obj;
                i10++;
            }
        }
        Arrays.fill(eArr, i10, i9, (Object) null);
        return new o7(ImmutableList.asImmutableList(eArr, i10), comparator);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet copyOf(Comparable[] comparableArr) {
        return construct(y6.e(), comparableArr.length, (Comparable[]) comparableArr.clone());
    }

    public static <E> ImmutableSortedSet<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator a10 = f8.a(sortedSet);
        ImmutableList copyOf = ImmutableList.copyOf((Collection) sortedSet);
        if (copyOf.isEmpty()) {
            return emptySet(a10);
        }
        return new o7(copyOf, a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> o7<E> emptySet(Comparator<? super E> comparator) {
        if (y6.e().equals(comparator)) {
            return (o7<E>) o7.f13330b;
        }
        return new o7<>(ImmutableList.of(), comparator);
    }

    public static <E extends Comparable<?>> b<E> naturalOrder() {
        return new b<>(y6.e());
    }

    public static <E> ImmutableSortedSet<E> of() {
        return o7.f13330b;
    }

    public static <E> b<E> orderedBy(Comparator<E> comparator) {
        return new b<>(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> b<E> reverseOrder() {
        return new b<>(Collections.reverseOrder());
    }

    public static <E> Collector<E, ?, ImmutableSortedSet<E>> toImmutableSortedSet(Comparator<? super E> comparator) {
        return o2.Z(comparator);
    }

    @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableCollection
    public /* bridge */ /* synthetic */ ImmutableList asList() {
        return super.asList();
    }

    @Override // java.util.NavigableSet
    public E ceiling(E e10) {
        return (E) n5.f(tailSet((ImmutableSortedSet<E>) e10, true), null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.e8
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    abstract ImmutableSortedSet<E> createDescendingSet();

    @Override // java.util.NavigableSet
    public abstract e9<E> descendingIterator();

    @Override // java.util.SortedSet
    public E first() {
        return iterator().next();
    }

    @Override // java.util.NavigableSet
    public E floor(E e10) {
        return (E) p5.q(headSet((ImmutableSortedSet<E>) e10, true).descendingIterator(), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ NavigableSet headSet(Object obj, boolean z10) {
        return headSet((ImmutableSortedSet<E>) obj, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ImmutableSortedSet<E> headSetImpl(E e10, boolean z10);

    @Override // java.util.NavigableSet
    public E higher(E e10) {
        return (E) n5.f(tailSet((ImmutableSortedSet<E>) e10, false), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int indexOf(Object obj);

    @Override // com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract e9<E> iterator();

    @Override // java.util.SortedSet
    public E last() {
        return descendingIterator().next();
    }

    @Override // java.util.NavigableSet
    public E lower(E e10) {
        return (E) p5.q(headSet((ImmutableSortedSet<E>) e10, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return new a(size(), 1365);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
        return subSet((boolean) obj, z10, (boolean) obj2, z11);
    }

    abstract ImmutableSortedSet<E> subSetImpl(E e10, boolean z10, E e11, boolean z11);

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ NavigableSet tailSet(Object obj, boolean z10) {
        return tailSet((ImmutableSortedSet<E>) obj, z10);
    }

    abstract ImmutableSortedSet<E> tailSetImpl(E e10, boolean z10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new c(this.comparator, toArray());
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(y6.e(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable) {
        return new o7(ImmutableList.of(comparable), y6.e());
    }

    static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    @Override // java.util.NavigableSet
    public ImmutableSortedSet<E> descendingSet() {
        ImmutableSortedSet<E> immutableSortedSet = this.descendingSet;
        if (immutableSortedSet == null) {
            ImmutableSortedSet<E> createDescendingSet = createDescendingSet();
            this.descendingSet = createDescendingSet;
            createDescendingSet.descendingSet = this;
            return createDescendingSet;
        }
        return immutableSortedSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet((ImmutableSortedSet<E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet((ImmutableSortedSet<E>) obj);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2) {
        return construct(y6.e(), 2, comparable, comparable2);
    }

    public ImmutableSortedSet<E> headSet(E e10) {
        return headSet((ImmutableSortedSet<E>) e10, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public ImmutableSortedSet<E> subSet(E e10, E e11) {
        return subSet((boolean) e10, true, (boolean) e11, false);
    }

    public ImmutableSortedSet<E> tailSet(E e10) {
        return tailSet((ImmutableSortedSet<E>) e10, true);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) y6.e(), (Collection) collection);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(y6.e(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImmutableSortedSet<E> headSet(E e10, boolean z10) {
        return headSetImpl(com.google.common.base.o.s(e10), z10);
    }

    public ImmutableSortedSet<E> subSet(E e10, boolean z10, E e11, boolean z11) {
        com.google.common.base.o.s(e10);
        com.google.common.base.o.s(e11);
        com.google.common.base.o.d(this.comparator.compare(e10, e11) <= 0);
        return subSetImpl(e10, z10, e11, z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImmutableSortedSet<E> tailSet(E e10, boolean z10) {
        return tailSetImpl(com.google.common.base.o.s(e10), z10);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(y6.e(), 4, comparable, comparable2, comparable3, comparable4);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Iterator<? extends E> it) {
        return copyOf(y6.e(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(y6.e(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/ImmutableSortedSet<TE;>; */
    public static ImmutableSortedSet of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(y6.e(), length, comparableArr2);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new b(comparator).g(it).h();
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.o.s(comparator);
        if (f8.b(comparator, iterable) && (iterable instanceof ImmutableSortedSet)) {
            ImmutableSortedSet<E> immutableSortedSet = (ImmutableSortedSet) iterable;
            if (!immutableSortedSet.isPartialView()) {
                return immutableSortedSet;
            }
        }
        Object[] m10 = n5.m(iterable);
        return construct(comparator, m10.length, m10);
    }

    public static <E> ImmutableSortedSet<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }
}
