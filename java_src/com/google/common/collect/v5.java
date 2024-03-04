package com.google.common.collect;

import java.util.Set;
/* loaded from: classes2.dex */
final class v5<E> extends l5<E> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<?> f13452a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<E> f13453b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v5(Set<?> set, ImmutableList<E> immutableList) {
        this.f13452a = set;
        this.f13453b = immutableList;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f13452a.contains(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.l5
    public E get(int i9) {
        return this.f13453b.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f13453b.size();
    }
}
