package com.google.common.collect;

import java.util.Comparator;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class y6<T> implements Comparator<T> {
    public static <T> y6<T> a(Comparator<T> comparator) {
        if (comparator instanceof y6) {
            return (y6) comparator;
        }
        return new d3(comparator);
    }

    public static <C extends Comparable> y6<C> e() {
        return v6.f13454a;
    }

    public <E extends T> ImmutableList<E> b(Iterable<E> iterable) {
        return ImmutableList.sortedCopyOf(this, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E c(E e10, E e11) {
        return compare(e10, e11) >= 0 ? e10 : e11;
    }

    @Override // java.util.Comparator
    public abstract int compare(T t10, T t11);

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E d(E e10, E e11) {
        return compare(e10, e11) <= 0 ? e10 : e11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T2 extends T> y6<Map.Entry<T2, ?>> f() {
        return (y6<Map.Entry<T2, ?>>) g(d6.i());
    }

    public <F> y6<F> g(com.google.common.base.h<F, ? extends T> hVar) {
        return new f0(hVar, this);
    }

    public <S extends T> y6<S> h() {
        return new s7(this);
    }
}
