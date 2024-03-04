package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class LinkedQueueAtomicNode<E> extends AtomicReference<LinkedQueueAtomicNode<E>> {
    private static final long serialVersionUID = 2404266111789071508L;
    private E value;

    LinkedQueueAtomicNode() {
    }

    public E getAndNullValue() {
        E lpValue = lpValue();
        spValue(null);
        return lpValue;
    }

    public E lpValue() {
        return this.value;
    }

    public LinkedQueueAtomicNode<E> lvNext() {
        return get();
    }

    public void soNext(LinkedQueueAtomicNode<E> linkedQueueAtomicNode) {
        lazySet(linkedQueueAtomicNode);
    }

    public void spNext(LinkedQueueAtomicNode<E> linkedQueueAtomicNode) {
        lazySet(linkedQueueAtomicNode);
    }

    public void spValue(E e10) {
        this.value = e10;
    }

    LinkedQueueAtomicNode(E e10) {
        spValue(e10);
    }
}
