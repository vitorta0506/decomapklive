package io.reactivex.internal.queue;

import io.reactivex.internal.util.j;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import yh.f;
/* loaded from: classes7.dex */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements f<E> {
    private static final Integer MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;
    final AtomicLong consumerIndex;
    final int lookAheadStep;
    final int mask;
    final AtomicLong producerIndex;
    long producerLookAhead;

    public SpscArrayQueue(int i9) {
        super(j.a(i9));
        this.mask = length() - 1;
        this.producerIndex = new AtomicLong();
        this.consumerIndex = new AtomicLong();
        this.lookAheadStep = Math.min(i9 / 4, MAX_LOOK_AHEAD_STEP.intValue());
    }

    int calcElementOffset(long j10) {
        return this.mask & ((int) j10);
    }

    int calcElementOffset(long j10, int i9) {
        return ((int) j10) & i9;
    }

    @Override // yh.g
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // yh.g
    public boolean isEmpty() {
        return this.producerIndex.get() == this.consumerIndex.get();
    }

    E lvElement(int i9) {
        return get(i9);
    }

    @Override // yh.g
    public boolean offer(E e10) {
        Objects.requireNonNull(e10, "Null is not a valid element");
        int i9 = this.mask;
        long j10 = this.producerIndex.get();
        int calcElementOffset = calcElementOffset(j10, i9);
        if (j10 >= this.producerLookAhead) {
            long j11 = this.lookAheadStep + j10;
            if (lvElement(calcElementOffset(j11, i9)) == null) {
                this.producerLookAhead = j11;
            } else if (lvElement(calcElementOffset) != null) {
                return false;
            }
        }
        soElement(calcElementOffset, e10);
        soProducerIndex(j10 + 1);
        return true;
    }

    @Override // yh.f, yh.g
    public E poll() {
        long j10 = this.consumerIndex.get();
        int calcElementOffset = calcElementOffset(j10);
        E lvElement = lvElement(calcElementOffset);
        if (lvElement == null) {
            return null;
        }
        soConsumerIndex(j10 + 1);
        soElement(calcElementOffset, null);
        return lvElement;
    }

    void soConsumerIndex(long j10) {
        this.consumerIndex.lazySet(j10);
    }

    void soElement(int i9, E e10) {
        lazySet(i9, e10);
    }

    void soProducerIndex(long j10) {
        this.producerIndex.lazySet(j10);
    }

    public boolean offer(E e10, E e11) {
        return offer(e10) && offer(e11);
    }
}
