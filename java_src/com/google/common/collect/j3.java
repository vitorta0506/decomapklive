package com.google.common.collect;
/* loaded from: classes2.dex */
final class j3<E> extends ImmutableSortedSet<E> {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableSortedSet<E> f13171a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j3(ImmutableSortedSet<E> immutableSortedSet) {
        super(y6.a(immutableSortedSet.comparator()).h());
        this.f13171a = immutableSortedSet;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e10) {
        return this.f13171a.floor(e10);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f13171a.contains(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> createDescendingSet() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e10) {
        return this.f13171a.ceiling(e10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public ImmutableSortedSet<E> headSetImpl(E e10, boolean z10) {
        return this.f13171a.tailSet((ImmutableSortedSet<E>) e10, z10).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e10) {
        return this.f13171a.lower(e10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(Object obj) {
        int indexOf = this.f13171a.indexOf(obj);
        return indexOf == -1 ? indexOf : (size() - 1) - indexOf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return this.f13171a.isPartialView();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e10) {
        return this.f13171a.higher(e10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13171a.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> subSetImpl(E e10, boolean z10, E e11, boolean z11) {
        return this.f13171a.subSet((boolean) e11, z11, (boolean) e10, z10).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<E> tailSetImpl(E e10, boolean z10) {
        return this.f13171a.headSet((ImmutableSortedSet<E>) e10, z10).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public e9<E> descendingIterator() {
        return this.f13171a.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public ImmutableSortedSet<E> descendingSet() {
        return this.f13171a;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return this.f13171a.descendingIterator();
    }
}
