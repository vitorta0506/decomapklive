package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
public class r<E> extends s<E> {
    public r(int i9, int i10) {
        super(i9, i10);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c
    protected long G(long j10, long j11) {
        return this.f45156m - (j10 - j11);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c
    protected long H(long j10) {
        return j10;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c
    protected int I(AtomicReferenceArray<E> atomicReferenceArray) {
        return a.d(atomicReferenceArray);
    }

    @Override // vg.j.a
    public int c() {
        return (int) (this.f45156m / 2);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c, java.util.Queue
    public /* bridge */ /* synthetic */ boolean offer(Object obj) {
        return super.offer(obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c, java.util.Queue
    public /* bridge */ /* synthetic */ Object peek() {
        return super.peek();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c, java.util.Queue, vg.l
    public /* bridge */ /* synthetic */ Object poll() {
        return super.poll();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic.c, java.util.AbstractCollection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
