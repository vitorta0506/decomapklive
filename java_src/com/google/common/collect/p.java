package com.google.common.collect;

import com.google.common.collect.q6;
import com.google.common.collect.t6;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class p<E> extends AbstractCollection<E> implements q6<E> {
    private transient Set<E> elementSet;
    private transient Set<q6.a<E>> entrySet;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends t6.c<E> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return p.this.elementIterator();
        }

        @Override // com.google.common.collect.t6.c
        q6<E> m() {
            return p.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends t6.d<E> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<q6.a<E>> iterator() {
            return p.this.entryIterator();
        }

        @Override // com.google.common.collect.t6.d
        q6<E> m() {
            return p.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return p.this.distinctElements();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public final boolean add(E e10) {
        add(e10, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        return t6.c(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract void clear();

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    Set<E> createElementSet() {
        return new a();
    }

    Set<q6.a<E>> createEntrySet() {
        return new b();
    }

    abstract int distinctElements();

    abstract Iterator<E> elementIterator();

    public Set<E> elementSet() {
        Set<E> set = this.elementSet;
        if (set == null) {
            Set<E> createElementSet = createElementSet();
            this.elementSet = createElementSet;
            return createElementSet;
        }
        return set;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Iterator<q6.a<E>> entryIterator();

    public Set<q6.a<E>> entrySet() {
        Set<q6.a<E>> set = this.entrySet;
        if (set == null) {
            Set<q6.a<E>> createEntrySet = createEntrySet();
            this.entrySet = createEntrySet;
            return createEntrySet;
        }
        return set;
    }

    @Override // java.util.Collection, com.google.common.collect.q6
    public final boolean equals(Object obj) {
        return t6.f(this, obj);
    }

    @Override // java.lang.Iterable
    public /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    public /* synthetic */ void forEachEntry(ObjIntConsumer objIntConsumer) {
        p6.b(this, objIntConsumer);
    }

    @Override // java.util.Collection, com.google.common.collect.q6
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public final boolean remove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return t6.k(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return t6.l(this, collection);
    }

    public int setCount(E e10, int i9) {
        return t6.m(this, e10, i9);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return p6.c(this);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }

    public int add(E e10, int i9) {
        throw new UnsupportedOperationException();
    }

    public int remove(Object obj, int i9) {
        throw new UnsupportedOperationException();
    }

    public boolean setCount(E e10, int i9, int i10) {
        return t6.n(this, e10, i9, i10);
    }
}
