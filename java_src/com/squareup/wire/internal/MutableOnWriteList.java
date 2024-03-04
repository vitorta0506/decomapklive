package com.squareup.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes4.dex */
final class MutableOnWriteList<T> extends AbstractList<T> implements RandomAccess, Serializable {
    private final List<T> immutableList;
    List<T> mutableList;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MutableOnWriteList(List<T> list) {
        this.immutableList = list;
        this.mutableList = list;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new ArrayList(this.mutableList);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i9, T t10) {
        if (this.mutableList == this.immutableList) {
            this.mutableList = new ArrayList(this.immutableList);
        }
        this.mutableList.add(i9, t10);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i9) {
        return this.mutableList.get(i9);
    }

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i9) {
        if (this.mutableList == this.immutableList) {
            this.mutableList = new ArrayList(this.immutableList);
        }
        return this.mutableList.remove(i9);
    }

    @Override // java.util.AbstractList, java.util.List
    public T set(int i9, T t10) {
        if (this.mutableList == this.immutableList) {
            this.mutableList = new ArrayList(this.immutableList);
        }
        return this.mutableList.set(i9, t10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.mutableList.size();
    }
}
