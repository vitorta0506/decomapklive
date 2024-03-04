package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.t6;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;
/* loaded from: classes2.dex */
final class i8 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a<E> extends t6.c<E> implements SortedSet<E> {

        /* renamed from: a  reason: collision with root package name */
        private final h8<E> f13133a;

        a(h8<E> h8Var) {
            this.f13133a = h8Var;
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return m().comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) i8.d(m().firstEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e10) {
            return m().headMultiset(e10, BoundType.OPEN).elementSet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return t6.e(m().entrySet().iterator());
        }

        @Override // java.util.SortedSet
        public E last() {
            return (E) i8.d(m().lastEntry());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.t6.c
        /* renamed from: n */
        public final h8<E> m() {
            return this.f13133a;
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e10, E e11) {
            return m().subMultiset(e10, BoundType.CLOSED, e11, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e10) {
            return m().tailMultiset(e10, BoundType.CLOSED).elementSet();
        }
    }

    /* loaded from: classes2.dex */
    static class b<E> extends a<E> implements NavigableSet<E> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(h8<E> h8Var) {
            super(h8Var);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e10) {
            return (E) i8.c(m().tailMultiset(e10, BoundType.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return new b(m().descendingMultiset());
        }

        @Override // java.util.NavigableSet
        public E floor(E e10) {
            return (E) i8.c(m().headMultiset(e10, BoundType.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e10, boolean z10) {
            return new b(m().headMultiset(e10, BoundType.forBoolean(z10)));
        }

        @Override // java.util.NavigableSet
        public E higher(E e10) {
            return (E) i8.c(m().tailMultiset(e10, BoundType.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        public E lower(E e10) {
            return (E) i8.c(m().headMultiset(e10, BoundType.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) i8.c(m().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) i8.c(m().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e10, boolean z10, E e11, boolean z11) {
            return new b(m().subMultiset(e10, BoundType.forBoolean(z10), e11, BoundType.forBoolean(z11)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e10, boolean z10) {
            return new b(m().tailMultiset(e10, BoundType.forBoolean(z10)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> E c(q6.a<E> aVar) {
        if (aVar == null) {
            return null;
        }
        return aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> E d(q6.a<E> aVar) {
        if (aVar != null) {
            return aVar.a();
        }
        throw new NoSuchElementException();
    }
}
