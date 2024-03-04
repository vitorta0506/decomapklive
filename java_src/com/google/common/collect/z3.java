package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedMap;
/* loaded from: classes2.dex */
public abstract class z3<K, V> extends t3<K, V> implements SortedMap<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w0(Comparator<?> comparator, Object obj, Object obj2) {
        if (comparator == null) {
            return ((Comparable) obj).compareTo(obj2);
        }
        return comparator.compare(obj, obj2);
    }
}
