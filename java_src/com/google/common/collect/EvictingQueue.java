package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;
/* loaded from: classes2.dex */
public final class EvictingQueue<E> extends x3<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> delegate;
    final int maxSize;

    private EvictingQueue(int i9) {
        com.google.common.base.o.h(i9 >= 0, "maxSize (%s) must >= 0", i9);
        this.delegate = new ArrayDeque(i9);
        this.maxSize = i9;
    }

    public static <E> EvictingQueue<E> create(int i9) {
        return new EvictingQueue<>(i9);
    }

    @Override // com.google.common.collect.q3, java.util.Collection, java.util.Queue
    public boolean add(E e10) {
        com.google.common.base.o.s(e10);
        if (this.maxSize == 0) {
            return true;
        }
        if (size() == this.maxSize) {
            this.delegate.remove();
        }
        this.delegate.add(e10);
        return true;
    }

    @Override // com.google.common.collect.q3, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size >= this.maxSize) {
            clear();
            return n5.a(this, n5.l(collection, size - this.maxSize));
        }
        return standardAddAll(collection);
    }

    @Override // com.google.common.collect.x3, java.util.Queue
    public boolean offer(E e10) {
        return add(e10);
    }

    public int remainingCapacity() {
        return this.maxSize - size();
    }

    @Override // com.google.common.collect.q3, java.util.Collection
    public Object[] toArray() {
        return super.toArray();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.x3, com.google.common.collect.q3, com.google.common.collect.w3
    public Queue<E> delegate() {
        return this.delegate;
    }
}
