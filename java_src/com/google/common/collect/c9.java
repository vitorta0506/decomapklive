package com.google.common.collect;

import java.util.ListIterator;
/* loaded from: classes2.dex */
abstract class c9<F, T> extends b9<F, T> implements ListIterator<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c9(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    private ListIterator<? extends F> b() {
        return p5.d(this.f12938a);
    }

    @Override // java.util.ListIterator
    public void add(T t10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override // java.util.ListIterator
    public final T previous() {
        return a(b().previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return b().previousIndex();
    }

    public void set(T t10) {
        throw new UnsupportedOperationException();
    }
}
