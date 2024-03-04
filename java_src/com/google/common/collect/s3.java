package com.google.common.collect;

import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class s3<T> extends w3 implements Iterator<T> {
    @Override // java.util.Iterator
    public boolean hasNext() {
        return w0().hasNext();
    }

    public T next() {
        return w0().next();
    }

    protected abstract Iterator<T> w0();
}
