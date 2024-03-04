package com.google.common.collect;

import java.util.Spliterator;
import java.util.Spliterators;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class j7<E> extends ImmutableList<E> {

    /* renamed from: b  reason: collision with root package name */
    static final ImmutableList<Object> f13175b = new j7(new Object[0]);

    /* renamed from: a  reason: collision with root package name */
    final transient Object[] f13176a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j7(Object[] objArr) {
        this.f13176a = objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        Object[] objArr2 = this.f13176a;
        System.arraycopy(objArr2, 0, objArr, i9, objArr2.length);
        return i9 + this.f13176a.length;
    }

    @Override // java.util.List
    public E get(int i9) {
        return (E) this.f13176a[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public Object[] internalArray() {
        return this.f13176a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayEnd() {
        return this.f13176a.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int internalArrayStart() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f13176a.length;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return Spliterators.spliterator(this.f13176a, 1296);
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public f9<E> listIterator(int i9) {
        Object[] objArr = this.f13176a;
        return p5.o(objArr, 0, objArr.length, i9);
    }
}
