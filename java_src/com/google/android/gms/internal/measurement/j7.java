package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
abstract class j7 extends AbstractList implements d9 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f8149a = true;

    @Override // com.google.android.gms.internal.measurement.d9
    public final void D() {
        this.f8149a = false;
    }

    @Override // com.google.android.gms.internal.measurement.d9
    public final boolean E() {
        return this.f8149a;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        c();
        return super.add(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i9, Collection collection) {
        c();
        return super.addAll(i9, collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        if (!this.f8149a) {
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
            if (size == list.size()) {
                for (int i9 = 0; i9 < size; i9++) {
                    if (!get(i9).equals(list.get(i9))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
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

    @Override // java.util.AbstractList, java.util.List
    public abstract Object remove(int i9);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        c();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        c();
        return super.addAll(collection);
    }
}
