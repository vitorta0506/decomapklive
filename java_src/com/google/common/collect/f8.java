package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedSet;
/* loaded from: classes2.dex */
final class f8 {
    public static <E> Comparator<? super E> a(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        return comparator == null ? y6.e() : comparator;
    }

    public static boolean b(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        com.google.common.base.o.s(comparator);
        com.google.common.base.o.s(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else if (!(iterable instanceof e8)) {
            return false;
        } else {
            comparator2 = ((e8) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
