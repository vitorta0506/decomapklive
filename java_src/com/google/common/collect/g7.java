package com.google.common.collect;

import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class g7<E> extends f4<E> {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableCollection<E> f13076a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<? extends E> f13077b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g7(ImmutableCollection<E> immutableCollection, ImmutableList<? extends E> immutableList) {
        this.f13076a = immutableCollection;
        this.f13077b = immutableList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.f4
    public ImmutableCollection<E> c() {
        return this.f13076a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        return this.f13077b.copyIntoArray(objArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableList<? extends E> d() {
        return this.f13077b;
    }

    @Override // com.google.common.collect.ImmutableList, java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        this.f13077b.forEach(consumer);
    }

    @Override // java.util.List
    public E get(int i9) {
        return this.f13077b.get(i9);
    }

    @Override // com.google.common.collect.ImmutableCollection
    Object[] internalArray() {
        return this.f13077b.internalArray();
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayEnd() {
        return this.f13077b.internalArrayEnd();
    }

    @Override // com.google.common.collect.ImmutableCollection
    int internalArrayStart() {
        return this.f13077b.internalArrayStart();
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public f9<E> listIterator(int i9) {
        return (f9<? extends E>) this.f13077b.listIterator(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g7(ImmutableCollection<E> immutableCollection, Object[] objArr) {
        this(immutableCollection, ImmutableList.asImmutableList(objArr));
    }
}
