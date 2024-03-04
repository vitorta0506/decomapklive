package com.google.common.collect;

import com.google.common.collect.q6;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;
/* loaded from: classes2.dex */
public interface h8<E> extends q6, e8<E> {
    Comparator<? super E> comparator();

    h8<E> descendingMultiset();

    @Override // com.google.common.collect.q6
    NavigableSet<E> elementSet();

    @Override // com.google.common.collect.q6
    Set<q6.a<E>> entrySet();

    q6.a<E> firstEntry();

    h8<E> headMultiset(E e10, BoundType boundType);

    q6.a<E> lastEntry();

    q6.a<E> pollFirstEntry();

    q6.a<E> pollLastEntry();

    h8<E> subMultiset(E e10, BoundType boundType, E e11, BoundType boundType2);

    h8<E> tailMultiset(E e10, BoundType boundType);
}
