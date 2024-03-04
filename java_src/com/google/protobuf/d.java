package com.google.protobuf;

import com.google.protobuf.u0;
import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes3.dex */
abstract class d<E> extends AbstractList<E> implements u0.j<E> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f14913a = true;

    @Override // com.google.protobuf.u0.j
    public final void C() {
        this.f14913a = false;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e10) {
        c();
        return super.add(e10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        c();
        return super.addAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        if (!this.f14913a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        c();
        super.clear();
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            if (!(obj instanceof RandomAccess)) {
                return super.equals(obj);
            }
            List list = (List) obj;
            int size = size();
            if (size != list.size()) {
                return false;
            }
            for (int i9 = 0; i9 < size; i9++) {
                if (!get(i9).equals(list.get(i9))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i9 = 1;
        for (int i10 = 0; i10 < size; i10++) {
            i9 = (i9 * 31) + get(i10).hashCode();
        }
        return i9;
    }

    @Override // com.google.protobuf.u0.j
    public boolean r0() {
        return this.f14913a;
    }

    @Override // java.util.AbstractList, java.util.List
    public abstract E remove(int i9);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        c();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i9, Collection<? extends E> collection) {
        c();
        return super.addAll(i9, collection);
    }
}
