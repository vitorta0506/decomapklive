package com.google.common.collect;

import com.google.common.collect.i8;
import com.google.common.collect.q6;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class v<E> extends p<E> implements h8<E> {
    final Comparator<? super E> comparator;
    private transient h8<E> descendingMultiset;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends k3<E> {
        a() {
        }

        @Override // com.google.common.collect.k3
        Iterator<q6.a<E>> A0() {
            return v.this.descendingEntryIterator();
        }

        @Override // com.google.common.collect.k3
        h8<E> C0() {
            return v.this;
        }

        @Override // com.google.common.collect.q3, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return v.this.descendingIterator();
        }
    }

    v() {
        this(y6.e());
    }

    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    h8<E> createDescendingMultiset() {
        return new a();
    }

    abstract Iterator<q6.a<E>> descendingEntryIterator();

    Iterator<E> descendingIterator() {
        return t6.i(descendingMultiset());
    }

    public h8<E> descendingMultiset() {
        h8<E> h8Var = this.descendingMultiset;
        if (h8Var == null) {
            h8<E> createDescendingMultiset = createDescendingMultiset();
            this.descendingMultiset = createDescendingMultiset;
            return createDescendingMultiset;
        }
        return h8Var;
    }

    public q6.a<E> firstEntry() {
        Iterator<q6.a<E>> entryIterator = entryIterator();
        if (entryIterator.hasNext()) {
            return entryIterator.next();
        }
        return null;
    }

    public q6.a<E> lastEntry() {
        Iterator<q6.a<E>> descendingEntryIterator = descendingEntryIterator();
        if (descendingEntryIterator.hasNext()) {
            return descendingEntryIterator.next();
        }
        return null;
    }

    public q6.a<E> pollFirstEntry() {
        Iterator<q6.a<E>> entryIterator = entryIterator();
        if (entryIterator.hasNext()) {
            q6.a<E> next = entryIterator.next();
            q6.a<E> g10 = t6.g(next.a(), next.getCount());
            entryIterator.remove();
            return g10;
        }
        return null;
    }

    public q6.a<E> pollLastEntry() {
        Iterator<q6.a<E>> descendingEntryIterator = descendingEntryIterator();
        if (descendingEntryIterator.hasNext()) {
            q6.a<E> next = descendingEntryIterator.next();
            q6.a<E> g10 = t6.g(next.a(), next.getCount());
            descendingEntryIterator.remove();
            return g10;
        }
        return null;
    }

    public h8<E> subMultiset(E e10, BoundType boundType, E e11, BoundType boundType2) {
        com.google.common.base.o.s(boundType);
        com.google.common.base.o.s(boundType2);
        return tailMultiset(e10, boundType).headMultiset(e11, boundType2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(Comparator<? super E> comparator) {
        this.comparator = (Comparator) com.google.common.base.o.s(comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.p
    public NavigableSet<E> createElementSet() {
        return new i8.b(this);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }
}
