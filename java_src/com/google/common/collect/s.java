package com.google.common.collect;

import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public abstract class s<T> extends e9<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f13388a;

    /* JADX INFO: Access modifiers changed from: protected */
    public s(T t10) {
        this.f13388a = t10;
    }

    protected abstract T a(T t10);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13388a != null;
    }

    @Override // java.util.Iterator
    public final T next() {
        T t10 = this.f13388a;
        if (t10 != null) {
            this.f13388a = a(t10);
            return t10;
        }
        throw new NoSuchElementException();
    }
}
