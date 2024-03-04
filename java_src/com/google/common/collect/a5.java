package com.google.common.collect;

import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
/* loaded from: classes2.dex */
final class a5<E> extends g7<E> implements e8<E> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a5(ImmutableSortedSet<E> immutableSortedSet, ImmutableList<E> immutableList) {
        super(immutableSortedSet, immutableList);
    }

    @Override // com.google.common.collect.e8
    public Comparator<? super E> comparator() {
        return c().comparator();
    }

    @Override // com.google.common.collect.f4, com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.g7, com.google.common.collect.f4
    /* renamed from: f */
    public ImmutableSortedSet<E> c() {
        return (ImmutableSortedSet) super.c();
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public int indexOf(Object obj) {
        int indexOf = c().indexOf(obj);
        if (indexOf < 0 || !get(indexOf).equals(obj)) {
            return -1;
        }
        return indexOf;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public int lastIndexOf(Object obj) {
        return indexOf(obj);
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        int size = size();
        ImmutableList<? extends E> d10 = d();
        Objects.requireNonNull(d10);
        return s2.d(size, 1301, new k4(d10), comparator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList
    public ImmutableList<E> subListUnchecked(int i9, int i10) {
        return new o7(super.subListUnchecked(i9, i10), comparator()).asList();
    }
}
