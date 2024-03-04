package com.google.common.collect;

import com.google.common.collect.q6;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i3<E> extends ImmutableSortedMultiset<E> {

    /* renamed from: a  reason: collision with root package name */
    private final transient ImmutableSortedMultiset<E> f13129a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i3(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.f13129a = immutableSortedMultiset;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public int count(Object obj) {
        return this.f13129a.count(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public q6.a<E> firstEntry() {
        return this.f13129a.lastEntry();
    }

    @Override // com.google.common.collect.ImmutableMultiset
    q6.a<E> getEntry(int i9) {
        return this.f13129a.entrySet().asList().reverse().get(i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 headMultiset(Object obj, BoundType boundType) {
        return headMultiset((i3<E>) obj, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return this.f13129a.isPartialView();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public q6.a<E> lastEntry() {
        return this.f13129a.firstEntry();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        return this.f13129a.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((i3<E>) obj, boundType);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.f13129a;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public ImmutableSortedMultiset<E> headMultiset(E e10, BoundType boundType) {
        return this.f13129a.tailMultiset((ImmutableSortedMultiset<E>) e10, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public ImmutableSortedMultiset<E> tailMultiset(E e10, BoundType boundType) {
        return this.f13129a.headMultiset((ImmutableSortedMultiset<E>) e10, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public ImmutableSortedSet<E> elementSet() {
        return this.f13129a.elementSet().descendingSet();
    }
}
