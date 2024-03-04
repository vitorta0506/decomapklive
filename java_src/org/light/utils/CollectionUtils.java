package org.light.utils;

import java.util.Collection;
/* loaded from: classes7.dex */
public class CollectionUtils {
    public static boolean indexOutOfBounds(Collection collection, int i9) {
        return collection == null || i9 < 0 || i9 >= collection.size();
    }

    public static boolean isEmpty(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static int size(Collection collection) {
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    public static int size(Object[] objArr) {
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }
}
