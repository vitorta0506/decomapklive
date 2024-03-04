package com.google.common.collect;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
abstract class b<E> extends f9<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f12917a;

    /* renamed from: b  reason: collision with root package name */
    private int f12918b;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(int i9) {
        this(i9, 0);
    }

    protected abstract E a(int i9);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f12918b < this.f12917a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12918b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i9 = this.f12918b;
            this.f12918b = i9 + 1;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12918b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i9 = this.f12918b - 1;
            this.f12918b = i9;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12918b - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(int i9, int i10) {
        com.google.common.base.o.w(i10, i9);
        this.f12917a = i9;
        this.f12918b = i10;
    }
}
