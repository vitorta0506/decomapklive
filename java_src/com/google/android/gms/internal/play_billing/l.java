package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
abstract class l<E> extends q<E> {

    /* renamed from: a  reason: collision with root package name */
    private final int f8471a;

    /* renamed from: b  reason: collision with root package name */
    private int f8472b;

    /* JADX INFO: Access modifiers changed from: protected */
    public l(int i9, int i10) {
        j.b(i10, i9, "index");
        this.f8471a = i9;
        this.f8472b = i10;
    }

    protected abstract E a(int i9);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f8472b < this.f8471a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8472b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i9 = this.f8472b;
            this.f8472b = i9 + 1;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8472b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i9 = this.f8472b - 1;
            this.f8472b = i9;
            return a(i9);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8472b - 1;
    }
}
