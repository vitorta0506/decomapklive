package com.google.common.collect;

import com.google.common.collect.q6;
import java.util.Comparator;
import java.util.function.ObjIntConsumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n7<E> extends ImmutableSortedMultiset<E> {

    /* renamed from: e  reason: collision with root package name */
    private static final long[] f13280e = {0};

    /* renamed from: f  reason: collision with root package name */
    static final ImmutableSortedMultiset<Comparable> f13281f = new n7(y6.e());

    /* renamed from: a  reason: collision with root package name */
    final transient o7<E> f13282a;

    /* renamed from: b  reason: collision with root package name */
    private final transient long[] f13283b;

    /* renamed from: c  reason: collision with root package name */
    private final transient int f13284c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f13285d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n7(Comparator<? super E> comparator) {
        this.f13282a = ImmutableSortedSet.emptySet(comparator);
        this.f13283b = f13280e;
        this.f13284c = 0;
        this.f13285d = 0;
    }

    private int u(int i9) {
        long[] jArr = this.f13283b;
        int i10 = this.f13284c;
        return (int) (jArr[(i10 + i9) + 1] - jArr[i10 + i9]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public int count(Object obj) {
        int indexOf = this.f13282a.indexOf(obj);
        if (indexOf >= 0) {
            return u(indexOf);
        }
        return 0;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public q6.a<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(0);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public void forEachEntry(ObjIntConsumer<? super E> objIntConsumer) {
        com.google.common.base.o.s(objIntConsumer);
        for (int i9 = 0; i9 < this.f13285d; i9++) {
            objIntConsumer.accept((E) this.f13282a.asList().get(i9), u(i9));
        }
    }

    @Override // com.google.common.collect.ImmutableMultiset
    q6.a<E> getEntry(int i9) {
        return t6.g(this.f13282a.asList().get(i9), u(i9));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 headMultiset(Object obj, BoundType boundType) {
        return headMultiset((n7<E>) obj, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return this.f13284c > 0 || this.f13285d < this.f13283b.length - 1;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public q6.a<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(this.f13285d - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public int size() {
        long[] jArr = this.f13283b;
        int i9 = this.f13284c;
        return com.google.common.primitives.f.i(jArr[this.f13285d + i9] - jArr[i9]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public /* bridge */ /* synthetic */ h8 tailMultiset(Object obj, BoundType boundType) {
        return tailMultiset((n7<E>) obj, boundType);
    }

    ImmutableSortedMultiset<E> x(int i9, int i10) {
        com.google.common.base.o.y(i9, i10, this.f13285d);
        if (i9 == i10) {
            return ImmutableSortedMultiset.emptyMultiset(comparator());
        }
        return (i9 == 0 && i10 == this.f13285d) ? this : new n7(this.f13282a.c(i9, i10), this.f13283b, this.f13284c + i9, i10 - i9);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public ImmutableSortedMultiset<E> headMultiset(E e10, BoundType boundType) {
        return x(0, this.f13282a.d(e10, com.google.common.base.o.s(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.h8
    public ImmutableSortedMultiset<E> tailMultiset(E e10, BoundType boundType) {
        return x(this.f13282a.f(e10, com.google.common.base.o.s(boundType) == BoundType.CLOSED), this.f13285d);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.q6
    public ImmutableSortedSet<E> elementSet() {
        return this.f13282a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n7(o7<E> o7Var, long[] jArr, int i9, int i10) {
        this.f13282a = o7Var;
        this.f13283b = jArr;
        this.f13284c = i9;
        this.f13285d = i10;
    }
}
