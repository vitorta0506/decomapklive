package vg;

import java.util.Iterator;
/* loaded from: classes5.dex */
public class w<E> extends a<E> {
    public w(int i9) {
        super(i9);
    }

    @Override // vg.a
    protected long G(long j10, long j11) {
        return 2147483647L;
    }

    @Override // vg.a
    protected long H(long j10) {
        return j10;
    }

    @Override // vg.a
    protected int I(E[] eArr) {
        return k.a(eArr);
    }

    @Override // vg.j.a
    public int c() {
        return -1;
    }

    @Override // vg.a, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // vg.a, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // vg.a, java.util.Queue
    public /* bridge */ /* synthetic */ boolean offer(Object obj) {
        return super.offer(obj);
    }

    @Override // vg.a, java.util.Queue
    public /* bridge */ /* synthetic */ Object peek() {
        return super.peek();
    }

    @Override // vg.a, java.util.Queue, vg.l
    public /* bridge */ /* synthetic */ Object poll() {
        return super.poll();
    }

    @Override // vg.a, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // vg.a, java.util.AbstractCollection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
