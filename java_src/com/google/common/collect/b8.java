package com.google.common.collect;

import java.util.Collections;
import java.util.Spliterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b8<E> extends ImmutableList<E> {

    /* renamed from: a  reason: collision with root package name */
    final transient E f12937a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b8(E e10) {
        this.f12937a = (E) com.google.common.base.o.s(e10);
    }

    @Override // java.util.List
    public E get(int i9) {
        com.google.common.base.o.q(i9, 1);
        return this.f12937a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        return Collections.singleton(this.f12937a).spliterator();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String obj = this.f12937a.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2);
        sb2.append('[');
        sb2.append(obj);
        sb2.append(']');
        return sb2.toString();
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return p5.z(this.f12937a);
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public ImmutableList<E> subList(int i9, int i10) {
        com.google.common.base.o.y(i9, i10, 1);
        return i9 == i10 ? ImmutableList.of() : this;
    }
}
