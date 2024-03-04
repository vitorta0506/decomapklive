package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c8<E> extends ImmutableSet<E> {

    /* renamed from: a  reason: collision with root package name */
    final transient E f13012a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c8(E e10) {
        this.f13012a = (E) com.google.common.base.o.s(e10);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        return ImmutableList.of((Object) this.f13012a);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.f13012a.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public int copyIntoArray(Object[] objArr, int i9) {
        objArr[i9] = this.f13012a;
        return i9 + 1;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f13012a.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String obj = this.f13012a.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2);
        sb2.append('[');
        sb2.append(obj);
        sb2.append(']');
        return sb2.toString();
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public e9<E> iterator() {
        return p5.z(this.f13012a);
    }
}
