package com.google.common.collect;

import java.util.NoSuchElementException;
import java.util.Queue;
/* loaded from: classes2.dex */
public abstract class x3<E> extends q3<E> implements Queue<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.q3, com.google.common.collect.w3
    public abstract Queue<E> delegate();

    @Override // java.util.Queue
    public E element() {
        return delegate().element();
    }

    public boolean offer(E e10) {
        return delegate().offer(e10);
    }

    @Override // java.util.Queue
    public E peek() {
        return delegate().peek();
    }

    @Override // java.util.Queue
    public E poll() {
        return delegate().poll();
    }

    @Override // java.util.Queue
    public E remove() {
        return delegate().remove();
    }

    protected boolean standardOffer(E e10) {
        try {
            return add(e10);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    protected E standardPeek() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    protected E standardPoll() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }
}
