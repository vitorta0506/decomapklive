package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Set;
import okhttp3.HttpUrl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m3<C extends Comparable> extends ContiguousSet<C> {

    /* loaded from: classes2.dex */
    private static final class b<C extends Comparable> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final l3<C> f13250a;

        private Object readResolve() {
            return new m3(this.f13250a);
        }

        private b(l3<C> l3Var) {
            this.f13250a = l3Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m3(l3<C> l3Var) {
        super(l3Var);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableCollection
    public ImmutableList<C> asList() {
        return ImmutableList.of();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: c */
    public C first() {
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return false;
    }

    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    ImmutableSortedSet<C> createDescendingSet() {
        return ImmutableSortedSet.emptySet(y6.e().h());
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: d */
    public C last() {
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj instanceof Set) {
            return ((Set) obj).isEmpty();
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return 0;
    }

    @Override // com.google.common.collect.ContiguousSet
    ContiguousSet<C> headSetImpl(C c10, boolean z10) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public /* bridge */ /* synthetic */ ImmutableSortedSet headSetImpl(Object obj, boolean z10) {
        return headSetImpl((m3<C>) ((Comparable) obj), z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    public int indexOf(Object obj) {
        return -1;
    }

    @Override // com.google.common.collect.ContiguousSet
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableSet
    boolean isHashCodeFast() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range() {
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 0;
    }

    @Override // com.google.common.collect.ContiguousSet
    ContiguousSet<C> subSetImpl(C c10, boolean z10, C c11, boolean z11) {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* bridge */ /* synthetic */ ImmutableSortedSet subSetImpl(Object obj, boolean z10, Object obj2, boolean z11) {
        return subSetImpl((boolean) ((Comparable) obj), z10, (boolean) ((Comparable) obj2), z11);
    }

    @Override // com.google.common.collect.ContiguousSet
    ContiguousSet<C> tailSetImpl(C c10, boolean z10) {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* bridge */ /* synthetic */ ImmutableSortedSet tailSetImpl(Object obj, boolean z10) {
        return tailSetImpl((m3<C>) ((Comparable) obj), z10);
    }

    @Override // com.google.common.collect.ContiguousSet, java.util.AbstractCollection
    public String toString() {
        return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new b(this.domain);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public e9<C> descendingIterator() {
        return p5.i();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet.b, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<C> iterator() {
        return p5.i();
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        throw new NoSuchElementException();
    }
}
