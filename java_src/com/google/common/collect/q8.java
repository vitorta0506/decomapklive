package com.google.common.collect;

import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public interface q8<R, C, V> {

    /* loaded from: classes2.dex */
    public interface a<R, C, V> {
        R a();

        C b();

        V getValue();
    }

    Set<a<R, C, V>> cellSet();

    Set<C> columnKeySet();

    Map<C, Map<R, V>> columnMap();

    V get(Object obj, Object obj2);

    V put(R r10, C c10, V v10);

    Map<C, V> row(R r10);

    Set<R> rowKeySet();

    Map<R, Map<C, V>> rowMap();

    int size();
}
