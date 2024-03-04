package com.google.common.collect;

import java.util.Iterator;
/* loaded from: classes2.dex */
abstract class b9<F, T> implements Iterator<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<? extends F> f12938a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b9(Iterator<? extends F> it) {
        this.f12938a = (Iterator) com.google.common.base.o.s(it);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T a(F f10);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12938a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.f12938a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f12938a.remove();
    }
}
